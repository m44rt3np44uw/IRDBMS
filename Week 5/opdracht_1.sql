/**
  Opdracht 1

  Artsen mogen slechts een bepaald aantal behandelingen per dag doen om
  veiligheidsredenen (en verzekeringsredenen).

  Schrijf een trigger die controleert wanneer een nieuwe behandeling moet worden
  uitgevoerd of de betrokken arts (personeel) niet meer dan 3 behandelingen (3 is
  even fictief voor testredenen. In werkelijkheid zal dit aantal hoger liggen).

  Eigenlijk moet het aantal behandelingen per dag gecontroleerd worden. Kijk of
  je dit kan implementeren.
 */

-- EIGEN ANTWOORD

-- functie
CREATE OR REPLACE FUNCTION tel_behandelingen()
  RETURNS TRIGGER AS
$controleer_aantal_behandelingen$
BEGIN
  IF ((SELECT COUNT(*)
       FROM behandeling
       WHERE behandeling_pers_nr = NEW.behandeling_pers_nr
             AND behandeling_datum = NEW.behandeling_datum) >= 3)
  THEN
    RAISE EXCEPTION 'Er zijn al 3 behandelingen vandaag geweest';
  END IF;
  RETURN NEW;
END;
$controleer_aantal_behandelingen$ LANGUAGE plpgsql;

-- trigger
CREATE TRIGGER controleer_aantal_behandelingen
BEFORE INSERT ON behandeling
FOR EACH ROW
EXECUTE PROCEDURE tel_behandelingen();

-- selecteer alle behandelaars.
SELECT COUNT(*) AS aantal_behandelingen
FROM behandeling
WHERE behandeling_pers_nr = '23100' AND behandeling_datum = '2016-09-02';

-- test.
BEGIN;
INSERT INTO behandeling VALUES (28, '2016-09-03', '100025', '23100', '12000', 25.00, 'test', '2016-11-05');
COMMIT;

-- stop de sessie.
END;