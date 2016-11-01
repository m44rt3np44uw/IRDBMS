/**
  Opdracht 14

  Pas de query bij 13 aan, zodat de patiënten getoond worden die nog niet aan
  een bednummer gekoppeld zijn.
 */

SELECT *
FROM patient
WHERE patient_bed_nr ISNULL;