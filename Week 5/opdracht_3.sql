/**
  Opdracht 3

  Maak een view die van het personeel geen vertrouwelijke gegevens laat zien,
  maar enkel naam, afdeling en doorkiesnummer. Noem de viewcpersoneel_telefoonlijst.

  Maak een account webuser aan en geef deze leesrechten op de view. Ontneem
  de rechten op de personeel tabel. Test je werk.

  Personeel kan alle behandelingen zien (of bewerken), maar alleen de
  behandelingen die binnen hun afdelingen gedaan worden. Implementeer de view
  voor de afdeling HEEL1. Geef de view een logische naam.

  Zorg dat Max Ebbink rechten krijgt op de view en niet meer op de behandeling
  tabel. Test je werk.
 */

-- EIGEN ANTWOORD
CREATE VIEW viewcpersoneel_telefoonlijst AS
  SELECT
    personeel.pers_voornaam,
    personeel.pers_tussenvoegsel,
    personeel.pers_achternaam,
    personeel.pers_afd_toegewezen,
    personeel.pers_tel_doorkies
  FROM personeel;