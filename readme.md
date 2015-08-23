# PQYandexMetrika - Экспорт данных из Яндекс.Метрики #

Программа для экспорта данных из api Яндекс.Метрики в MS Excel, с использованием надстройки [MS Power Query](https://www.microsoft.com/en-us/download/details.aspx?id=39379&WT.mc_id=Blog_PBI_Announce_DI).

## Начало работы ##

1. [Скачиваем последнюю версию Power Query](https://www.microsoft.com/en-us/download/details.aspx?id=39379&WT.mc_id=Blog_PBI_Announce_DI) и устанавливаем ее
2. [Скачиваем последнюю версию файла PQMetrika.xlsm](https://github.com/40-02/PQYandexMetrika/releases/latest)
3. Открываем файл
4. Включаем в настройках Power Query, на вкладке Privacy, галку [ignore the privacy levels](#Ignore-the-privacy-levels)
5. Для получения токена переходим по [ссылке](https://oauth.yandex.ru/authorize?response_type=token&client_id=1317eb8e77a94e8eb2ad32385e0eff1a). Эта же ссылка указана в рабочем файле, в ячейке "С3" на странице "1. mainConfigAndReport".
6. По ссылке открывается страничка авторизации Яндекса, копируем токен
6. Вставляем токен в соответствующую ячейку на листе "1. mainConfigAndReport"
7. Прописываем необходимые параметры конфигурации отчета (самое главное, не забудьте указать свой id счетчика)
8. Жмем кнопку обновить и получаем отчет

## Полезные ссылки

1. [Статья в marketing-wiki](http://marketing-wiki.ru/wiki/Экспорт_данных_из_сервиса_Яндекс.Метрика_в_excel_(power_query))
2. [Скачать MS Power Query](https://www.microsoft.com/en-us/download/details.aspx?id=39379&WT.mc_id=Blog_PBI_Announce_DI)
3. [PQGoogleAnalytics](https://github.com/40-02/PQGoogleAnalytics)
4. Справка по api Яндекс.Метрики(https://tech.yandex.ru/metrika/doc/api2/api_v1/intro-docpage/)
5. [Список измерений и метрик в справке Яндекс.Метрики](https://tech.yandex.ru/metrika/doc/api2/api_v1/attrandmetr/dim_all-docpage/)
6. [Правила работы с фильтрами в api](https://tech.yandex.ru/metrika/doc/api2/api_v1/segmentation-docpage/) 

## Ignore the privacy levels
![Ignore the privacy levels in Power Query](http://dl.getdropbox.com/u/390630/2015-08-23%2021_29_16.gif)

