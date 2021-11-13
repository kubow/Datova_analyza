# Dotazování na data

[←](../Readme.md)

Prvním krokem datové analýzy obecně je shromáždění relevantních informací (v tomto případě datových souborů) na jendno místo. V této kapitole jsou popsány způsoby získávání dat, které užívají pojmy předchozí kapitoly ([rozdeleni_dat_zakladni](../DATA/2A_rozdeleni_zakladni.md)).

Pro jednodušší datové soubory uložené v základních formátech (TXT, CSV, XLS, ...) můžeme k jejich prohlížení a úpravě použít programy určené pro práci s těmito formáty (uvedeno v sekci [inicializace/software](../INIT/1B_software.md)). 

U složitějších datových setů (více než 1 tabulka/zdroj) používáme k dotazování jednu z následujících metod<sup>1</sup>:

- pomocí SQL (pro strukturovaná data) [3ASQL](3A_dotazy_SQL.md) 
- pomocí jazyků XPath/XQuery (pro data typu XML)
- pomocí jazyků JAQL/JSONiq (pro data typu JSON) [3APRG](3A_dotazy_prg.md) 
- pomocí programovacích jazyků (Python, R, ...) [3APRG](3A_dotazy_prg.md) 
- pomocí analytických nástrojů (Microsoft Power BI, Metabase, ...)
- pomocí dalších jazyků sloužící k získání specifických typů dat (GraphQL, Cypher, ...)

Při spojování více datových setů se dostáváme do situací, kdy musíme brát v úvahu různé vtahy mezi spojovanými daty. Za tím účelem vznikl soubor metod, který by šel zjednodušeně popsat jako integrace dat. 

V prvé řadě musíme brát v úvahu vztahy mezi jednotlivými záznamy v souborech. Na základní úrovni je potřeba definovat, jaká část dat je v popředí zájmu (definice požadavků na data) a jaké operace chceme nad daty provádět.

- rozdíl
- průnik
- sjednocení

V dalším kroku pak přistupujeme k vlastníu sběru dat, tedy popisu jednotlivých zdrojů.


--------
Poznámky:

<sup>1</sup> - kompletnější výčet jazyků na dotazování se lze dočíst na [wikipedii](https://en.wikipedia.org/wiki/Query_language).

<sup>2</sup> -
