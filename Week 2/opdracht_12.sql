/**
  Opdracht 12

  Roep de stored procedure aan om een nieuwe notitie aan te maken voor
  een bestaande patiënt. Bedenk zelf een commentaar.
 */

-- SCHOOL ANTWOORD

-- aanmaken van de trigger
CREATE TRIGGER patient_audit
AFTER INSERT OR
      UPDATE OR
      DELETE
  ON patient
FOR EACH ROW
EXECUTE PROCEDURE process_patient_audit();