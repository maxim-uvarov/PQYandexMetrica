// Функция, при помощи которой мы забираем из API данные из Яндекс.Метрики
// Версия 8.1


let
    metrikaFunction = (ids as text, dimensions as nullable text, metrics as text, date1 as text, date2 as text, token as text, optional filters as text) => 


// Определяем функцию metrika_fun внутри функции, которая будет вытаскивать CSV из API. 
// На входе конфигурационная запись (формируется в основном теле программы ниже по коду).

let

    metrika_fun = (bigRecordWithOptions as record, X as number) =>
let
    offset = Number.ToText (X),
    bigRecordWithWithOffset = Record.AddField(bigRecordWithOptions, "offset", offset),
    bigRecordWithWithLimit =  Record.AddField(bigRecordWithWithOffset , "limit", "10000"),
    urlToGet = "https://api-metrika.yandex.ru/stat/v1/data.csv?" & Uri.BuildQueryString (bigRecordWithWithOffset),

    Source = Csv.Document(Web.Contents(urlToGet),null,",",null,65001),
    #"First Row as Header" = Table.PromoteHeaders(Source),
    mergedColumns = Table.Skip(#"First Row as Header",1)

in
    mergedColumns,

// Определяем функцию metrika_json внутри функции, которая будет выгружать json версию отчета и возвращать из json максимальное количество строчек
    metrika_json = (bigRecordWithOptions as record) =>
let
    urlToGet = "https://api-metrika.yandex.ru/stat/v1/data?" & Uri.BuildQueryString (bigRecordWithOptions),

    Source6 = Json.Document(Web.Contents(urlToGet &"&limit=1")),
    Source7 = Source6[total_rows]
in
    Source7,

// Основной код функции начинается здесь.

// Формируем конфигурационную запись (record) для использования в функциях
    bigRecordWithOptions = [ids = ids, dimensions = dimensions, metrics = metrics, date1 = date1, date2 = date2, token = token, accuracy = "full"], 
    bigRecordWithFilters = if filters = null then bigRecordWithOptions else Record.AddField(bigRecordWithOptions, "filters", filters), 

// Создаем список из чисел - сколько раз нам необходимо обратиться к api чтобы забрать по 10к строчек все данныые которые есть в метрке согласно нашим настройкам. 
    Source0 = Number.RoundDown(metrika_json(bigRecordWithFilters)/10000,0),
    Custom1 = {0..Source0},
    Custom2 = List.Transform(Custom1, each _ * 10000 + 1),

// Используем список получившихся чисел, чтобы обратиться к api
    Custom3 = List.Transform(Custom2, each metrika_fun(bigRecordWithFilters, _)),

// Создаем список с названиями заголовков полей
    TableNames = Table.ColumnNames(Custom3{0}),

// Разворачиваем таблицы в списке с данными из Яндекс.Метрики и используем список с названиям заголовков, которые мы получили ранее
    #"Converted to Table" = Table.FromList(Custom3, Splitter.SplitByNothing(), null, null, ExtraValues.Error),
    #"Expanded Column1" = Table.ExpandTableColumn(#"Converted to Table", "Column1", TableNames )

in
    #"Expanded Column1"
in
    metrikaFunction