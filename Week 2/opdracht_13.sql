/**
  Opdracht 13

  Maak een nieuwe tabel die de totaaltellingen bijhoudt met drie kolommen:
  telling_id, telling_omschrijving en telling_getal.

  Voeg een regel toe met als telling_omschrijving ‘totale salariskosten’
  en als telling_getal het totaal van de salariskosten.

  Schrijf vervolgens een stored procedure die de totale salariskosten
  update met een bepaald bedrag in de totaaltellingen tabel.

  Schrijf vervolgens een trigger die wanneer een nieuw personeelslid wordt
  toegevoegd met salaris automatisch de totale salariskosten update in de
  totaaltellingen tabel.
 */

-- aanmaken van de tabel.
CREATE TABLE totaaltellingen (
  telling_id           SERIAL
    CONSTRAINT pk_totaaltellingen
    PRIMARY KEY,
  telling_omschrijving VARCHAR(255),
  telling_getal        INTEGER
);

-- voeg het huidige totaal toe.
INSERT INTO totaaltellingen (telling_omschrijving, telling_getal)
VALUES ('totale salariskosten', 3188520);

-- DROP
DROP FUNCTION opdracht_13_stored_procedure() CASCADE;

-- stored procedure
CREATE OR REPLACE FUNCTION opdracht_13_stored_procedure()
  RETURNS
    TRIGGER AS $opdracht_13_trigger$
BEGIN
  UPDATE totaaltellingen
  SET telling_getal = (SELECT sum(personeel.pers_salaris)
                       FROM personeel)
  WHERE telling_omschrijving = 'totale salariskosten';
  RETURN NEW;
END;

$opdracht_13_trigger$ LANGUAGE plpgsql;

-- trigger

CREATE TRIGGER opdracht_13_trigger
AFTER UPDATE ON personeel
FOR EACH ROW EXECUTE PROCEDURE opdracht_13_stored_procedure();

-- before
SELECT * FROM totaaltellingen;
SELECT pers_salaris FROM personeel WHERE pers_nr = '23232';

-- update
UPDATE personeel
SET pers_salaris=69000
WHERE pers_nr='23232';

-- after
SELECT * FROM totaaltellingen;
SELECT pers_salaris FROM personeel WHERE pers_nr = '23232';
