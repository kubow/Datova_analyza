<!-- #region -->
## Získávání dat

[←](../Readme.md)

Obecně si můžeme celý proces práce s daty představit zhruba následovně: 

![zpracovani dat](../obr/data_informace_znalosti.svg)

### Největší výzvy v oblasti získávání dat

| Výzva    | Co řeší  | Příklad
|---| --- | ---
| Zpracování obrovských množství dat      | metody sběru dat   | Zvolíme programovací jazyk nebo analytický nástroj?
| Spojování různorodých zdrojů    | principy datové integrace[^dta_int] | Budeme držet data v oddělené tabulce nebo připojíme k stávajícím záznamům?
| Udržení konzistentního prostředí | umožněno díky datovému modelování[^dta_model] pomocí standartizované sady znaků a symbolů | Známe strukturu nového zdroje? Jak jej napojíme do systému?
| Optimální zpracování dat na informace | nasazení datových skladů | Jak často agregovat data? Ukládat s časovýma značkama?
| Získání odpovědí na naše otázky |   |


### Metody sběru dat

Při získávání dat používáme jeden z následujících postupů[^qry_lang]:

- pomocí [SQL](3A_dotazy_SQL.md) (pro strukturovaná data) 
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

[^dta_model]: anglicky Data Modelling, zkratka DM ([detaily](https://en.wikipedia.org/wiki/Data_modeling))

[^dta_int]: anglicky Data Integration, zkratka DI ([detaily](https://en.wikipedia.org/wiki/Data_integration))

[^qry_lang]: kompletnější výčet jazyků na dotazování se lze dočíst na [wikipedii](https://en.wikipedia.org/wiki/Query_language) pod heslem "Query Language".


