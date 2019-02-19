// directIDS
let
    UrlToGet = "https://api-metrika.yandex.ru/management/v1/clients?" & "counters=" & CounterID,
    Source = Web.Contents(UrlToGet, [Headers = [Authorization="OAuth " & tokenYandexMetrika]]),
    #"Imported JSON" = Json.Document(Source,65001),
    clients = #"Imported JSON"[clients]?,
    #"Converted to Table" = Table.FromList(clients, Splitter.SplitByNothing(), null, null, ExtraValues.Error),
    #"Expanded Column1" = try Table.ExpandRecordColumn(#"Converted to Table", "Column1", {"id", "name", "chief_login"}, {"id", "name", "chief_login"}) otherwise "no direct ids"
in
    #"Expanded Column1"

