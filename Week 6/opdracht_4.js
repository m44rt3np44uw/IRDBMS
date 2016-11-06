/*
    Opdracht 4

    Schrijf het MongoDb query om alle restaurants weer te geven oplopend op naam
    gesorteerd.
 */

db.getCollection('restaurants').find(
    {

    }
).sort(
    {
        'name': -1
    }
);