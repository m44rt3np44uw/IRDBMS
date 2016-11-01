/**
  Opdracht 2

  Schrijf de SQL Statements die bij rekening 1 100 Euro bijschrijft en bij rekening
  2 100 Euro afschrijft. Zorg ervoor dat de bij-en afschrijving als 1 transactie wordt
  gezien. Voer de commit echter nog niet uit.

  Open een nieuw SQL venster en schrijf een SQL statement om het saldo op beide
  rekeningen te wijzigen naar 9999,99. Bekijk wat gebeurt als je het statement
  uitvoert. Wat gebeurt er zodra je de commit geeft bij het eerste SQL statement.
 */

-- EIGEN ANTWOORD

-- VENSTER 1
BEGIN;

UPDATE rekening
SET saldo = saldo + 100.00
WHERE rekeninghouder = 'DE VRIES';

UPDATE rekening
SET saldo = saldo - 100.00
WHERE rekeninghouder = 'JANSEN';

-- VENSTER 2
BEGIN;

UPDATE rekening
SET saldo = 9999.99
WHERE rekeninghouder = 'DE VRIES';

UPDATE rekening
SET saldo = 9999.99
WHERE rekeninghouder = 'JANSEN';

-- VENSTER 1
COMMIT;

-- VENSTER 3
SELECT *
FROM rekening;

-- VENSTER 2
COMMIT;

-- VENSTER 3
SELECT *
FROM rekening;