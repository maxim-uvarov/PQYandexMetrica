# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]


## [1.18]    
### Changed
Перенес отправку токена авторизации из гет параметра в хедеры
    
## [1.16]    
### Changed
Исправил функцию PQYandexMetrica, чтобы принимала пустое поле dimensions. Удалил функцию getPQYMConfigFromUrl pqApiConnectors.

## [1.15]    
### Changed
Исправил функцию getPQYMConfigFromUrl чтобы отдавала даты корректно

## [1.14]    
### Changed
Исправил функцию, чтобы поддерживала обновление в Power BI Service


## [1.13]    
### Changed
Добавил обработку ошибок ответа сервера. Теперь, в случае неверно указанных параметров запроса - будет возвращаться, что конкретно не нравится метрике.

## [1.12]    
### Changed
Перенес get-параметры в опцию Web.Contents формируемую через
    запись Query.

## [1.07]    
### Changed
Еще раз изменил порядок параметров - чтобы унифицировать с pqApiConnectors. Добавил переменную direct_ids, которая необходима для получения данных по расходам. Переименовал переменные в коде.

## [1.05]    
### Changed
  Изменил порядок параметров - чтобы унифицировать с PQGoogleAnalytics
