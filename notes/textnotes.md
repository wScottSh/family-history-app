For my searches, I'm really looking for something that is more like filters.

Maybe if I pre-generate all kinds of filters for different kinds of properties, I could string those together and concat them into a cypher query.

- Time
    - Time start
    - time end
- Names
    - aliases
    - as well as full names
- locations
    - of any granularity down the tree
- relationships
    - kids
    - parents
    - Siblings, etc

We can string them all together into a dynamically created cypher query and hit the DB once.

July 26, 2018
---

"A person's life is a series of noteworthy events through time"

The label types can be abstracted as:

- `(:Person)`
- `-[:Event]->`
- `(:Object)`
- `(:List)`

The properties for those things are where the magic lies, and can theoretically be indexed. So `(:Object {type: "Video"})` or `(:Event {type: "Married"})`.

The purpose of this is to simplify the schema to its simplest factor, focusing on three main node types that all operate somewhat independently, but are interconnected in meaningful ways.

---

There's a possible schema where the relationships aren't the event carriers, but rather just a relationship connector between the other three. So `(:Person)` and `(:Person)` would both be `-[:EVENT_TYPE]->` connected to a `(:Event {name: "Person & Person's Wedding!"})`. The event node would then be connected to other nodes for grouping. For example:

```
(scott:Person {name: "Scott"})-[:WAS_MARRIED]->(wedding:Event {name: "Person & Person's Wedding!"})-[:TYPE]->(weddingList:List {name: "WEDDING"})

(scott:Person {name: "Paige"})-[:WAS_MARRIED]->(wedding)

(wedding)-[:EVENT_START]->(:Time)

(wedding)-[:EVENT_END]->(:Time)

(wedding)-[:EVENT_GEOLOCATION]->(:Location)
```

Specific node types, like Events, would have some required relationships. For example, it would need to have a start time and a geolocation. This implies that there's a time tree and a location tree. The location tree is to the granularity of Google's places (and can use its place ID as well), while the time tree can break down to the level of milliseconds if needed (GraphAware auto time-tree plugin).

---

It's important that there are multiple time connectors for calculating the time range of an event. Take these use cases:

- I moved into a new house in June of 2018.
- I was born at 11:13pm.
- I went camping in the summer of 2009, but definitely sometime after my birthday.
- Sometime between Christmas and New Years.