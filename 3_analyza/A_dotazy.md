# Dotazování na data

[←](../Readme.md)

Prvním krokem datové analýzy obecně je shromáždění relevantních informací (v tomto případě datových souborů) na jendno místo. V této kapitole jsou popsány způsoby získávání dat, které užívají pojmy předchozí kapitoly ([zdrojova_data/zozdeleni_zakladni](../2_zdrojova_data/A_rozdeleni_zakladni.ipynb)).

Pro jednodušší datové soubory uložené v základních formátech (TXT, CSV, XLS, ...) můžeme k jejich prohlížení a úpravě použít programy určené pro práci s těmito formáty (uvedeno v sekci [inicializace/software](../1_inicializace/B_software.md)). 

U složitějších datových setů (více než 1 tabulka/zdroj) používáme k dotazování jednu z následujících metod<sup>1</sup>:

- pomocí SQL (pro strukturovaná data) [3ASQL](A_dotazy_SQL.md) 
- pomocí jazyků XPath/XQuery (pro data typu XML)
- pomocí jazyků JAQL/JSONiq (pro data typu JSON)
- pomocí programovacích jazyků (Python, R, ...) [3APRG](A_dotazy_prg.md) 
- pomocí analytických nástrojů (Microsoft Power BI, Metabase, ...)
- pomocí dalších jazyků sloužící k získání specifických typů dat (GraphQL, Cypher, ...)

Typy operací sloužících ke spojování více datových setů částečně závisí na zvolení metody zpracování. V základním pojetí se však tato problematika kryje s matematickou definicí operací nad množinami:

- rozdíl
- průnik
- sjednocení

Níže jsou uvedeny konkrétní vybrané příklady získávání dat.


--------
Poznámky:

<sup>1</sup> - kompletnější výčet jazyků na dotazování se lze dočíst na [wikipedii](https://en.wikipedia.org/wiki/Query_language).

<sup>2</sup> -
