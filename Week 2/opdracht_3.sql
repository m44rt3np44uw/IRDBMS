/**
  Opdracht 3

  Het aantal behandelingen per verrichting. Toon de verrichting
  omschrijving.
 */

-- EIGEN ANTWOORD
SELECT
  COUNT(behandeling.behandeling_nr),
  verrichting.verrichting_omschrijving
FROM behandeling
  JOIN verrichting
    ON behandeling.behandeling_verrichting_nr = verrichting.verrichting_nr
GROUP BY verrichting.verrichting_omschrijving;

-- SCHOOL ANTWOORD
SELECT
  verrichting_omschrijving,
  count(b.behandeling_verrichting_nr) AS
    aantal_verrichtingen
FROM behandeling b, verrichting v
WHERE
  b.behandeling_verrichting_nr = v.verrichting_nr
GROUP BY
  v.verrichting_omschrijving;