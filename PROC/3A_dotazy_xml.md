## Získání dat pomocí jazyka XML

[←](3A_dotazy.md)

...

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


<sup>1</sup> - přehled verzí  [?](https://www._.org/).

<sup>2</sup> -
<!-- #endregion -->
