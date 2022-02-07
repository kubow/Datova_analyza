<!-- #region -->
## Úložiště typu JSON

[←](2B_uloziste.md)

JSON (zkratka pro Java Script Object Notation)[^json] je způsob zápisu dat do částečně strukturovaného textového formátu (proti XML zápisu se hodí spíše na data, XML pak na dokumenty). Výhodou oproti XML je, že tento zápis je úspornější, rychlejší a jendodušší na čtení, navíc poskytuje základní kontrolu nad datovými typy:

| Datový typ | Popis       | Příklad |
|-----------| --------------------- | ----------|
| string | Textový řetězec           |`{"jmeno":"Franta"}`|
| number    | Reálné číslo | `{"vek":50}`    |
| array      | Pole hodnot            | `{"jmena":["Adam", "Jindra", "Tomáš"]}` |
| object    | Zanořený JSON objekt  | `{...}`  |

Mimo uvedené datové typy jsou uznávány tyto speciální hodnoty:

- `null`
- `true`
- `false`

Příklad zápisu JSON objektu:
`"obcan":{"jmeno":"Franta", "vek":50, "adresa":"Novakov", "aktivni_clen":false}`

Jazyky, které umožňují dotazy na notaci zapsanou v tomto zápise:

- JAQL (JSON Query Language): běží v HADOOP, vyvinuto IBM
https://isabel-drost.de/hadoop/slides/hadoop-ug-jaql.pdf
- JSONiq

Databázové systémy podporující JSON[^json_db]:

- MongoDB
- Couchbase
- CouchDB
- DocumentDB
- Marklogic
- OrientDB
- RethinkDB
- Riak
- BaseX
- Elasticsearch
- MySQL
- Oracle
- PostgreSQL


| Příkaz    | Popis       | 
|-----------| --------------------- | 
| `read(hdfs("tabulka"))`      | načtení tabulky uložené na struktuře HADOOP           | 





<!-- #endregion -->

<!-- #region -->
--------
Poznámky:


[^json]: Definice zápisu JSON k dispozici na [https://www.json.org/json-en.html](https://www.json.org/json-en.html)

[^json_db]: seznam databází k dispozici například na [https://www.quackit.com/json/tutorial/list_of_json_databases.cfm](https://www.quackit.com/json/tutorial/list_of_json_databases.cfm)
<!-- #endregion -->
