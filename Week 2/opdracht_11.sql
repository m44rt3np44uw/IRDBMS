/**
  Opdracht 11

  Maak een stored procedure die notities aanmaakt voor patiënten. De
  aanmaakdatum en laatst bijgewerkt datum zijn automatisch de datum
  waarop de stored procedure wordt aangeroepen.
 */

-- SCHOOL ANTWOORD

-- aanmaken van de process_patient_audit functie.
CREATE OR REPLACE FUNCTION process_patient_audit()
  RETURNS TRIGGER AS
$patient_audit$
BEGIN
  --
  -- Create a row in emp_audit to reflect the operation performed on emp,
  -- make use of the special variable TG_OP to work out the operation.
  --
  IF (TG_OP = 'DELETE')
  THEN
    INSERT INTO patient_audit SELECT
                                'D',
                                now(),
                                user,
                                OLD.patient_achternaam;
    RETURN OLD;
  ELSIF (TG_OP = 'UPDATE')
    THEN
      INSERT INTO patient_audit SELECT
                                  'U',
                                  now(),
                                  user,
                                  NEW.patient_achternaam;
      RETURN NEW;
  ELSIF (TG_OP = 'INSERT')
    THEN
      INSERT INTO patient_audit SELECT
                                  'I',
                                  now(),
                                  user,
                                  NEW.patient_achternaam;
      RETURN NEW;
  END IF;
  RETURN NULL; -- result is ignored since this is an AFTER trigger
END;
$patient_audit$ LANGUAGE plpgsql;