/**
  Opdracht 4

  Breidt bovenstaande query uit door alle behandelingen die niet vaker dan
  1 keer voorkomen niet te tonen. Sorteer op aantal behandelingen (de
  vaakst voorkomende bovenaan), gevolgd door verrichting omschrijving op
  alfabet.
 */

-- EIGEN ANTWOORD
SELECT
  COUNT(behandeling.behandeling_nr) AS behandeling_nr,
  verrichting.verrichting_omschrijving
FROM behandeling
  JOIN verrichting
    ON behandeling.behandeling_verrichting_nr = verrichting.verrichting_nr
GROUP BY verrichting.verrichting_omschrijving
HAVING COUNT(behandeling.behandeling_nr) > 1
ORDER BY COUNT(behandeling.behandeling_nr) DESC, verrichting.verrichting_omschrijving;

-- SCHOOL ANTWOORD
SELECT
  verrichting_omschrijving,
  count(b.behandeling_verrichting_nr)
FROM behandeling b, verrichting v
WHERE b.behandeling_verrichting_nr = v.verrichting_nr
GROUP BY v.verrichting_omschrijving
HAVING count(b.behandeling_verrichting_nr) > 1
ORDER BY count(b.behandeling_verrichting_nr) DESC,
  v.verrichting_omschrijving;