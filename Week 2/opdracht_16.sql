/**
  Opdracht 16

  Het hoofdinformatievoorziening van het Bredeweg ziekenhuis heeft
  besloten dat röntgenfoto’s en medische opnamen (bijvoorbeeld
  angioplasy) niet meer los in bestandsmappen mogen staan, maar bij de
  patientgegevens in de centrale database. Implementeer een oplossing
  voor het Bredeweg ziekenhuis.
 */

-- SCHOOL ANTWOORD

-- Tabel aangemaakt
CREATE TABLE bestand (
  bestandsnaam              TEXT,
  bestand                   OID,
  bestand_behandeling_nr    INT,
  bestand_behandeling_datum DATE,
  CONSTRAINT fk_bestand_behandeling
    FOREIGN KEY (bestand_behandeling_nr, bestand_behandeling_datum)
    REFERENCES behandeling (behandeling_nr, behandeling_datum)
    MATCH SIMPLE
  ON UPDATE
    NO ACTION
  ON DELETE
     NO ACTION
);

-- Stopt bestand “rontgenfoto.jpg“ in de database
INSERT INTO bestand (bestandsnaam, bestand, bestand_behandeling_nr,
                     bestand_behandeling_datum)
VALUES ('Röntgenfoto van een been',
        lo_import('/Library/PostgreSQL/9.3/share/rontgenfoto.jpg'), 2, DATE('2014-10-
02'));

-- exporteert bestand rontgenfoto.jpg uit de database. Je hebt hier superuser rechten voor nodig.
SELECT lo_export(bestand,
                 '/Library/PostgreSQL/9.3/share/export/rontgenfoto2.jpg')
FROM bestand
WHERE bestand_behandeling_nr = 2 AND
      bestand_behandeling_datum = DATE('2014-10-02');