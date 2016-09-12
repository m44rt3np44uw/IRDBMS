/**
  Opdracht 2

  Het bed nummer zegt de centrale info niet zoveel. Breidt de query uit dat
  het kamernummer getoond wordt. Toon ook de kameromschrijving.
 */

SELECT bed.bed_nr, kamer.kamer_nr, kamer.kamer_omschrijving
FROM bed
JOIN kamer
ON bed.bed_kamer_nr = kamer.kamer_nr