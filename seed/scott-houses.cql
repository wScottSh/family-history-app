match (scott:Person {alias: "Scott"})
create
(centraliaHouse:Location {
    name: "1104 L St.",
    placeID: "EiMxMTA0IEwgU3QsIENlbnRyYWxpYSwgV0EgOTg1MzEsIFVTQSIxEi8KFAoSCcf5nf-IYJFUEcwOJkDRP5mWENAIKhQKEglP_3FnfWCRVBHmQUWhleAvWQ"
}),
(salemHouse:Location {
    name: "3130 Mooreland Ave. NE",
    placeID: "EiszMTMwIE1vb3JlbGFuZCBBdmUgTkUsIFNhbGVtLCBPUiA5NzMwNSwgVVNBIjESLwoUChIJb15rHSj8v1QRUqXaxnV8iyAQuhgqFAoSCdvKkz8o_L9UEXHzLDmfLWzm"
}),
(mtc:Location {
    name: "Missionary Training Center",
    placeID: "ChIJTRPLIpWQTYcRJyuom1g3fZw"
}),
(firstArea:Location {
    name: "The Regent At Town Center",
    placeID: "ChIJ38-Qx1OTyIARhpY8vz6jKIE"
}),
(carson:Location {
    name: "305 W 8th St",
    placeID: "ChIJoeVmZAqgmYARcfSlvptRx_A"
}),
(secondArea:Location {
    name: "6500 Vegas Dr",
    placeID: "ChIJRyKpQ7XByIARGkCWarzUjeY"
}),
(renns:Location {
    name: "4241 SW 159th Ave",
    placeID: "ChIJ5yBNo4kOlVQRHpPIwMWpLs8"
}),
(nottos:Location {
    name: "9145 SW Yearling Place",
    placeID: "Ei05MTQ1IFNXIFllYXJsaW5nIFBsLCBCZWF2ZXJ0b24sIE9SIDk3MDA4LCBVU0EiMRIvChQKEgnTMlfDuw2VVBGsefdk6brx1hC5RyoUChIJSY_DerkNlVQR17RbGKbrEK"
}),
(firstApt:Location {
    name: "15422 Bangy Rd #13",
    placeID: "ChIJkZLa-ihzlVQR6HzkhgvIJCw"
}),
(secondApt:Location {
    name: "15422 Bangy Rd #17",
    placeID: "ChIJkZLa-ihzlVQR6HzkhgvIJCw"
}),
(firstTexas:Location {
    name: "900 Discovery Blvd",
    placeID: "ChIJfft3kgItW4YRPxukfVmhzNE"
}),
(secondTexas:Location {
    name: "11300 W Parmer Ln",
    placeID: "ChIJU-LUEinTRIYRDIfFhya-YBk"
}),
(wash:Location {
    name: "Washington",
    placeID: "ChIJ-bDD5__lhVQRuvNfbGh4QpQ"
}),
(oregon:Location {
    name: "Oregon",
    placeID: "ChIJVWqfm3xuk1QRdrgLettlTH0"
}),
(texas:Location {
    name: "Texas",
    placeID: "ChIJSTKCCzZwQIYRPN4IGI8c6xY"
}),
(nevada:Location {
    name: "Nevada",
    placeID: "ChIJcbTe-KEKmYARs5X8qooDR88"
}),
(centr:Location {
    name: "Centralia",
    placeID: "ChIJnXleq1ZakVQRCmdEmRyQqvI"
}),
(salem:Location {
    name: "Salem",
    placeID: "ChIJY5xLvPz-v1QRwlcDj-ApNPk"
}),
(provo:Location {
    name: "Provo",
    placeID: "ChIJv_ELk3GSTYcR71a1ACbxkB0"
}),
(utah:Location {
    name: "Utah",
    placeID: "ChIJzfkTj8drTIcRP0bXbKVK370"
}),
(vegas:Location {
    name: "Las Vegas",
    placeID: "ChIJ0X31pIK3voARo3mz1ebVzDo"
}),
(cpark:Location {
    name: "Cedar Park",
    placeID: "ChIJ1Zl9vhctW4YR_zkVv4ahPXY"
}),
(beaver:Location {
    name: "Beaverton",
    placeID: "ChIJY4j4diQIlVQRCL2sihXP4BA"
}),
(lakeo:Location {
    name: "Lake Oswego",
    placeID: "ChIJDc2hbmlzlVQRDZiha8Xz-HQ"
}),
(carsoncity:Location {
    name: "Carson City",
    placeID: "ChIJcbTe-KEKmYARKDjivYJsnPc"
}),
(usa:Location {
    name: "United States of America",
    placeID: "ChIJCzYy5IS16lQRQrfeQ5K5Oxw"
}),
(geo:GeoList {
    name: "Geolocation Tree"
}),
(scott)-[:LIVED]->(centraliaHouse),
(scott)-[:LIVED]->(salemHouse),
(scott)-[:LIVED]->(mtc),
(scott)-[:LIVED]->(firstArea),
(scott)-[:LIVED]->(carson),
(scott)-[:LIVED]->(secondArea),
(scott)-[:LIVED]->(renns),
(scott)-[:LIVED]->(nottos),
(scott)-[:LIVED]->(firstApt),
(scott)-[:LIVED]->(secondApt),
(scott)-[:LIVED]->(firstTexas),
(scott)-[:LIVED]->(secondTexas),
(usa)-[:GEO_CHILD]->(wash),
(usa)-[:GEO_CHILD]->(oregon),
(usa)-[:GEO_CHILD]->(nevada),
(usa)-[:GEO_CHILD]->(utah),
(usa)-[:GEO_CHILD]->(texas),
(wash)-[:GEO_CHILD]->(centr),
(oregon)-[:GEO_CHILD]->(salem),
(oregon)-[:GEO_CHILD]->(beaver),
(oregon)-[:GEO_CHILD]->(lakeo),
(utah)-[:GEO_CHILD]->(provo),
(nevada)-[:GEO_CHILD]->(vegas),
(nevada)-[:GEO_CHILD]->(carsoncity),
(texas)-[:GEO_CHILD]->(cpark),
(centr)-[:GEO_CHILD]->(centraliaHouse),
(salem)-[:GEO_CHILD]->(salemHouse),
(provo)-[:GEO_CHILD]->(mtc),
(vegas)-[:GEO_CHILD]->(firstArea),
(carsoncity)-[:GEO_CHILD]->(carson),
(vegas)-[:GEO_CHILD]->(secondArea),
(beaver)-[:GEO_CHILD]->(renns),
(beaver)-[:GEO_CHILD]->(nottos),
(lakeo)-[:GEO_CHILD]->(firstApt),
(lakeo)-[:GEO_CHILD]->(secondApt),
(cpark)-[:GEO_CHILD]->(firstTexas),
(cpark)-[:GEO_CHILD]->(secondTexas),
(geo)-[:GEO_CHILD]->(usa)