/**
  Opdracht 12

  Verwijder de zojuist toegevoegde rij weer.
 */

-- EIGEN ANTWOORD
DELETE FROM patient_archief
WHERE patient_nr = '62480';

-- SCHOOL ANTWOORD
DELETE FROM patient_archief
WHERE patient_achternaam = 'Manen';