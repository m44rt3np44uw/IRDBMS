/**
  Opdracht 5
  
  De accountants die bezig zijn met het vaststellen van de budgetten hebben
  het gemiddelde salaris van de medewerkers en het totaal van alle salarissen
  nodig. De resultaattabel moet twee kolommen bevatten op basis van een
  query. Geef de kolommen zinvolle namen.
 */

-- EIGEN ANTWOORD
SELECT
  AVG(pers_salaris) AS gemiddeld_salaris,
  SUM(pers_salaris) AS totaal_salaris
FROM personeel;

-- SCHOOL ANTWOORD
SELECT
  AVG(cast(pers_salaris AS REAL))   AS gemiddeld_salaris,
  SUM(cast(pers_salaris AS BIGINT)) AS total_salaris
FROM personeel;