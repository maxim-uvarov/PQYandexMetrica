// yandexMetrikaGetFullMetricsAndDimensionsList
// Запрос, который получает полный список метрик и измерений в Яндекс.Метрике
let
    getMetaData = (url as text, TypeOfField as text, ScopeOfField as text) => 

let
    Source = Json.Document(Web.Contents( url )),
    attributes = Source[attributes],
    #"Table from List" = Table.FromList(attributes, Splitter.SplitByNothing(), null, null, ExtraValues.Error),
    #"Renamed Columns" = Table.RenameColumns(#"Table from List",{{"Column1", "dimension"}}),
    #"Expand dimension" = Table.ExpandRecordColumn(#"Renamed Columns", "dimension", {"dim", "name", "allow_filters"}, {"dim", "name", "allow_filters"}),
    #"Added Custom" = Table.AddColumn(#"Expand dimension", "TypeOfField", each TypeOfField),
    #"Added Custom1" = Table.AddColumn( #"Added Custom" , "ScopeOfField", each ScopeOfField)
in
    #"Added Custom1",


    getMetaData2 = (url as text, TypeOfField as text, ScopeOfField as text) => 

let
    Source = Json.Document(Web.Contents( url )),
    attributes = Source[metrics],
    #"Table from List" = Table.FromList(attributes, Splitter.SplitByNothing(), null, null, ExtraValues.Error),
    #"Renamed Columns" = Table.RenameColumns(#"Table from List",{{"Column1", "dimension"}}),
    #"Expand dimension" = Table.ExpandRecordColumn(#"Renamed Columns", "dimension", {"dim", "name", "allow_filters"}, {"dim", "name", "allow_filters"}),
    #"Added Custom" = Table.AddColumn(#"Expand dimension", "TypeOfField", each TypeOfField),
    #"Added Custom1" = Table.AddColumn( #"Added Custom" , "ScopeOfField", each ScopeOfField)
in
    #"Added Custom1",



    dimensions_visits = getMetaData ("https://beta.api-metrika.yandex.ru/stat/v1/metadata/constructor_attributes?table=visits", "Dimension", "Visits"),
    dimensions_hits = getMetaData("https://beta.api-metrika.yandex.ru/stat/v1/metadata/constructor_attributes?table=hits", "Dimension", "Hits"),
    dimensions_clicks = getMetaData("https://beta.api-metrika.yandex.ru/stat/v1/metadata/constructor_attributes?table=clicks", "Dimension", "Clicks"),
    dimensions_advertising = getMetaData("https://beta.api-metrika.yandex.ru/stat/v1/metadata/constructor_attributes?table=advertising", "Dimension", "Advertising"),
//    dimensions_user = getMetaData("https://beta.api-metrika.yandex.ru/stat/v1/metadata/constructor_attributes?table=user", "Dimension", "User"),
    metrics_hits = getMetaData2("https://beta.api-metrika.yandex.ru/stat/v1/metadata/constructor_metrics?table=hits", "Metric", "Hits"),
    metrics_visits = getMetaData2("https://beta.api-metrika.yandex.ru/stat/v1/metadata/constructor_metrics?table=visits", "Metric", "Visits"),
    metrics_clicks = getMetaData2("https://beta.api-metrika.yandex.ru/stat/v1/metadata/constructor_metrics?table=clicks", "Metric", "Clicks"),
    metrics_advertising = getMetaData2("https://beta.api-metrika.yandex.ru/stat/v1/metadata/constructor_metrics?table=advertising", "Metric", "Advertising"),
//    metrics_user = getMetaData2("https://beta.api-metrika.yandex.ru/stat/v1/metadata/constructor_metrics?table=user", "Metric", "User"),

//    #"Appended Query" = Table.Combine({metrics_visits, metrics_hits, metrics_clicks, metrics_advertising, metrics_user, dimensions_visits, dimensions_hits, dimensions_clicks, dimensions_advertising, dimensions_user})
    #"Appended Query" = Table.Combine({metrics_visits, metrics_hits, metrics_clicks, metrics_advertising, dimensions_visits, dimensions_hits, dimensions_clicks, dimensions_advertising})
in
    #"Appended Query"
