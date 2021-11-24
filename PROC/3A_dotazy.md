<!-- #region -->
## Dotazování na data

[←](../Readme.md)

Pro jednodušší soubory dat uložené v základních formátech (TXT, CSV, XLS, ... viz sekce [rozdělení dat](../DATA/2A_rozdeleni_zakladni.md)) můžeme k jejich prohlížení a úpravě použít programy určené pro práci s těmito formáty (uvedeno v sekci [software](../INIT/1B_software.md)). 

U složitějších datových setů (více než 1 tabulka/zdroj) používáme k dotazování jednu z následujících metod<sup>1</sup>:

- pomocí SQL (pro strukturovaná data) [3ASQL](3A_dotazy_SQL.md) 
- pomocí jazyků XPath/XQuery (pro data typu [XML](3A_dotazy_xml.md)) 
- pomocí jazyků JAQL/JSONiq (pro data typu [JSON](3A_dotazy_json.md)) 
- pomocí programovacích jazyků ([Python](3A_dotazy_python.md), [R](3A_dotazy_r.md), ...) 
- pomocí analytických nástrojů (Microsoft Power BI, Metabase, ...)
- pomocí dalších jazyků sloužící k získání specifických typů dat (GraphQL, Cypher, ...)

Nejprve se blíže podíváme na strukturu dat a jejich možnosti propojení. Uvedenou problematikou se do detailu zabývá datové modelování<sup>2</sup>. Pro účely kurzu se spokojíme se zjednodušeným přístupem
ke vztahům mezi jednotlivými záznamy v souborech. Na základní úrovni je potřeba definovat následující pojmy:

- **tabulka (table)** - odpovídá jednomu pozorovanému datovému souboru, zde rozlišujeme:
    - **pole (field)** - sloupec v tabulce
    - **záhlaví (header)** - seřazený seznam názvů polí tabulky
    - **záznam (row)** - seřazený seznam hodnot polí pro konkrétní řádek
- **datový typ (data type)** - definice, jakých může pole nabývat hodnot, obecně:
    - textový řetězec
    - numerická reprezentace
    - boolean (logická hodnota ano/ne)
    - BLOB/CLOB (pole nesoucí binární typ informací)
- **vazba (relation)** - druh vztahu mezi dvěma tabulkami
    - 1:1 (každý záznam v tabulce T1 odpovídá záznamu v tabulce T2)
    - 1:N (jeden záznam v tabulce T1 má N odpovídajících záznamů v tabulce T2)
    - M:N (existuje víc záznamů z tabulky T1, které odpovídají více záznamm z tabulky T2)


Při spojování více datových souborů se dostáváme do situací, kdy je třeba provádět více krokové přípravy, ty jsou uvedeny v následující sekci [aktivity nad daty](3B_aktivity.md).  


<!-- #endregion -->

--------
Poznámky:

<sup>1</sup> - kompletnější výčet jazyků na dotazování se lze dočíst na [wikipedii](https://en.wikipedia.org/wiki/Query_language) pod heslem "Query Language".

<sup>2</sup> - datové modelování detailněji popsáno na [wikipedii](https://en.wikipedia.org/wiki/Data_modeling) pod heslem "Data Modelling".
