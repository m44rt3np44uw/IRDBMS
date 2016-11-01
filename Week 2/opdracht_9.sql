/**
  Opdracht 9

  Schrijf een view die alle verrichtingen van het laboratorium1 met 10%
  verhoogd.
 */

-- EIGEN ANTWOORD
CREATE VIEW OPDRACHT_9 AS
  SELECT
    verrichting_nr,
    verrichting_rek_totaal
  FROM verrichting
  WHERE verrichting_cat_nr = 'LA1';

SELECT *
FROM OPDRACHT_9;

UPDATE OPDRACHT_9
SET verrichting_rek_totaal = verrichting_rek_totaal * 1.1;

-- SCHOOL ANTWOORD
CREATE VIEW verhogen_verrichting_prijs
AS
  SELECT
    verrichting_nr,
    verrichting_rek_totaal
  FROM verrichting
  WHERE verrichting_cat_nr = 'LA1';

-- view controleren
SELECT *
FROM verhogen_verrichting_prijs;

-- update uitvoeren
UPDATE verhogen_verrichting_prijs
SET verrichting_rek_totaal = verrichting_rek_totaal * 1.1;