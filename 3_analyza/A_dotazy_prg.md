## Získání dat pomocí jazyka Python

Programovací jazyk Python je navržen jako víceúčelový, neslouží tedy jen k analýzám dat. Poprvé byl vydán v roce 1991 a od té doby bylo vydáno několik verzí, v současné době se drží vývojová řada označena jako Python 3<sup>1</sup>. Díky jeho univerzálnosti vyšla celá řada rozšíření a nádstaveb, pro účely datové analýzy nás však bude zajímat jen základní verze Python 3 s několika doinstalovanými moduly pro práci s daty.

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



<!-- #region -->
--------
Poznámky:


<sup>1</sup> - přehled verzí Python je k dispozici na [python.org](https://www.python.org/downloads/).

<sup>2</sup> -
<!-- #endregion -->
