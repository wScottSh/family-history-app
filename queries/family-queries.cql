// this query returns my siblings because it jumps from mom to dad at the married stage
// need to figure out how to conditionally traverse and exclued siblings
match (:Person {alias: "Scott"})<-[:CHILD]-(:Children)<-[:PARENT]-(:Person)-[:MARRIED]-(:Person)-[:PARENT]->(:Children)-[:CHILD]->(stepSibs:Person) return stepSibs

match (:Person {alias: "Scott"})<-[:CHILD]-(:Children)-[:CHILD]->(sibs:Person) return sibs
// find parents query
match (:Person {alias: "Scott"})<-[:CHILD]-(:Children)<-[:PARENT]-(parent:Person) return parent

// find grandparents query
match (:Person {alias: "Scott"})<-[:CHILD]-(:Children)<-[:PARENT]-(:Person)<-[:CHILD]-(:Children)<-[:PARENT]-(gParent:Person) return gParent

// find all inlaws
// this one returns inlaw siblings on your own side
match (:Person {alias: "Scott"})<-[:CHILD]-(:Children)-[:CHILD]->(:Person)-[:MARRIED]-(inLaw:Person) return inLaw
// inlaws on the other side?
match (:Person {alias: "Scott"})-[:MARRIED]-(:Person)<-[:CHILD]-(:Children)-[:CHILD]->(:Person)-[:MARRIED]-(inLaw:Person) return inLaw
// parent in laws?

// first cousins
MATCH (:Person {alias: "DuckBat"})<-[:CHILD]-(:Children)<-[:PARENT]-(:Person)<-[:CHILD]-(:Children)-[:CHILD]->(:Person)-[:PARENT]->(:Children)-[:CHILD]->(firstCousin:Person) return firstCousin