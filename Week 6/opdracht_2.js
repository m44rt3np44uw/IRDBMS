db.getCollection('IRDBMS').update(

    // query
    {
        "studentnummer" : 1094220
    },

    // update
    {
        "studentnummer": 1094220,
        "naam": "Maarten Paauw",
        "adres": "Straatnaam 23B",
        "woonplaats": "Rijnsburg",
        "e-mailadres": "s1094220@student.hsleiden.nl"
    },

    // options
    {
        "multi" : false,  // update only one document
        "upsert" : false  // insert a new document, if no existing document match the query
    }
);