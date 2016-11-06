/**
  Opdracht 14

  Pas de query bij 13 aan, zodat de patiënten getoond worden die nog niet aan
  een bednummer gekoppeld zijn.
 */

-- EIGEN ANTWOORD
SELECT *
FROM patient
WHERE patient_bed_nr ISNULL;

-- SCHOOL ANTWOORD
SELECT CONCAT(patient_voornaam, ' ', patient_tussenvoegsel,
              COALESCE(CASE WHEN patient_tussenvoegsel IS NOT NULL
                THEN ' '
                       END, ''), patient_achternaam) AS naam
FROM patient
WHERE NOT
EXISTS(SELECT 1
       FROM bed
       WHERE patient.patient_bed_nr = bed.bed_nr);