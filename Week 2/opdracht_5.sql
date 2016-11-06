/**
  Opdracht 5

  De directie vraagt of de behandeling ‘Zuurstof’ uit het overzicht gehaald
  kan worden. Maak dit overzicht.
 */

-- EIGEN ANTWOORD
SELECT
  COUNT(behandeling.behandeling_nr) AS behandeling_nr,
  verrichting.verrichting_omschrijving
FROM behandeling
  JOIN verrichting
    ON behandeling.behandeling_verrichting_nr = verrichting.verrichting_nr
WHERE verrichting.verrichting_omschrijving != 'Zuurstof'
GROUP BY verrichting.verrichting_omschrijving
HAVING COUNT(behandeling.behandeling_nr) > 1
ORDER BY COUNT(behandeling.behandeling_nr) DESC;

-- SCHOOL ANTWOORD
SELECT
  verrichting_omschrijving,
  count(b.behandeling_verrichting_nr)
FROM behandeling b, verrichting v
WHERE b.behandeling_verrichting_nr = v.verrichting_nr
      AND v.verrichting_omschrijving != 'Zuurstof'
GROUP BY v.verrichting_omschrijving
HAVING count(b.behandeling_verrichting_nr) > 1
ORDER BY count(b.behandeling_verrichting_nr) DESC,
  v.verrichting_omschrijving;