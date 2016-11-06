/**
  Opdracht 14

  Wijzigingen op patientgegevens moeten gelogd worden voor audit
  doeleinden. Maak daarom een patient_audit tabel aan. De tabel wordt
  automatisch gevuld wanneer een wijziging plaatsvindt in de patient tabel.
  Implementeer hiervoor een trigger.
 */

-- SCHOOL ANTWOORD

-- aanmaken van de nieuwe tabel.
CREATE TABLE patient_audit (
  operation CHAR(1)   NOT NULL,
  stamp     TIMESTAMP NOT NULL,
  userid    TEXT      NOT NULL,
  patient   TEXT      NOT NULL
);

-- selecteer de huidige tabel inhoud patient.
SELECT *
FROM patient;

-- selecteer de huidige tabel inhoud van patient_audit.
SELECT *
FROM patient_audit;

-- update één patient als test.
UPDATE patient
SET patient_achternaam = 'Vries de'
WHERE patient_nr = '100002';

-- selecteer de updates uit de tabel patient.
SELECT *
FROM patient;

-- selecteer de automatische updates uit de tabel patient_audit.
SELECT *
FROM patient_audit;