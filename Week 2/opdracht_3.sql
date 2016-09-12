/**
  Opdracht 3

  Het aantal behandelingen per verrichting. Toon de verrichting
  omschrijving.
 */

SELECT
  COUNT(behandeling.behandeling_nr),
  verrichting.verrichting_omschrijving
FROM behandeling
  JOIN verrichting
    ON behandeling.behandeling_verrichting_nr = verrichting.verrichting_nr
GROUP BY verrichting.verrichting_omschrijving