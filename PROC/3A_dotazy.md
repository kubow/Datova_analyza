<!-- #region -->
## Získávání dat

[←](../Readme.md)

Celé aktivitě kolem získávání a zpracování dat odpovídá proces "zpravodajský cyklus"[^int_cyc]. 

V tomto kurzu tvoří níže uvedený proces základní rozvržení pracovního prostředí.

![zpracovani dat](https://upload.wikimedia.org/wikipedia/commons/e/ee/Relationship_of_data%2C_information_and_intelligence.png)

Surová (nezpracovaná) data jsou tedy striktně oddělena od dat zpracovaných, které se na výše uvedeném obrázku označují jako informace. V pracovním prostředí se s tímto oddělením lze setkat pod pojmem "vrstvy úložiště", případně "databázové vrstvy". 

V závislosti na zvolených typech úložných technologií (viz [sekce 2A Úložiště](../DATA/2A_Rozdeleni_zakladni.md)) se pak volí odpovídající nástroje pro analýzu (viz [sekce 2C Nástroje](../DATA/2A_Rozdeleni_zakladni.md)).

[![](https://mermaid.ink/img/pako:eNpVkE1qwzAQRq8itGohWeRn5UWhibMopRBIdlIWU2vsqJYlI8uBxPVhfICcQvRelR1Taq1G732MRtPQxAikEc0slGdyjLkm4bwu2Jt2aDW6E5nPX8jm6V1BJVOZQ4JEgHseg0v2ATZHJ3U2JkexYgeTSFBTumYxqJ_O3yd4M1y-ySVXvhO-0_5OhOmfgU_f3TCobRObytWl9h25lRYSc4G-7jPto8t26LJbsL0RpbFwmuAl29vw1a8pXf0bfyLWQWjIsEDtBkNntEBbgBRhW01POHXn4DmNQikwhVo5TrluQ7Quw2C4E9IZS6MUVIUzCrUzh6tO_sAjFUsI2y9G2v4Cz5-DPQ)](https://mermaid.live/edit/#pako:eNpVkE1qwzAQRq8itGohWeRn5UWhibMopRBIdlIWU2vsqJYlI8uBxPVhfICcQvRelR1Taq1G732MRtPQxAikEc0slGdyjLkm4bwu2Jt2aDW6E5nPX8jm6V1BJVOZQ4JEgHseg0v2ATZHJ3U2JkexYgeTSFBTumYxqJ_O3yd4M1y-ySVXvhO-0_5OhOmfgU_f3TCobRObytWl9h25lRYSc4G-7jPto8t26LJbsL0RpbFwmuAl29vw1a8pXf0bfyLWQWjIsEDtBkNntEBbgBRhW01POHXn4DmNQikwhVo5TrluQ7Quw2C4E9IZS6MUVIUzCrUzh6tO_sAjFUsI2y9G2v4Cz5-DPQ)

### Největší výzvy v oblasti získávání dat

| Výzva    | Co řeší  | Příklad
|---| --- | ---
| Získání obrovského množství dat  | Metody sběru dat | Zvolíme souborový úložný systém nebo použijeme databázi?
| Spojování různorodých zdrojů    | principy datové integrace[^dta_int] | Budeme držet data v oddělené tabulce nebo připojíme k stávajícím záznamům?
| Udržení konzistentního prostředí | umožněno díky datovému modelování[^dta_model] pomocí standartizované sady znaků a symbolů | Známe strukturu nového zdroje? Jak jej napojíme do systému?
| Optimální zpracování dat na informace | nasazení datových skladů | Jak často agregovat data? Ukládat s časovýma značkama?
| Získání odpovědí na naše otázky | volba vhodného analytického nástroje  |


### Metody sběru dat

Při získávání dat používáme jeden z následujících postupů:

- pomocí dotazovacích jazyků[^qry_lang]
    - pro strukturovaná data ([SQL](3A_dotazy_SQL.md), MDX a další)
    - pro částečně strukturovaná data ([XQuery](3A_dotazy_xquery.md)) 
- pomocí programovacích jazyků ([Python](3A_dotazy_python.md), [R](3A_dotazy_r.md), ...) 
- pomocí analytických nástrojů (Microsoft Power BI, Metabase, ...)
- pomocí dalších jazyků sloužící k získání specifických typů dat (GraphQL, Cypher, ...)


Při spojování více datových souborů se dostáváme do situací, kdy je třeba provádět více krokové přípravy, ty jsou uvedeny v následující sekci [aktivity nad daty](3B_aktivity.md).  


<!-- #endregion -->

--------
Poznámky:

[^int_cyc]: anglicky Intelligence cycle (detaily na [wikipedii](https://en.wikipedia.org/wiki/Intelligence_cycle)) nebo v české studii: [Zeman, Pavel (2010). Zpravodajský cyklus](https://www.obranaastrategie.cz/cs/archiv/rocnik-2010/1-2010/clanky/zpravodajsky-cyklus-klise-nebo-nosny-koncept.html))

[^dta_model]: anglicky Data Modelling (zkratka DM) více informací na [https://en.wikipedia.org/wiki/Data_modeling](https://en.wikipedia.org/wiki/Data_modeling)

[^dta_int]: anglicky Data Integration (zkratka DI) více informací na [https://en.wikipedia.org/wiki/Data_integration](https://en.wikipedia.org/wiki/Data_integration)

[^qry_lang]: kompletnější výčet jazyků na dotazování se lze dočíst na [https://en.wikipedia.org/wiki/Query_language](https://en.wikipedia.org/wiki/Query_language).


