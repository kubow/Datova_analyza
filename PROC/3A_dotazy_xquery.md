## Získání dat pomocí jazyka XQuery

[←](3A_dotazy.md)

...

XQuery (a obecně dokumenty definované na základě XDM[^xqry_xdm]) slouží k získávání dat uložeených ve formátu XML:

| Příkaz    | Popis       | 
|-----------| --------------------- | 
| `setwd(cesta)`      | změna cesty pracovního adresáře             | 
| `getwd()`    | zobrazení cesty pracovního adresáře            |
| `file.path(slozka1, ..., slozka n)`     | složení cesty           |
| `list.files(cesta, include.dirs=TRUE)`      | výpis souborů a složek v pracovním adresáři | 
| `file_test('-f', cesta) / file_test('-f', cesta)`    | zjištění zda je cesta soubor / adresář |
| `read.csv(cesta_souboru) / write.csv(df, cesta_souboru)`     | čtení / zápis csv souboru |






<!-- #region -->
--------
Poznámky:


[^xqry_xdm]: XDM je zkratka pro společný datový model pro jazyky XQuery, XPath, XSLT a XForms, více informací na [https://en.wikipedia.org/wiki/XQuery_and_XPath_Data_Model](https://en.wikipedia.org/wiki/XQuery_and_XPath_Data_Model).






<!-- #endregion -->
