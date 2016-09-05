/**
  Opdracht 13

  Maak een query die een lijst toont van alle patiënten die zijn toegewezen aan
  bed. De resultatentabel moet de naam, het bednummer en het bedtype
  bevatten.
 */

SELECT patient.patient_voornaam, bed.bed_nr, bed.bed_type_nr
FROM patient
JOIN bed
ON patient.patient_bed_nr = bed.bed_nr