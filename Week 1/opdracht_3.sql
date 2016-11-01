/**
  Opdracht 3

  Voer een update statement uit die de waarde van de kolom
  pers_kantoor_locatie voor Eugene Weber wijzigt in ZW4000.
 */

-- EIGEN ANTWOORD
UPDATE personeel
SET pers_kantoor_locatie = 'ZW4000'
WHERE pers_voornaam = 'Eugene' AND pers_achternaam = 'Weber';

-- SCHOOL ANTWOORD
UPDATE personeel
SET pers_kantoor_locatie = 'ZW4000'
WHERE
  pers_voornaam = 'Eugene';