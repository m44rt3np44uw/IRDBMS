/**
  Opdracht 1

  Een lijst op patient achternaam, tussenvoegsel en voornaam in welk bed
  deze patient zich bevindt (bed nummer). Sorteer op achternaam.
 */

-- EIGEN ANTWOORD
SELECT
  patient.patient_achternaam,
  patient.patient_tussenvoegsel,
  patient.patient_voornaam,
  bed.bed_nr
FROM patient
  JOIN bed
    ON patient.patient_bed_nr = bed.bed_nr
ORDER BY patient.patient_achternaam;

-- SCHOOL ANTWOORD
SELECT
  patient_voornaam,
  patient_tussenvoegsel,
  patient_achternaam,
  patient_bed_nr
FROM patient
ORDER BY patient_achternaam;