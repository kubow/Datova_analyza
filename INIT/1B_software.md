<!-- #region -->
# programy pro práci s datovými soubory

[←](../Readme.md)

Níže jsou popsány základní typy datasetů a nástroje, které s nimi umí pracovat

Pořadí nástrojů je seřazeno dle abecedy, preference je ponechána čistě na uživateli.

Univerzální nástroje k práci s daty

-   Programovací jazyky

	-   Python
	-   R
	-   JavaScript

-   Tabulkové procesory
-   Databázový software

	-   XML
	-   MySQL, PostgreSQL, MongoDB
	-   Oracle, SAP, Teradata

-   Visualizační software

	-   MS PowerBI
	-   Tableau
	-   Qlik


## Textové soubory (formáty txt, csv, tsv, out, ...) 

[Notepad++ (notepad-plus-plus.org)](https://notepad-plus-plus.org/)

[PSPad - free unicode vývojářský textový editor](http://www.pspad.com/cz/download.php)

[Visual Studio Code - Code Editing. Redefined](https://code.visualstudio.com/)

Prohlížení dat pomocí programovacího jazyka python:
<!-- #endregion -->

## Strukturované soubory (formáty xml, json)

Software se většinou používá identický jako při práci s textovými soubory.

Prohlížení dat pomocí programovacího jazyka python:

```python
import json
with open("../DATA/engine_overview_202105140003.json", encoding='utf-8') as j:
    obsah = json.loads(j.read())

print(list(obsah['engine_overview'])[0:3])
```

## Tabulkové soubory (formáty xls, xlsx, odf, ...)

[Apache OpenOffice Calc](http://www.openoffice.org/product/calc.html)

[FreeOffice for Windows, Mac and Linux](https://www.freeoffice.com/en/)

[Google Tabulky – zdarma vytvářejte a upravujte tabulky online.](https://www.google.co.uk/sheets/about/)

[LibreOffice Calc - Based on OpenOffice](https://www.libreoffice.org/discover/calc/)

[Microsoft Excel Spreadsheet Software](https://www.microsoft.com/en-us/microsoft-365/excel)

[Polaris Office Free Office Suite](https://www.polarisoffice.com/en/office)

[Zoho Sheet | Online Spreadsheet Software](https://www.zoho.com/sheet/?src=zoho-home&ireft=ohome)

Prohlížení tabulkových dat pomocí programovacího jazyka python: 

```python
import pandas as pd  # knihovna pandas umí mimo jiné číst xls soubory
import openpyxl  # knihovna openpyxl umí číst xlsx soubory
xls = pd.read_excel("../2_zdrojova_data/A_uloziste/engine_overview_202105140001.xls")
print(f'{"*"*3} XLS soubor nacteny pomoci pandas:\n {xls.describe()}')
xlsx = openpyxl.load_workbook("../2_zdrojova_data/A_uloziste/engine_overview_202105140001.xlsx") 
sheet = xlsx.active  # read active sheet
print("*"*3, 'XLSX soubor nacteny pomoci openpyxl:', sheet)

```

<!-- #region -->
## Databáze

### SQLite (formáty db, sqlite, ...) 

[DB Browser for SQLite (sqlitebrowser.org)](https://sqlitebrowser.org/)


### Univerzální prohlížeče

[Beekeeper](https://www.beekeeperstudio.io/) - Jednoduchý a bezpečný prohlížečIt is mature and secure enough (electron-based) and platform independent (you did not specify win/linux/mac) however it is missing visual interface for building queries.

[Dbeaver](https://dbeaver.io/) - my personal favorite, very broad support of drivers (which can be easily updated), actively maintained and easy to use.

[Execute query](http://executequery.org/index.php) - pretty much the same as squirrel, but not that often updated (recently got an update to jre 1.8).

[Squirrel SQL](http://www.squirrelsql.org/) - small footprint, universal (both source and os), actively developed java tool. Visual interface is very basic and not intuitive (like in Access).

Prohlížení velkého množství databází v jazyce python umožňuje knihovna SQLAlchemy, viz 
<!-- #endregion -->

```python

```
