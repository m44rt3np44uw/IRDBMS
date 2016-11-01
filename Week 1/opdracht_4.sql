/**
  Opdracht 4

  Je moet een query creëren die de behandelgeschiedenis van de
  ziekenhuispatienten toont. De resultatentabel moet de kolommen patient_nr
  en patient_achternaam van de tabel patiënt en de kolom
  pn_notitie_commentaar van de tabel patient_notitie bevatten.
 */

-- EIGEN ANTWOORD
SELECT
  patient.patient_nr,
  patient.patient_achternaam,
  patient_notitie.pn_notitie_commentaar
FROM patient
  JOIN patient_notitie
    ON patient.patient_nr = patient_notitie.pn_patient_nr;

-- SCHOOL ANTWOORD
SELECT
  p.patient_nr,
  p.patient_achternaam,
  pn.pn_notitie_commentaar
FROM patient p INNER JOIN patient_notitie pn ON
                                               p.patient_nr = pn.pn_patient_nr;