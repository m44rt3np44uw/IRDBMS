/**
  Opdracht 7

  Maak een view die van een patiënt alleen de adresgegevens laat zien.
 */

CREATE VIEW OPDRACHT_7 AS
SELECT
  patient.patient_adres,
  patient.patient_postcode,
  patient.patient_plaats,
  patient.patient_provincie
FROM patient