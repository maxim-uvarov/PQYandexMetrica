<!-- MarkdownTOC autoanchor="true" autolink="true" uri_encoding="false" markdown_preview="" levels="1,2,3,4,5" -->

- [Быстрый старт использования PQYandexMetrica для Power BI \(pbix\)](#Быстрый-старт-использования-pqyandexmetrica-для-power-bi-pbix)
- [Видео из курса Power BI для интернет-маркетинга](#Видео-из-курса-power-bi-для-интернет-маркетинга)
	- [Термины Яндекс.Метрики. Базовая настройка](#Термины-ЯндексМетрики-Базовая-настройка)
	- [Получение статистики по достижениям целей](#Получение-статистики-по-достижениям-целей)
	- [Задание модели атрибуции в выгрузке](#Задание-модели-атрибуции-в-выгрузке)
	- [Выгрузка данных из Яндекс.Директ](#Выгрузка-данных-из-ЯндексДирект)
	- [Копирование запросов между PBIX и XLSX файлами](#Копирование-запросов-между-pbix-и-xlsx-файлами)
	- [Отзыв токенов](#Отзыв-токенов)
	- [Видео с выступления Максима Уварова](#Видео-с-выступления-Максима-Уварова)
- [Полезные ссылки](#Полезные-ссылки)
- [Отказ от ответственности \(disclaimer\):](#Отказ-от-ответственности-disclaimer)

<!-- /MarkdownTOC -->

<a id="Быстрый-старт-использования-pqyandexmetrica-для-power-bi-pbix"></a>
## Быстрый старт использования PQYandexMetrica для Power BI (pbix)

1. Скачиваем последнюю версию PBIX файла по [ссылке](https://github.com/maxim-uvarov/PQYandexMetrica/tree/master/Releases)
2. Открываем файл. Переходим в настройки Power BI 
=> Конфиденциальность => Уровни Конфиденциальности => Всегда игнорировать параметры уровней конфиденциальности
![](images/privacylevelsru.png)
=> Privacy => Privacy Levels => Always Ignore Privacy Level settings
![](images/privacylevelsen.png)
3. Переходим по [ссылке](https://oauth.yandex.ru/authorize?response_type=token&client_id=dbb281abcd134b1bb4c624748f03cffe), жмем кнопку "разрешить", копируем предоставленный токен, он понадобится нам дальше
4. Возвращаемся в Power BI, жмем на кнопку "Изменить запросы" 
![](images/editqueriesru.png)
"Edit Queries"
![](images/editqueriesen.png)
5. В окне с запросами слева выбираем функцию PQYM, заполняем все поля необходиыми настройками, жмем кнопку "Вызвать"
6. Должно появиться окно с выбором настроек доступа. Оставляем настройки по умолчанию - анонимный доступ и жмем на кнопку подключение
![](images/connection1.png)
7. Если все настройки произведены правильно, то новый запрос должен отобразить полученную из Яндекс.Метрики таблицу с данными.

<a id="Видео-из-курса-power-bi-для-интернет-маркетинга"></a>
## Видео из курса [Power BI для интернет-маркетинга](https://learn.needfordata.ru/pbi)

<a id="Термины-ЯндексМетрики-Базовая-настройка"></a>
### Термины Яндекс.Метрики. Базовая настройка
<div style="padding:56.25% 0 0 0;position:relative;"><iframe src="https://player.vimeo.com/video/193161266?title=0&byline=0&portrait=0" style="position:absolute;top:0;left:0;width:100%;height:100%;" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div><script src="https://player.vimeo.com/api/player.js"></script>
  
  
<a id="Получение-статистики-по-достижениям-целей"></a>
### Получение статистики по достижениям целей
<div style="padding:56.25% 0 0 0;position:relative;"><iframe src="https://player.vimeo.com/video/262263858?title=0&byline=0&portrait=0" style="position:absolute;top:0;left:0;width:100%;height:100%;" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div><script src="https://player.vimeo.com/api/player.js"></script>

  
<a id="Задание-модели-атрибуции-в-выгрузке"></a>
### Задание модели атрибуции в выгрузке
<div style="padding:56.25% 0 0 0;position:relative;"><iframe src="https://player.vimeo.com/video/262264299?title=0&byline=0&portrait=0" style="position:absolute;top:0;left:0;width:100%;height:100%;" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div><script src="https://player.vimeo.com/api/player.js"></script>

  
<a id="Выгрузка-данных-из-ЯндексДирект"></a>
### Выгрузка данных из Яндекс.Директ

<div style="padding:56.25% 0 0 0;position:relative;"><iframe src="https://player.vimeo.com/video/262264288?title=0&byline=0&portrait=0" style="position:absolute;top:0;left:0;width:100%;height:100%;" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div><script src="https://player.vimeo.com/api/player.js"></script>
  
  
<a id="Копирование-запросов-между-pbix-и-xlsx-файлами"></a>
### Копирование запросов между PBIX и XLSX файлами
<div style="padding:56.25% 0 0 0;position:relative;"><iframe src="https://player.vimeo.com/video/262268793?title=0&byline=0&portrait=0" style="position:absolute;top:0;left:0;width:100%;height:100%;" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div><script src="https://player.vimeo.com/api/player.js"></script>
  
  
<a id="Отзыв-токенов"></a>
### Отзыв токенов
<div style="padding:56.25% 0 0 0;position:relative;"><iframe src="https://player.vimeo.com/video/198110945?title=0&byline=0&portrait=0" style="position:absolute;top:0;left:0;width:100%;height:100%;" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div><script src="https://player.vimeo.com/api/player.js"></script>
  
  
<a id="Видео-с-выступления-Максима-Уварова"></a>
### Видео с выступления Максима Уварова 
<style>.embed-container { position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden; max-width: 100%; } .embed-container iframe, .embed-container object, .embed-container embed { position: absolute; top: 0; left: 0; width: 100%; height: 100%; }</style><div class='embed-container'><iframe src='https://www.youtube.com/embed/UbehqWkzjO8?start=208' frameborder='0' allowfullscreen></iframe></div>
  
  
<a id="Полезные-ссылки"></a>
## Полезные ссылки

1. [Статья в marketing-wiki об использовании коннектора](http://marketing-wiki.ru/wiki/Экспорт_данных_из_сервиса_Яндекс.Метрика_в_excel_(power_query))
2. [Скачать Power Query для Excel 2010 и 2013](https://www.microsoft.com/en-us/download/details.aspx?id=39379&WT.mc_id=Blog_PBI_Announce_DI)
3. [PQGoogleAnalytics, проект на гитхабе](https://github.com/40-02/PQGoogleAnalytics)
4. [Справка по api](https://tech.yandex.ru/metrika/doc/api2/api_v1/intro-docpage/)
5. [Неполный список измерений и метрик в api в справке метрики](https://tech.yandex.ru/metrika/doc/api2/api_v1/attrandmetr/dim_all-docpage/)
6. Расширенный список доступных измерений и метрик полученных по api в [Excel Online](https://needfordata-my.sharepoint.com/:x:/r/personal/max_needfordata_ru/_layouts/15/Doc.aspx?sourcedoc=%7B48dbf278-2be3-499f-9181-f3e5327a6b8a%7D&action=default) или [Google Spreadsheets](https://docs.google.com/spreadsheets/d/1zWAq_wYQymYcJvKV-XcodNVTYu5ZiZJ2YqKWhscPf0Y/edit#gid=629438640)
6. [Правила работы с фильтрами в api](https://tech.yandex.ru/metrika/doc/api2/api_v1/segmentation-docpage/) 


<a id="Отказ-от-ответственности-disclaimer"></a>
## Отказ от ответственности (disclaimer): ##

Программа создавалась для собственного пользования и распространяется по доброте душевной в состоянии as is (под лицензией GPLv3 http://s.40-02.ru/1DHW9dz). 
Автор не несет ответственности за ущерб, который можно получить при использовании данной таблички.
Если у вас появилось желание сказать спасибо за данную программу, можете написать автору на pqyandexmetrika@40-02.com. 
