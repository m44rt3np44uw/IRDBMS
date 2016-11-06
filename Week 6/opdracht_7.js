/*
    Opdracht 7

    Schrijf het MongoDb query om de restaurants te vinden die een score gevonden
    hebben van meer dan 90.
 */

db.getCollection('restaurants').find(
    {
        'grades.score': {
            '$gte' : 90
        }
    }
).sort(
    {
        'name': 1
    }
);