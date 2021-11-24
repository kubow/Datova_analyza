## Získání dat typu JSON

[←](3A_dotazy.md)

JSON (zkratka pro Java Script Object Notation) je způsob zápisu dat do částečně strukturovaného textového formátu (proti XML zápisu se hodí spíše na data, XML pak na dokumenty). Výhodou je, že tento formát poskytuje základní kontrolu nad datovými typy:

| Datový typ | Popis       | Příklad |
|-----------| --------------------- | ----------|
| array      | Pole hodnot            | `{"znacky":["Skoda", "Jawa", "Tatra"]}` |
| boolean    | Logická hodnota          | `{"platne":true}`  |
| number    | Reálné číslo | `{"age":50}`    |
| object    | Zanořený JSON objekt  | `{...}`  |
| string | Textový řetězec           |`{"name":"Franta"}`|

Mimo tyto hodnoty je uznávána také hodnota `null`.

Příklad zápisu JSON objektu:
`"obcan":{"name":"Franta", "age":50, "city":"Novakov"}`

Jazyky, které umožňují dotazy na notaci zapsanou v tomto zápise:

- JAQL (JSON Query Language): běží v HADOOP, vyvinuto IBM
https://isabel-drost.de/hadoop/slides/hadoop-ug-jaql.pdf

- JSONiq

| Příkaz    | Popis       | 
|-----------| --------------------- | 
| `read(hdfs("tabulka"))`      | načtení tabulky uložené na struktuře HADOOP           | 






<!-- #region -->
--------
Poznámky:


<sup>1</sup> - přehled verzí  [?](https://www._.org/).

<sup>2</sup> -
<!-- #endregion -->
