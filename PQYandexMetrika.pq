// PQYM
/*
     Функция, при помощи которой мы забираем из API данные из Яндекс.Метрики
     Версия 1.14

     PQYM = (ids, dimensions, metrics, date1, date2, token, filters, direct_ids)
     Все значения передаются как text. 
     На выходе получается таблица с запрошенными полями.  

     Домашняя страница: 
     https://github.com/40-02/PQYandexMetrika/
    
     Справка по api метрики:
     https://tech.yandex.ru/metrika/doc/api2/concept/about-docpage/


     Авторизационный токен можно получить по ссылке:
     https://oauth.yandex.ru/authorize?response_type=token&client_id=1317eb8e77a94e8eb2ad32385e0eff1a

    Примеры запросов:
    =PQYM("21781912","ym:s:visits,ym:s:bounces,ym:s:pageviews","ym:s:<attribution>SearchPhrase","2016-01-01","yesterday","AQAAAAAQy8J1AAFg-Xkrkp9D6kpGpHz2THTYX74")
    =PQYM("21781912","ym:s:visits,ym:s:bounces,ym:s:pageviews","ym:s:visitStartOfWeek,ym:s:sourceEngine","2016-01-01","yesterday","AQAAAAAQy8J1AAFg-Xkrkp9D6kpGpHz2THTYX74")


     Contributors:
     1. Максим Уваров (http://40-02.ru, http://needfordata.ru)

     Changelog
     1.05    Изменил порядок параметров - чтобы унифицировать с pqApiConnectors. 
     1.07    Еще раз изменил порядок параметров - чтобы унифицировать с pqApiConnectors.
     Добавил переменную direct_ids, которая необходима для получения данных по расходам. 
     Переименовал переменные в коде.
     1.12    Перенес get-параметры в опцию Web.Contents формируемую через запись Query.
     1.13    Добавил обработку ошибок ответа сервера. Теперь, в случае неверно указанных параметров запроса - будет возвращаться, что конкретно не нравится метрике.
     1.14    Обновления в Power BI Service снова работает
    
*/

let
    PQYM = (ids as text, metrics as text, dimensions as nullable text,  date1 as text, date2 as text, token as text, optional filters as text, optional direct_ids as text) => 


        // Определяем функцию metrika_fun внутри функции, которая будет вытаскивать CSV из API. 
        // На входе конфигурационная запись (формируется в основном теле программы ниже по коду).
let
    metrika_fun = (bigRecordWithOptions as record, X as number) =>
let
    offset = Number.ToText (X),

    bigRecordWithWithLimit = bigRecordWithOptions & [limit = "10000", offset = offset],

        // на шаге urlToGet прописан дурной url, который всегда возвращает какие-то данные. Нужно для того, чтобы можно было запланировать обновление запроса в Power BI Service. Подробнее у Криса: https://blog.crossjoin.co.uk/2016/08/23/web-contents-m-functions-and-dataset-refresh-errors-in-power-bi/
        // Токен и айди взяты из справки метрики. Если они перестанут работать, то начнут возникать ошибки. 

    urlToGet = "https://api-metrika.yandex.ru/stat/v1/data.csv?ids=2138128&metrics=ym%3As%3Avisits&date1=yesterday&date2=yesterday&oauth_token=05dd3dd84ff948fdae2bc4fb91f13e22bb1f289ceef0037",

    webContents2 = Web.Contents(urlToGet, [Query = bigRecordWithWithLimit] ),

    Source = Csv.Document(webContents2,null,",",null,65001),
    #"First Row as Header" = Table.PromoteHeaders(Source),

// Для отчетов без измерений 

    mergedColumns = if Table.RowCount(#"First Row as Header") = 1 then #"First Row as Header" else Table.Skip(#"First Row as Header",1)

in
    mergedColumns,



        // Определяем функцию metrika_json внутри функции, которая будет выгружать json версию отчета и возвращать из json максимальное количество строчек
    metrika_json = (bigRecordWithOptions as record) =>

let
    urlToGet = "https://api-metrika.yandex.ru/stat/v1/data?ids=2138128&metrics=ym%3As%3Avisits&date1=yesterday&date2=yesterday&oauth_token=05dd3dd84ff948fdae2bc4fb91f13e22bb1f289ceef0037",


        // Забираем из интерента json, и в случае 400 ответа сервера обрабатываем ошибку
    webContents1 = Web.Contents(urlToGet, [Query = bigRecordWithOptions & [limit = "1"], ManualStatusHandling={400}]),

    jsonDocumentFromMetrika = Json.Document(webContents1),

        // Если не находим в ответе сервера сумму строк в отчете, то возвращаем текстом сообщение об ошибке (которое вызовет ошибку в дальнейшем ходе вычислений, которую мы обработаем уже в коде программы)
    MetrikaJsonOutput = if jsonDocumentFromMetrika[total_rows]? = null then jsonDocumentFromMetrika[message] else jsonDocumentFromMetrika[total_rows]
in
    MetrikaJsonOutput,


/////////// Основной код функции начинается здесь. //////////



        // Формируем конфигурационную запись (record) для использования в функциях
    bigRecordWithOptions = [ids = ids, dimensions = dimensions, metrics = metrics, date1 = date1, date2 = date2, oauth_token = token, accuracy = "full"], 
    bigRecordWithFilters = if filters = null then bigRecordWithOptions else Record.AddField(bigRecordWithOptions, "filters", filters), 
    bigRecordWithDirectIds = if direct_ids = null then bigRecordWithFilters else Record.AddField(bigRecordWithOptions, "direct_client_ids", direct_ids), 

        // Создаем список из чисел - сколько раз нам необходимо обратиться к api чтобы забрать по 10к строчек все данные которые есть в метрке согласно нашим настройкам. 
    jsonResponse = metrika_json(bigRecordWithDirectIds),
    Source0 = Number.RoundDown(jsonResponse/10000,0),
    listOfPages = {0..Source0},
    listOf10kPages = List.Transform(listOfPages, each _ * 10000 + 1),

        // Используем список получившихся чисел, чтобы обратиться к api
    TableChunks = List.Transform(listOf10kPages, each metrika_fun(bigRecordWithDirectIds, _)),

        // Создаем список с названиями заголовков полей
    TableNames = Table.ColumnNames(TableChunks{0}),

        // Разворачиваем таблицы в списке с данными из Яндекс.Метрики и используем список с названиям заголовков, которые мы получили ранее
    TableFromChunks = Table.FromList(TableChunks, Splitter.SplitByNothing(), null, null, ExtraValues.Error),

       // В случае ошибки в данных возвращаем ответ сервера об ошибке

    OutputTable = try Table.ExpandTableColumn( TableFromChunks , "Column1", TableNames ) otherwise jsonResponse 

in
    OutputTable

in
    PQYM
