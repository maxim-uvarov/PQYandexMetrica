# PQYandexMetrica 
## Экспорт данных из Яндекс.Метрики в Excel или Power BI

[![скачать](https://www.evernote.com/l/AAkzfENy9lRDZLvKJO8AxABeM-L-HjdtgOQB/image.png)](https://github.com/maxim-uvarov/PQYandexMetrica/releases/latest)

Программа для экспорта данных Яндекс.Метрики в Power BI и MS Excel for Windows (при помощи надстройки Power Query).

## Возможности:##

1. Выгрузка отчетов из Яндекс.Метрики с допустимыми наборами измерений и метрик, без ограничений по размерам.
2. Поддержка фильтров Яндекс.Метрики.
3. Получение параметров конфигурации отчета в формате PQYandexMetrica из Url скопированного в веб-интерфейсе

## Требования: ##
1. MS Windows XP или позже
2. Power BI или MS Excel (с установленным MS Power Query)
    
## Отказ от ответственности (disclaimer): ##

Программа создавалась для собственного пользования и распространяется по доброте душевной в состоянии as is (под лицензией GPLv3 http://s.40-02.ru/1DHW9dz). 
Автор не несет ответственности за ущерб, который можно получить при использовании данной таблички.
Если у вас появилось желание сказать спасибо за данную программу, можете написать автору на pqyandexmetrika@40-02.com. 


## Начало работы ##

1. [Скачиваем последнюю версию файла PQYandexMetrica](https://github.com/maxim-uvarov/PQYandexMetrica/releases/latest)
3. Открываем файл
4. В настройках Power BI на вкладке Privacy, включаем галку ["ignore the privacy levels"](http://marketing-wiki.ru/wiki/Power_bi_formula_firewall_privacy_settings)
5. Для получения токена переходим по [ссылке](https://oauth.yandex.ru/authorize?response_type=token&client_id=1317eb8e77a94e8eb2ad32385e0eff1a)
6. По ссылке открывается страничка авторизации Яндекса, копируем токен
8. Прописываем необходимые параметры конфигурации отчета (самое главное, не забудьте указать свой id счетчика)

## Полезные ссылки

1. [Статья в marketing-wiki об использовании коннектора](http://marketing-wiki.ru/wiki/Экспорт_данных_из_сервиса_Яндекс.Метрика_в_excel_(power_query))
2. [Скачать MS Power Query](https://www.microsoft.com/en-us/download/details.aspx?id=39379&WT.mc_id=Blog_PBI_Announce_DI)
3. [PQGoogleAnalytics, проект на гитхабе](https://github.com/40-02/PQGoogleAnalytics)
4. Яндекс.Метрика: [Справка по api](https://tech.yandex.ru/metrika/doc/api2/api_v1/intro-docpage/)
5. Яндекс.Метрика: [Неполный список измерений и метрик в api в справке метрики](https://tech.yandex.ru/metrika/doc/api2/api_v1/attrandmetr/dim_all-docpage/)
6. Яндекс.Метрика: [Расширенный список доступных измерений и метрик полученных по api](https://docs.google.com/spreadsheets/d/1zWAq_wYQymYcJvKV-XcodNVTYu5ZiZJ2YqKWhscPf0Y/edit#gid=629438640)
6. Яндекс.Метрика: [Правила работы с фильтрами в api](https://tech.yandex.ru/metrika/doc/api2/api_v1/segmentation-docpage/) 
7. Видео о том как использовать PQYandexMetrika в Power BI
[![Видео о том как использовать PQYandexMetrika в Power BI](https://www.evernote.com/l/AAn_WIzUlMtKVLlXKY5cR4i4KnRe4dXI7W4B/image.png)](https://vimeo.com/168589885/cd310c143d) . 
8. Видео с мастер-класса Максима Уварова о том как использовать PQYandexMetrica для MS Excel
[![Видео с мастер-класса Максима Уварова о том как использовать PQYandexMetrica](https://www.evernote.com/l/AAl5N6gUbaNEFKL1vVc0X73rVvAuoTpBIz8B/image.png)](https://youtu.be/UbehqWkzjO8?t=3m28s)
