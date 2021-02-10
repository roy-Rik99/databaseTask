BEGIN TRANSACTION;
CREATE TABLE NormSelectorData ( "serial_number" INTEGER NOT NULL, "super_id" INTEGER NOT NULL, "cust_id" TEXT, PRIMARY KEY("serial_number"), FOREIGN KEY ("super_id") REFERENCES NormCountryData ("super_id"));
COMMIT;
BEGIN TRANSACTION;
INSERT INTO NormSelectorData ("serial_number","super_id", "cust_id") SELECT serial_number, super_id, cust_id FROM SelectorData;
COMMIT;