/*
    Opdracht 5

    Schrijf het MongoDb query om alleen de restaurants weer te geven die de Ierse
    keuken serveren.
 */

db.getCollection('restaurants').find(
    {
        'cuisine': 'Irish'
    }
).sort(
    {
        'name': 1
    }
);