/**
  Opdracht 7

  Maak een view die van een patiënt alleen de adresgegevens laat zien.
 */

-- EIGEN ANTWOORD
CREATE VIEW OPDRACHT_7 AS
  SELECT
    patient.patient_adres,
    patient.patient_postcode,
    patient.patient_plaats,
    patient.patient_provincie
  FROM patient;

SELECT *
FROM OPDRACHT_7;

-- SCHOOL ANTWOORD
CREATE VIEW patientadres AS
  SELECT
    patient_achternaam,
    patient_voornaam,
    patient_tussenvoegsel,
    patient_adres
  FROM patient;

SELECT *
FROM patientadres