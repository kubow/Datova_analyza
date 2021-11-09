# Dotazování na data

Prvním krokem datové analýzy obecně je shromáždění relevantních informací (v tomto případě datových souborů) na jendno místo. V této kapitole jsou popsány způsoby získávání dat, které užívají pojmy předchozí kapitoly

Pro jednodušší datové soubory uložené v základních formátech (TXT, CSV, XLS, ...) můžeme k jejich prohlížení a úpravám použít programy určené pro práci s těmito formáty (uvedeno v sekci [inicializace/software](../1_inicializace/B_software.ipynb)). 

U složitějších datových setů (více než 1 tabulka/zdroj) používáme k dotazování jednu z následujících metod<sup>1</sup>:

- dotazování pomocí jazyka SQL
- dotazování pomocí jazyků XQuery/XPath (pro data typu XML)
- dotazování pomocí jazyků JAQL/JSONiq (pro data typu JSON)
- dotazování pomocí programovacích jazyků (Python, R, ...)
- další jazyky sloužící k získání specifických typů dat

Typy operací složících ke spojování více datových setů částečně závisí na zvolení metody zpracování. V základním pojetí se však tato problematika kryje s matematickou definicí operací nad množinami:

- rozdíl
- průnik
- sjednocení

Níže jsou uvedeny konkrétní vybrané příklady získávání dat.

<!-- #region -->
## Získání dat pomocí SQL 

Jazyk SQL (Structured Query Language) se skládá z několika klíčových slov, které byly standartizovány na konci 80. let. 
Slouží k dotazování a změně strukturovaných dat uložených především v relačních databázových systémech (RDBMS). 
Pomocí SQL lze dokonce měnit strukturu dat i data samotná. SQL 


Obecná struktura výběrového dotazu je následující:

![vyber dat](../obr/SQL_SELECT_structure.svg)

Pro úpravu dat v jazyce SQL se používá následující struktura:

![uprava dat](../obr/SQL_UPDATE_structure.svg)
<!-- #endregion -->

## Získání dat pomocí jazyka Python

Programovací jazyk Python je navržen jako víceúčelový, neslouží tedy jen k analýzám dat. Poprvé byl vydán v roce 1991 a od té doby bylo vydáno několik verzí, v současné době se drží vývojová řada označena jako Python 3. Díky jeho univerzálnosti vyšla celá řada rozšíření a nádstaveb, pro účely datové analýzy nás však bude zajímat jen základní verze Python 3 s několika doinstalovanými moduly pro práci s daty.

| Příkaz    | Popis       | 
|-----------| --------------------- | 
| `os.chdir(cesta)`      | změna cesty pracovního adresáře             | 
| `os.gectwd()`    | zobrazení cesty pracovního adresáře            |
| `os.path.join(slozka1, ..., slozka n)`     | složení cesty           |
| `os.listdir(cesta)`      | výpis souborů a složek v pracovním adresáři | 
| `os.ath.isfile(cesta) / os.ath.isdir(cesta)`    | zjištění zda je cesta soubor / adresář |
| `pd.read_csv(cesta_souboru) / df.to_csv(cesta_souboru)`     | čtení / zápis csv souboru |

Jazyk Python pracuje s omezeným počtem datových typů:

| Datový typ | Popis       | Příklad |
|-----------| --------------------- | ----------|
| object      | Textový řetězec            | `'automobil'`|
| float64    | Reálné číslo             | `24.0`  |
| int64      | Celé číslo            | `24`|
| datetime64    | Datum (a čas)            | `'2022-01-01 12:01:00'`  |




## Získání dat pomocí jazyka R

Programovací jazyk R je defnován jako prostředí pro zpracování dat a jejich analýzu. První vydání tohoto jazyka je datováno do roku 1995, jeho kořeny však sahají až do 70. let. Tento jazyk klade velký důraz na kompatibilitu s matematickými definicemi, doporučuje se tedy pracovat s tímto jazykem až po zvládnutí matematického základu. Pro usnadnění práce s čistě textovým prostředím bylo vydáno několik grafických nádstaveb (příkladem nejrozšířenější R Studio). Také je potřeba zmínit, že funkcionalitu pro různé typy datových setů a například i grafické zobrazování dat zajišťují tzv. balíčky, které lze do prostředí doinstalovat (stejně jako R je většina vedena pod licencí open-source).

Při práci s datovými sety je tyto potřeba nejprve načíst do pracovního prostředí, k tomu slouží následující sada příkazů:

| Příkaz    | Popis       | 
|-----------| --------------------- | 
| `setwd(cesta)`      | změna cesty pracovního adresáře             | 
| `getwd()`    | zobrazení cesty pracovního adresáře            |
| `file.path(slozka1, ..., slozka n)`     | složení cesty           |
| `list.files(cesta, include.dirs=TRUE)`      | výpis souborů a složek v pracovním adresáři | 
| `file_test('-f', cesta) / file_test('-f', cesta)`    | zjištění zda je cesta soubor / adresář |
| `read.csv(cesta_souboru) / write.csv(df, cesta_souboru)`     | čtení / zápis csv souboru |

Jazyk R pracuje s omezeným počtem datových typů:

| Datový typ | Popis       | Příklad |
|-----------| --------------------- | ----------|
| character      | Textový řetězec            | `'automobil'`|
| factor    | Textový řetězec, který může být řazen | `'high'`    |
| numeric    | Reálné číslo             | `24.0`  |
| int      | Celé číslo            | `24`|
| Date    | Datum            |  `'2022-01-01'`    |
| POSIXct    | Datum a čas             | `'2022-01-01 12:01:00'`  |




--------
Poznámky:

    <sup>1</sup> - kompletnější výčet jazyků na dotazování se lze dočíst na [wikipedii](https://en.wikipedia.org/wiki/Query_language).

```python

```
