/**
  Opdracht 7

  Creëer een tabel zoals de tabel personeel. Noem de tabel personeel2. Neem
  alle voorwaarden over om de gegevensintegriteit af te dwingen.
 */

CREATE TABLE personeel2
(
  pers_nr             CHAR(5)
    CONSTRAINT pk_personeel_2 PRIMARY KEY,

  pers_sofi_nr          CHAR(9)
    CONSTRAINT nn_pers_sofi_nr_2 NOT NULL,

  pers_achternaam       VARCHAR(50)
    CONSTRAINT nn_pers_achternaam_2 NOT NULL,

  pers_voornaam         VARCHAR(50)
    CONSTRAINT nn_pers_voornaam_2 NOT NULL,

  pers_tussenvoegsel    VARCHAR(50),

  pers_afd_toegewezen   CHAR(5)
    CONSTRAINT fk_pers_afd_toegewezen_2
      REFERENCES zh_afdeling(afdeling_nr),

  pers_kantoor_locatie  VARCHAR(10),

  pers_datum_in_dienst  DATE DEFAULT NULL,

  pers_ziekenhuis_titel VARCHAR(50)
    CONSTRAINT nn_pers_ziekenhuis_titel_2 NOT NULL,

  pers_tel_werk           CHAR(10),

  pers_tel_doorkies       VARCHAR(4),

  pers_reg_nr             VARCHAR(20),

  pers_salaris            INTEGER,

  pers_tarief             NUMERIC(5,2),

  lst_bijwerkdat          DATE
)