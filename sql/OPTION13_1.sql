BEGIN TRANSACTION;
CREATE TABLE NormCountryData ( "super_id" INTEGER NOT NULL, "selector_id" INTEGER NOT NULL, "Country" TEXT, "Model" TEXT, "Capacity" INTEGER, PRIMARY KEY("super_id"));
COMMIT;
BEGIN TRANSACTION;
INSERT INTO NormCountryData ("super_id", "selector_id", "Country", "Model", "Capacity") SELECT DISTINCT SelectorData.super_id, Events.selector_id, SelectorData.country, SelectorData.model, SelectorData.capacity FROM Events INNER JOIN SelectorData ON Events.serial_number=SelectorData.serial_number;
COMMIT;
