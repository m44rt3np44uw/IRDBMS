/**
  Opdracht 15

  Schrijf een trigger die controleert dat als een verrichting wordt toegevoegd
  voor een patient, deze patient wel een bed_nr heeft.
 */

-- SCHOOL ANTWOORD

-- Patient heeft geen bed
SELECT *
FROM patient
WHERE patient_nr = '421228';

-- Maakt een functie die een foutmelding geeft zodra er een patientnummer wordt meegegeven aan de functie die geen bed heeft
CREATE OR REPLACE FUNCTION process_behandeling_check()
  RETURNS
    TRIGGER AS $behandeling_check$
BEGIN
  IF ((SELECT patient_bed_nr
       FROM patient
       WHERE
         patient_nr = NEW.behandeling_patient_nr) IS NULL)
  THEN
    RAISE EXCEPTION 'Verrichting kan niet gekoppeld worden met
klant, omdat de patient geen bed heeft';
  END IF;
  RETURN NEW;
END;
$behandeling_check$ LANGUAGE plpgsql;

-- er wordt een trigger gemaakt die afgaat zodra er een record
-- wordt toegevoegd aan tabel behandeling.Deze
-- TRIGGER roept de functie process_behandeling_check aan
CREATE TRIGGER behandeling_check
BEFORE INSERT ON behandeling
FOR EACH ROW EXECUTE PROCEDURE process_behandeling_check();

-- Nu testen, als het goed is geeft dit een foutmelding
INSERT INTO verrichting VALUES ('12014', 'Fractuur, complex', 2500.00, 'Kleine
chirurgische ingrepen', 'CHI', now());
INSERT INTO behandeling VALUES (5, DATE 'now()' + INTEGER '14', '421228',
                                '67585', '12014', 55.00, 'Verbrijzeld been repareren;)', DATE 'now()' + INTEGER
  '14');

-- Nu krijgt de patient een bed
UPDATE patient
SET patient_bed_nr = 3
WHERE patient_nr = '421228';

-- Weer testen. Nu kan de verrichting wel gekoppeld worden aan de patient
INSERT INTO behandeling VALUES (5, DATE 'now()' + INTEGER '14', '421228',
                                '67585', '12014', 55.00, 'Verbrijzeld been repareren;)', DATE 'now()' + INTEGER
  '14');