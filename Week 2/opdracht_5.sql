/**
  Opdracht 5

  De directie vraagt of de behandeling ‘Zuurstof’ uit het overzicht gehaald
  kan worden. Maak dit overzicht.
 */

SELECT COUNT(behandeling.behandeling_nr) as behandeling_nr, verrichting.verrichting_omschrijving
FROM behandeling
JOIN verrichting
ON behandeling.behandeling_verrichting_nr = verrichting.verrichting_nr
WHERE verrichting.verrichting_omschrijving != 'Zuurstof'
GROUP BY verrichting.verrichting_omschrijving
HAVING COUNT(behandeling.behandeling_nr) > 1
ORDER BY COUNT(behandeling.behandeling_nr) DESC