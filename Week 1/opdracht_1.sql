/**
  Opdracht 1

  Er is een lijst nodig met alle patiënten uit het postcodegebied 6202 JK. De
  resultatentabel moet de achternaam, voornaam en postcode tonen.
 */

-- EIGEN ANTWOORD
SELECT
  patient_achternaam,
  patient_voornaam,
  patient_postcode
FROM patient
WHERE patient_postcode = '6202 JK';

-- SCHOOL ANTWOORD
SELECT
  patient_achternaam,
  patient_voornaam,
  patient_postcode
FROM
  patient
WHERE patient_postcode = '6202 JK';