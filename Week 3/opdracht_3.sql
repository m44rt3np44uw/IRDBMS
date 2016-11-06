/**
  Opdracht 3

  Analyseer voor de volgende tabellen welke indexen nuttig zijn en waarom.
  Bedenk het soort index en op welke attributen:
    • Personeel
    • Behandeling

  Maak een clustered index op de tabel patient en de volgende kolom(men):
  patient_achternaam, patient_voornaam

  Maak een non clustered index op de tabel patient en de volgende kolom(men):
  patient_sofi_nr
 */

-- EIGEN ANTWOORD
CREATE INDEX patient_achternaam_voornaam_indx
  ON patient (patient_achternaam, patient_voornaam);

CLUSTER patient USING patient_achternaam_voornaam_indx;

CREATE INDEX patient_sofi_nr_idx
  ON patient (patient_sofi_nr);

-- SCHOOL ANTWOORD #NOTEVENWORKING
CLUSTER employees USING (patient_achternaam, patient_voornaam);
CREATE INDEX patient_sofi_nr_idx
  ON patient patient_sofi_nr;