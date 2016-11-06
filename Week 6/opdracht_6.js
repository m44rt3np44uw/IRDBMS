/*
    Opdracht 6

    Schrijf het MongoDb query om alleen de restaurants weer te geven die de
    Chinese keuken serveren en de borough Queens zitten.
 */

db.getCollection('restaurants').find(
    {
        'cuisine': 'Irish',
        'borough': 'Queens'
    }
).sort(
    {
        'name': 1
    }
);