/**
  Opdracht 8

  Maak een view die alleen de patiënten van de afdeling radiologie laat zien.
 */

-- CREATE VIEW OPDRACHT_8 AS
SELECT DISTINCT
  patient.patient_voornaam,
  patient.patient_tussenvoegsel,
  patient.patient_achternaam,
  verrichting_cat.verrichting_cat_omschrijving
FROM verrichting_cat
  JOIN verrichting
    ON verrichting_cat.verrichting_cat_nr = verrichting.verrichting_cat_nr
  JOIN behandeling
    ON verrichting.verrichting_nr = behandeling.behandeling_verrichting_nr
  JOIN patient
    ON behandeling.behandeling_patient_nr = patient.patient_nr
WHERE verrichting_cat.verrichting_cat_omschrijving = 'Radiologie'