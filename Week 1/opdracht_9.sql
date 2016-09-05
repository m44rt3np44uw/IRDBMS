/**
  Opdracht 9

  Creëer een tabel patient_archief. In deze tabel zullen de rijen worden
  opgeslagen van patienten die niet in behandeling zijn. Deze patiënten zijn
  gedefinieerd als patienten die de afgelopen 5 jaar niet meer in behandeling
  zijn. Neem de gegevensstructuur van de tabel patiënt over zonder de kolom
  bed_nr.
 */

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
)