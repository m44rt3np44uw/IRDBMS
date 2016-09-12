/**
  Opdracht 2

  Het bed nummer zegt de centrale info niet zoveel. Breidt de query uit dat
  het kamernummer getoond wordt. Toon ook de kameromschrijving.
 */

SELECT
  patient.patient_achternaam,
  patient.patient_tussenvoegsel,
  patient.patient_voornaam,
  bed.bed_nr,
  bed.bed_kamer_nr,
  kamer.kamer_omschrijving
FROM patient
  JOIN bed
    ON patient.patient_bed_nr = bed.bed_nr
  JOIN kamer
    ON bed.bed_kamer_nr = kamer.kamer_nr
ORDER BY patient.patient_achternaam