/**
  Opdracht 1

  Een lijst op patient achternaam, tussenvoegsel en voornaam in welk bed
  deze patient zich bevindt (bed nummer). Sorteer op achternaam.
 */

SELECT
  patient.patient_achternaam,
  patient.patient_tussenvoegsel,
  patient.patient_voornaam,
  bed.bed_nr
FROM patient
  JOIN bed
    ON patient.patient_bed_nr = bed.bed_nr
ORDER BY patient.patient_achternaam