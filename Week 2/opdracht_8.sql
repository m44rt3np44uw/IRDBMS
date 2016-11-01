/**
  Opdracht 8

  Maak een view die alleen de patiënten van de afdeling radiologie laat zien.
 */

-- EIGEN ANTWOORD
CREATE VIEW OPDRACHT_8 AS
  SELECT p.*
  FROM patient p, behandeling b
  WHERE p.patient_nr = b.behandeling_patient_nr
        AND b.behandeling_pers_nr IN (
    SELECT pers_nr
    FROM personeel
    WHERE pers_afd_toegewezen = 'RADI1'
  );

SELECT *
FROM OPDRACHT_8;

-- SCHOOL ANTWOORD
CREATE VIEW patienten_radiologie
AS
  SELECT p.*
  FROM patient p, behandeling b
  WHERE p.patient_nr = b.behandeling_patient_nr
        AND b.behandeling_pers_nr IN (
    SELECT pers_nr
    FROM personeel
    WHERE pers_afd_toegewezen = 'RADI1'
  );

-- testen view
SELECT *
FROM patienten_radiologie