/**
  Opdracht 7

  Creëer een tabel zoals de tabel personeel. Noem de tabel personeel2. Neem
  alle voorwaarden over om de gegevensintegriteit af te dwingen.
 */

-- EIGEN ANTWOORD
CREATE TABLE personeel2
(
  pers_nr               CHAR(5)
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
    REFERENCES zh_afdeling (afdeling_nr),

  pers_kantoor_locatie  VARCHAR(10),

  pers_datum_in_dienst  DATE DEFAULT NULL,

  pers_ziekenhuis_titel VARCHAR(50)
    CONSTRAINT nn_pers_ziekenhuis_titel_2 NOT NULL,

  pers_tel_werk         CHAR(10),

  pers_tel_doorkies     VARCHAR(4),

  pers_reg_nr           VARCHAR(20),

  pers_salaris          INTEGER,

  pers_tarief           NUMERIC(5, 2),

  lst_bijwerkdat        DATE
);

-- SCHOOL ANTWOORD
CREATE TABLE personeel2 (
  pers_nr               CHARACTER(5)          NOT NULL,
  pers_sofi_nr
                        CHARACTER(9)          NOT NULL,
  pers_achternaam       CHARACTER VARYING(50) NOT NULL,
  pers_voornaam         CHARACTER VARYING(50) NOT NULL,
  pers_tussenvoegsel
                        CHARACTER VARYING(50),
  pers_afd_toegewezen   CHARACTER(5),
  pers_kantoor_locatie  CHARACTER VARYING(10),
  pers_datum_in_dienst  DATE,
  pers_ziekenhuis_titel CHARACTER VARYING(50) NOT NULL,
  pers_tel_werk
                        CHARACTER(10),
  pers_tel_doorkies     CHARACTER VARYING(4),
  pers_reg_nr
                        CHARACTER VARYING(20),
  pers_salaris          INTEGER,
  pers_tarief           NUMERIC(5, 2),
  lst_bijwerkdat        DATE,
  CONSTRAINT pk_personeel2 PRIMARY KEY (pers_nr),
  CONSTRAINT fk_pers_afd_toegewezen FOREIGN KEY (pers_afd_toegewezen)
  REFERENCES zh_afdeling (afdeling_nr) MATCH SIMPLE ON UPDATE NO
  ACTION ON DELETE NO ACTION
) WITH (OIDS = FALSE
);
ALTER TABLE
personeel2
  OWNER TO postgres;