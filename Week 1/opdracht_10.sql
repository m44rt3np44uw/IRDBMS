/**
  Opdracht 10

  Maak een select statement om te zien welke records in de patiënt tabel in
  aanmerking komen om gearchiveerd te worden.
 */

-- EIGEN ANTWOORD
SELECT *
FROM patient
WHERE lst_bijwerkdat < now() - '5 years' :: INTERVAL;

-- SCHOOL ANTWOORD
SELECT *
FROM patient
WHERE lst_bijwerkdat < now() - INTERVAL '5 year';