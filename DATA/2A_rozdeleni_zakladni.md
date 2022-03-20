<!-- #region -->
## Základní rozdělení dat

[←](../Readme.md)  

### Data kolem nás


| typy datových souborů | příklady oblastí aplikací | reprezentace/příbuzné pojmy |
|-----------| --------------------- | ----------|
| Pohyby hodnot | Finanční data | stock, burza |
| Časové řady    | Meteorologické | timestamp, sensory,  |
| Grafická data | Vědecké | graph, chart, svg, vector, image, raster, bitmap, diagram, flowchart |
| Mapová data    | Geografické obory | geo, gis, spatial, shape, geodatabase |
| Audiovizuální záznamy   | Kulturní výzkum | sound,  |
| Data sociálních sítí | Transportní | social,  |

Pokud se budeme zabývat jednou proměnnou, její hodnota lze zařadit do jedné z následujících kategorií.

[![](https://mermaid.ink/img/pako:eNp1kb9uwjAQxl_F8tRKpFIMUwYkaDpUlWglujkMVmyIG_-JzAWJAk_C1JGBR-gUHqwGkqZpVQ-2T9_Pd9-dNzi1XOAILxwrMvQaJwb5dd1H4Q119p2f9kqY6oi4EgjWRYkKZ_Vpb0z1mWazWxQEw22-YgYkMJArj27ROKRPDMTCOpnm1WHWZGxg9ZMldFJq0SHHBAV3wdCffRrLZe6qA3j4jzqg08K-Sbg8rIuQzW_Xujq6dcf27mwE3Yd0YrU01Ydqk4_IVSP02fF_tD59NCCc78Ou2u5qcUBfzoXct6NxWFfrhqRt5pKzGw5wD_uhaCa5_5_NWUwwZEKLBEf-ysWclQoSnJidR8uC-3k_cAnW4WjO1FL0MCvBTtcmxRG4UjRQLJn_bl1Tuy-E0q9W)](https://mermaid.live/edit#pako:eNp1kb9uwjAQxl_F8tRKpFIMUwYkaDpUlWglujkMVmyIG_-JzAWJAk_C1JGBR-gUHqwGkqZpVQ-2T9_Pd9-dNzi1XOAILxwrMvQaJwb5dd1H4Q119p2f9kqY6oi4EgjWRYkKZ_Vpb0z1mWazWxQEw22-YgYkMJArj27ROKRPDMTCOpnm1WHWZGxg9ZMldFJq0SHHBAV3wdCffRrLZe6qA3j4jzqg08K-Sbg8rIuQzW_Xujq6dcf27mwE3Yd0YrU01Ydqk4_IVSP02fF_tD59NCCc78Ou2u5qcUBfzoXct6NxWFfrhqRt5pKzGw5wD_uhaCa5_5_NWUwwZEKLBEf-ysWclQoSnJidR8uC-3k_cAnW4WjO1FL0MCvBTtcmxRG4UjRQLJn_bl1Tuy-E0q9W)

### Kategorické typy proměnných

| Škála | Měří | Matematické operátory | Dostupné operace | Střední hodnota |
|-----------| --------------------- | ----------|----------|----------|
| Nominální[^typ_nominal] | Klasifikace, členství | `=, ≠` | Seskupování | Modus |
| Pořadová (ordinální)[^typ_ordinal] | Srovnání, úroveň | `>, <` |  Seřazení | Medián a jiné kvantily |


### Numerické typy proměnných

| Škála | Měří | Matematické operátory | Dostupné operace | Střední hodnota |
|-----------| --------------------- | ----------|----------|----------|
| Intervalová[^typ_interval] | Rozdíl, afinita | `+, -` | Odstup od jiné hodnoty | Aritmetický průměr a směrodatná odchylka | 
| Poměrová[^typ_compl] | Velikost, množství | `×, /` | Poměr hodnot | Geometrický průměr, variační koeficient | 


#### Spojitá data vs. diskrétní data


https://cs.wikipedia.org/wiki/Spojit%C3%A9_zobrazen%C3%AD

https://cs.wikipedia.org/wiki/Rozd%C4%9Blen%C3%AD_pravd%C4%9Bpodobnosti#Rozd%C4%9Blen%C3%AD_pravd%C4%9Bpodobnosti_diskr%C3%A9tn%C3%AD_n%C3%A1hodn%C3%A9_veli%C4%8Diny


<!-- #endregion -->

### Tabulkové zobrazení dat

-   jedné (Univarite)
-   dvou (Bivariate)
-   více proměnných (Multivariate)


### Zajímavé odkazy

[Apache Arrow vs. parquet](http://dbmsmusings.blogspot.com/2017/10/apache-arrow-vs-parquet-and-orc-do-we.html)


Poznámky:

[^typ_nominal]: Nominální úroveň měření, detaily na [české wikipedi](https://cs.wikipedia.org/wiki/Typy_prom%C4%9Bnn%C3%BDch#Nomin%C3%A1ln%C3%AD_%C3%BArove%C5%88_m%C4%9B%C5%99en%C3%AD) nebo [anglicky](https://en.wikipedia.org/wiki/Level_of_measurement#Nominal_level).

[^typ_ordinal]: Pořadové škály, detaily na [české wikipedi](https://cs.wikipedia.org/wiki/Typy_prom%C4%9Bnn%C3%BDch#Po%C5%99adov%C3%A9_%C5%A1k%C3%A1ly) nebo [anglicky](https://en.wikipedia.org/wiki/Ordinal_data).

[^typ_interval]: Intervalové škály, detaily na [české wikipedi](https://cs.wikipedia.org/wiki/Typy_prom%C4%9Bnn%C3%BDch#Intervalov%C3%A9_%C5%A1k%C3%A1ly) nebo [anglicky](https://en.wikipedia.org/wiki/Ordinal_data).

[^typ_compl]: Poměrové škály, detaily na [české wikipedi](https://cs.wikipedia.org/wiki/Typy_prom%C4%9Bnn%C3%BDch#Pom%C4%9Brov%C3%A9_%C5%A1k%C3%A1ly) nebo [anglicky](https://en.wikipedia.org/wiki/Ordinal_data).

