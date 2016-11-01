/**
  Opdracht 6
  
  Voor een voorschrift moet het ziekenhuis een overzicht leveren van het aantal
  verrichtingen per categorie. Toon het verrichting_cat_nr en het aantal
  verrichtingen.
 */

SELECT
  DISTINCT(verrichting_cat_nr),
  COUNT(verrichting_cat_nr)
FROM verrichting
GROUP BY verrichting_cat_nr;