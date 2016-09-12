/**
  Opdracht 11

  Voeg jezelf toe als patient aan de tabel patient_archief om deze testen.
  Gebruik SYSDATE om de kolom lst_bijwerkdatum te vullen.
 */

INSERT INTO patient_archief
(patient_nr, patient_sofi_nr, patient_achternaam, patient_voornaam, patient_tussenvoegsel, patient_adres, patient_plaats, patient_provincie, patient_postcode, patient_geboortedatum, patient_tel_nr, lst_bijwerkdat)
VALUES
  (62480, 123456789, 'Paauw', 'Maarten', NULL, 'Cornelis Houtmanstraat 9B', 'Den Haag', 'ZH', '2593 RD',
          DATE('1993-01-02'), '0612345678', NOW())