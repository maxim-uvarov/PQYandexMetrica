# PQYandexMetrika 
## Экспорт данных из Яндекс.Метрики в Excel или Power BI

[![скачать](https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/Download_alt_font_awesome.svg/512px-Download_alt_font_awesome.svg.png)](https://github.com/40-02/PQYandexMetrika/releases/latest)

Программа для экспорта данных Яндекс.Метрики в MS Excel и Power BI.
Поддерживаемые версии Excel 2010 и 2013 (с использованием надстройки [Power Query](https://www.microsoft.com/en-us/download/details.aspx?id=39379&WT.mc_id=Blog_PBI_Announce_DI)), 2016.

## Возможности:##

1. Выгрузка отчетов из Яндекс.Метрики с допустимыми наборами измерений и метрик, без ограничений по размерам.
2. Поддержка фильтров Яндекс.Метрики.
3. Получение параметров конфигурации отчета в формате PQMetrika из Url скопированного в веб-интерфейсе

## Требования: ##
1. MS Windows XP или позже
2. MS Excel 2010 или позже
3. MS Power Query
    
## Отказ от ответственности (disclaimer): ##

Программа создавалась для собственного пользования и распространяется по доброте душевной в состоянии as is (под лицензией GPLv3 http://s.40-02.ru/1DHW9dz). 
Автор не несет ответственности за ущерб, который можно получить при использовании данной таблички.
Если у вас появилось желание сказать спасибо за данную программу, можете написать автору на max@k50.ru. 


## Начало работы ##

1. [Скачиваем последнюю версию Power Query](https://www.microsoft.com/en-us/download/details.aspx?id=39379&WT.mc_id=Blog_PBI_Announce_DI) и устанавливаем ее
2. [Скачиваем последнюю версию файла PQMetrika.xlsm](https://github.com/40-02/PQYandexMetrika/releases/latest)
3. Открываем файл
4. В настройках Power Query, на вкладке Privacy, включаем галку ["ignore the privacy levels"](#Ignore-the-privacy-levels)
5. Для получения токена переходим по [ссылке](https://oauth.yandex.ru/authorize?response_type=token&client_id=1317eb8e77a94e8eb2ad32385e0eff1a). Эта же ссылка указана в рабочем файле, в ячейке "С3" на странице "1. mainConfigAndReport".
6. По ссылке открывается страничка авторизации Яндекса, копируем токен
7. Вставляем токен в соответствующую ячейку на листе "1. mainConfigAndReport"
8. Прописываем необходимые параметры конфигурации отчета (самое главное, не забудьте указать свой id счетчика)
9. Жмем кнопку обновить и получаем отчет

## Полезные ссылки

1. [Статья в marketing-wiki](http://marketing-wiki.ru/wiki/Экспорт_данных_из_сервиса_Яндекс.Метрика_в_excel_(power_query))
2. [Скачать MS Power Query](https://www.microsoft.com/en-us/download/details.aspx?id=39379&WT.mc_id=Blog_PBI_Announce_DI)
3. [PQGoogleAnalytics, проект на гитхабе](https://github.com/40-02/PQGoogleAnalytics)
4. Яндекс.Метрика: [Справка по api](https://tech.yandex.ru/metrika/doc/api2/api_v1/intro-docpage/)
5. Яндекс.Метрики: [Список измерений и метрик в api](https://tech.yandex.ru/metrika/doc/api2/api_v1/attrandmetr/dim_all-docpage/)
6. Яндекс.Метрика: [Правила работы с фильтрами в api](https://tech.yandex.ru/metrika/doc/api2/api_v1/segmentation-docpage/) 
7. [Видео с мастер-класса Максима Уварова о том как использовать PQYandexMetrika](https://youtu.be/UbehqWkzjO8?t=3m28s)

## Ignore the privacy levels
![Ignore the privacy levels in Power Query](http://dl.getdropbox.com/u/390630/2015-08-23%2021_29_16.gif)

