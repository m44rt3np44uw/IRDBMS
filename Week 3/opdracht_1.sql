/**
  Opdracht 1

  Maak een initiële query tree voor onderstaand statement:
 */

-- SCHOOL ANTWOORD
SELECT
  pers_achternaam,
  pers_voornaam,
  afdeling_naam
FROM zh_afdeling a, personeel p
WHERE a.afdeling_nr =
      p.pers_afd_toegewezen
      AND pers_achternaam >= 'S'
      AND afdeling_naam = 'Radiologie'