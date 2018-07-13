create (scott:Person 
    {name: "William Scott Sheppard", 
    gender: "male", 
    alias: "Scott"}),
(paige:Person 
    {name: "Paige Valentine Sheppard", 
    gender: "female", 
    alias: "Paige", 
    maidenName: "Jensen"}),
(duckbat:Person
    {name: "Unknown",
    gender: "Unknown",
    alias: "DuckBat"}
),
(mom:Person
    {name: "Debra Sue Sheppard",
    gender: "female",
    alias: "Debbie",
    maidenName: "Savage"}
),
(dad:Person
    {name: "Charles Hughes Sheppard",
    gender: "male",
    alias: "Charlie"}
),
(chris:Person
    {name: "Christian Charles Sheppard",
    gender: "male",
    alias: "Christian"}
),
(sam:Person
    {name: "Samuel David Sheppard",
    gender: "male",
    alias: "Sam"}
),
(john:Person
    {name: "John Allen Sheppard",
    gender: "male",
    alias: "John"}
),
(joe:Person
    {name: "Joseph Michael Sheppard",
    gender: "male",
    alias: "Joe"}
),
(maren:Person
    {name: "Maren Camille Cox",
    gender: "female",
    alias: "Maren",
    maidenName: "Sheppard"}
),
(notto:Person
    {name: "Notto Lee Jensen",
    gender: "male",
    alias: "Notto"}
),
(krista:Person
    {name: "Krista Kay Jensen",
    gender: "female",
    alias: "Krista",
    maidenName: "Killian"}
),
(renn:Person
    {name: "Renn Michael Jensen",
    gender: "male",
    alias: "Renn"}
),
(harrison:Person
    {name: "Harrison West Jensen",
    gender: "male",
    alias: "Harrison"}
),
(talia:Person
    {name: "Talia Kate Jensen",
    gender: "female",
    alias: "Talia"}
),
(bridget:Person
    {name: "Bridget Jensen",
    gender: "female",
    alias: "Bridget"}
),
(jill:Person
    {name: "Jill Jensen",
    gender: "female",
    alias: "Jill",
    maidenName: "UNKNOWN"}
),
(sherrie:Person
    {name: "Sherrie",
    gender: "female",
    alias: "Sherrie"}
),
(abby:Person
    {name: "Abby",
    gender: "female",
    alias: "Abby",
    maidenName: "unknown"}
),
(marshall:Person
    {name: "Marshall",
    gender: "male",
    alias: "Marshall"}
),
(ally:Person
    {name: "Ally Jensen",
    gender: "female",
    alias: "Ally",
    maidenName: "unknown"}
),
(cash:Person
    {name: "Cash Jensen",
    gender: "male",
    alias: "Cash"}
),
(knox:Person
    {name: "Knox Lee Jensen",
    gender: "male",
    alias: "Knox"}
),
(nicole:Person
    {name: "Nicole Jensen",
    gender: "female",
    alias: "Nicole",
    maidenName: "unknown"}
),
(jamie:Person
    {name: "James Jensen",
    gender: "male",
    alias: "Jamie"}
),
(charlotte:Person
    {name: "Charlotte Luna Jensen",
    gender: "female",
    alias: "Charlie"}
),
(tera:Person
    {name: "Tera Sheppard",
    gender: "female",
    alias: "Tera",
    maidenName: "unknown"}
),
(bennett:Person
    {name: "Bennett Sheppard",
    gender: "male",
    alias: "Bennett"}
),
(emma:Person
    {name: "Emma Sheppard",
    gender: "female",
    alias: "Emma"}
),
(cooper:Person
    {name: "Cooper Sheppard",
    gender: "male",
    alias: "Cooper"}
),
(collette:Person
    {name: "Collette Sheppard",
    gender: "female",
    alias: "Coco"}
),
(tiffanyg:Person
    {name: "Tiffany Marie Gampe",
    gender: "female",
    alias: "Tiffany"}
),
(gavin:Person
    {name: "Gavin Sheppard",
    gender: "male",
    alias: "Gavin"}
),
(renee:Person
    {name: "Renee Sheppard",
    gender: "female",
    alias: "Renee"}
),
(carter:Person
    {name: "Carter William Sheppard",
    gender: "male",
    alias: "Carter"}
),
(cathie:Person
    {name: "Cathie Harris",
    gender: "female",
    alias: "Cathie",
    maidenName: "Savage"}
),
(dennis:Person
    {name: "Dennis Savage",
    gender: "male",
    alias: "Dennis"}
),
(lil:Person
    {name: "Lillias Savage",
    gender: "female",
    alias: "Lil",
    maidenName: "Christiansen"}
),
(billsavage:Person
    {name: "William Savage",
    gender: "male",
    alias: "Bill"}
),
(billysheppard:Person
    {name: "Willard Raymond Sheppard",
    gender: "male",
    alias: "Billy"}
),
(demery:Person
    {name: "Demery Sheppard",
    gender: "male",
    alias: "Demery"}
),
(raymond:Person
    {name: "Raymond Sheppard",
    gender: "male",
    alias: "Raymond"}
),
(gSheppard:Person
    {name: "Grandma Sheppard",
    gender: "female",
    alias: "Grandma Sheppard",
    maidenName: "unknown"}
),
(cameron:Person
    {name: "Cameron Cox",
    gender: "male",
    alias: "Cameron"}
),
// scott's family
(scott)-[:MARRIED]->(paige),
(scottKids:Children {name: "Scott & Paige's Kids"}),
(scott)-[:PARENT]->(scottKids),
(paige)-[:PARENT]->(scottKids),
(duckbat)<-[:CHILD]-(scottKids),
// mom and dad's kids
(dad)-[:MARRIED]->(mom),
(dadsKids:Children {name: "Charlie & Debbie's Kids"}),
(dad)-[:PARENT]->(dadsKids),
(mom)-[:PARENT]->(dadsKids),
(chris)<-[:CHILD]-(dadsKids),
(sam)<-[:CHILD]-(dadsKids),
(john)<-[:CHILD]-(dadsKids),
(scott)<-[:CHILD]-(dadsKids),
(joe)<-[:CHILD]-(dadsKids),
(maren)<-[:CHILD]-(dadsKids),
// moms parents and family
(billsavage)-[:MARRIED]->(lil),
(billsavageKids:Children {name: "Bill & Lil's Kids"}),
(billsavage)-[:PARENT]->(billsavageKids),
(lil)-[:PARENT]->(billsavageKids),
(dennis)<-[:CHILD]-(billsavageKids),
(cathie)<-[:CHILD]-(billsavageKids),
(mom)<-[:CHILD]-(billsavageKids),
// dad's parents and family
(billysheppard)-[:MARRIED]->(gSheppard),
(billysheppardKids:Children {name: "Billy's Kids"}),
(billysheppard)-[:PARENT]->(billysheppardKids),
(gSheppard)-[:PARENT]->(billysheppardKids),
(dad)<-[:CHILD]-(billysheppardKids),
(raymond)<-[:CHILD]-(billysheppardKids),
(demery)<-[:CHILD]-(billysheppardKids),
// notto and krista's family
(nottosKids:Children {name: "Notto & Krista's Kids"}),
(notto)-[:PARENT]->(nottosKids),
(krista)-[:PARENT]->(nottosKids),
(renn)<-[:CHILD]-(nottosKids),
(paige)<-[:CHILD]-(nottosKids),
(harrison)<-[:CHILD]-(nottosKids),
(talia)<-[:CHILD]-(nottosKids),
(bridget)<-[:CHILD]-(nottosKids),
// renns family
(renn)-[:MARRIED]->(ally),
(rennsKids:Children {name: "Renn & Ally's Kids"}),
(renn)-[:PARENT]->(rennsKids),
(ally)-[:PARENT]->(rennsKids),
(cash)<-[:CHILD]-(rennsKids),
(knox)<-[:CHILD]-(rennsKids),
// harrisons family
(harrison)-[:MARRIED]->(nicole),
(harrysKids:Children {name: "Harrison & Nicole's Kids"}),
(harrison)-[:PARENT]->(harrysKids),
(nicole)-[:PARENT]->(harrysKids),
(jamie)<-[:CHILD]-(harrysKids),
(charlotte)<-[:CHILD]-(harrysKids),
// sams family
(samsKids:Children {name: "Sam & Tiffany's Kids"}),
(sam)-[:PARENT]->(samsKids),
(tiffanyg)-[:PARENT]->(samsKids),
(gavin)<-[:CHILD]-(samsKids),
(renee)<-[:CHILD]-(samsKids),
(carter)<-[:CHILD]-(samsKids),
// christian's family
(chris)-[:MARRIED]->(tera),
(chrisKids:Children {name: "Chris & Tera's Kids"}),
(chris)-[:PARENT]->(chrisKids),
(tera)-[:PARENT]->(chrisKids),
(bennett)<-[:CHILD]-(chrisKids),
(emma)<-[:CHILD]-(chrisKids),
(cooper)<-[:CHILD]-(chrisKids),
(collette)<-[:CHILD]-(chrisKids),
// maren's family
(cameron)-[:MARRIED]->(maren),
// notto and jill
(notto)-[:MARRIED]->(jill),
// krista and sherrie
(krista)-[:MARRIED]->(sherrie),
// sherries kids
(sherriesKids:Children {name: "Sherrie's Kids"}),
(sherrie)-[:PARENT]->(sherriesKids),
(abby)<-[:CHILD]-(sherriesKids),
// jills kids
(jillsKids:Children {name: "Jill's Kids"}),
(jill)-[:PARENT]->(jillsKids),
(marshall)<-[:CHILD]-(jillsKids)