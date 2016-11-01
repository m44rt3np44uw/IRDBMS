/**
  Opdracht 13

  Maak een query die een lijst toont van alle patiënten die zijn toegewezen aan
  bed. De resultatentabel moet de naam, het bednummer en het bedtype
  bevatten.
 */

-- EIGEN ANTWOORD
SELECT
  patient.patient_voornaam,
  patient.patient_tussenvoegsel,
  patient.patient_achternaam,
  bed.bed_nr,
  bed.bed_type_nr
FROM patient
  JOIN bed
    ON patient.patient_bed_nr = bed.bed_nr;

-- SCHOOL ANTWOORD
SELECT
  CONCAT(patient_voornaam, ' ', patient_tussenvoegsel,
         COALESCE(CASE WHEN patient_tussenvoegsel IS NOT NULL
           THEN ' '
                  END, ''), patient_achternaam) AS naam,
  bed_nr,
  bed_type_nr
FROM patient
  LEFT JOIN bed ON patient.patient_bed_nr = bed.bed_nr;