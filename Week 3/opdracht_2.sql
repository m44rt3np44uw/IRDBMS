/**
Opdracht 2

Voer het volgende SQL statement uit:
SELECT pers_achternaam, pers_voornaam, afdeling_naam
FROM zh_afdeling a, personeel p WHERE a.afdeling_nr =
p.pers_afd_toegewezen
AND pers_achternaam >= 'S'
AND afdeling_naam = 'Radiologie'

Doe een explain op het statement. Beschrijf en verklaar wat de explain doet.
Laat een grafische weergave van de explain maken. Verklaar wat de grafische
weergave laat zien.

Probeer een aantal variaties op het statement, zoals * i.p.v. attributen in de
SELECT, LIKE i.p.v. >= etc.
*/

-- EIGEN ANTWOORD
EXPLAIN SELECT
  pers_achternaam,
  pers_voornaam,
  afdeling_naam
FROM zh_afdeling a, personeel p
WHERE a.afdeling_nr = p.pers_afd_toegewezen
      AND pers_achternaam >= 'S'
      AND afdeling_naam = 'Radiologie';

-- SCHOOL ANTWOORD
EXPLAIN SELECT
  pers_achternaam,
  pers_voornaam,
  afdeling_naam
FROM zh_afdeling a, personeel p
WHERE a.afdeling_nr = p.pers_afd_toegewezen
      AND pers_achternaam >= 'S'
      AND afdeling_naam = 'Radiologie';