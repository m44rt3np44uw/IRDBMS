/**
  Opdracht 9

  Creëer een tabel patient_archief. In deze tabel zullen de rijen worden
  opgeslagen van patienten die niet in behandeling zijn. Deze patiënten zijn
  gedefinieerd als patienten die de afgelopen 5 jaar niet meer in behandeling
  zijn. Neem de gegevensstructuur van de tabel patiënt over zonder de kolom
  bed_nr.
 */

-- EIGEN ANTWOORD
CREATE TABLE patient_archief
(
  patient_nr            CHAR(6)
    CONSTRAINT pk_patient_archief PRIMARY KEY,

  patient_sofi_nr       CHAR(9)
    CONSTRAINT nn_patient_sofi_nr_2 NOT NULL,

  patient_achternaam    VARCHAR(50)
    CONSTRAINT nn_patient_achternaam_2 NOT NULL,

  patient_voornaam      VARCHAR(50)
    CONSTRAINT nn_patient_voornaam_2 NOT NULL,

  patient_tussenvoegsel VARCHAR(50),

  patient_adres         VARCHAR(50),

  patient_plaats        VARCHAR(50),

  patient_provincie     CHAR(2),

  patient_postcode      VARCHAR(7),

  patient_geboortedatum DATE,

  patient_tel_nr        CHAR(10),

  lst_bijwerkdat        DATE
);

-- SCHOOL ANTWOORD
CREATE TABLE patient_archief (
  patient_nr            CHARACTER(6)          NOT NULL,
  patient_sofi_nr       CHARACTER(9)          NOT NULL,
  patient_achternaam    CHARACTER
                        VARYING(50)           NOT NULL,
  patient_voornaam      CHARACTER VARYING(50) NOT NULL,
  patient_tussenvoegsel CHARACTER VARYING(50),
  patient_adres         CHARACTER
                        VARYING(50),
  patient_plaats        CHARACTER VARYING(50),
  patient_provincie
                        CHARACTER(2),
  patient_postcode      CHARACTER VARYING(7),
  patient_geboortedatum DATE,
  patient_tel_nr        CHARACTER(10),
  lst_bijwerkdat
                        DATE,
  CONSTRAINT pk_patient_archief PRIMARY KEY (patient_nr)
) WITH (
OIDS = FALSE
);
ALTER TABLE patient_archief
  OWNER TO postgres;