/**
  Opdracht 1
 */

-- EIGEN ANTWOORD

-- creer de tabel.
CREATE TABLE rekening (
  rekeningnummer VARCHAR(10)    NOT NULL,
  rekeninghouder VARCHAR(255)   NOT NULL,
  saldo          NUMERIC(10, 2) NOT NULL
);

-- vul de tabel.
INSERT INTO rekening
VALUES
  ('1234567890', 'DE VRIES', 1000.00),
  ('0987654321', 'JANSEN', 1000.00);

-- controleer de inhoud.
SELECT *
FROM rekening;


/**
  Opdracht 1

  Schrijf de SQL Statements die bij rekening 1 100 Euro bijschrijft en bij rekening
  2 100 Euro afschrijft. Zorg ervoor dat de bij-en afschrijving als 1 transactie wordt
  gezien. Voordat je de transactie afsluit met een COMMIT moet je een nieuw SQLvenster
  openen en een select statement uitvoeren op de tabel rekening. Schrijf
  op wat je zie. Voer nu de COMMIT uit (in het eerste venster) en voer nogmaals
  het select statement uit in het andere venster. Schrijf op wat je ziet. Wat is het
  verschil met het resultaat van het vorige select statement?
 */

-- VENSTER 1
BEGIN;

UPDATE rekening
SET saldo = saldo + 100.00
WHERE rekeninghouder = 'DE VRIES';

UPDATE rekening
SET saldo = saldo - 100.00
WHERE rekeninghouder = 'JANSEN';

-- VENSTER 2
SELECT * FROM rekening;

-- VENSTER 1
COMMIT;

-- VENSTER 2
SELECT * FROM rekening;

/**
  Opdracht 1

  Schrijf wederom de SQL Statements die bij rekening 1 100 Euro bijschrijft en bij
  rekening 2 100 Euro afschrijft. Voer nu een ROLLBACK uit in plaats van een
  COMMIT. Bekijk weer het resultaat in het nieuwe venster. Wat is er nu gebeurt?
 */

-- VENSTER 1
BEGIN;

UPDATE rekening
SET saldo = saldo + 100.00
WHERE rekeninghouder = 'DE VRIES';

UPDATE rekening
SET saldo = saldo - 100.00
WHERE rekeninghouder = 'JANSEN';

-- VENSTER 1
ROLLBACK;

-- VENSTER 2
SELECT * FROM rekening;