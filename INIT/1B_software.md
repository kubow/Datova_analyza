## Programy pro práci s datovými soubory

[←](../Readme.md)

Níže jsou popsány základní typy datasetů a nástroje, které s nimi umí pracovat

Pořadí nástrojů je seřazeno dle abecedy, preference je ponechána čistě na uživateli.

Univerzální nástroje k práci s daty

-   Textové a tabulkové procesory 
-   Programovací jazyky <details>
    <summary>
         (detaily)
    </summary>
    (Srovnání oblíbenosti programovacích jazyků z roku 2020 [zdroj stackoverflow.com])[https://insights.stackoverflow.com/survey/2020#technology-most-loved-dreaded-and-wanted-languages]
</details>  

	-   Python (Pandas, SciPy, ...)
	-   R
    -   PAW/ROOT<sup>1</sup>
	-   Julia

-   Databázový software

	-   XML
	-   MySQL, PostgreSQL, MongoDB
	-   Oracle, SAP, Teradata

-   Analytický/Visualizační software

	-   MS PowerBI
    -   Orange
	-   Tableau
	-   Qlik



### Textové procesory (formáty txt, csv, tsv, out, ...) 

Do této kategorie lze zanést i strukturované soubory typů JSON, XML. Je třeba však mít na paměti, že uvedné podléhají kontrolám struktury, úpravy se tedy doporučuje provádět za kotroly validátoru. 

[Notepad++ (notepad-plus-plus.org)](https://notepad-plus-plus.org/)

[PSPad - free unicode vývojářský textový editor](http://www.pspad.com/cz/download.php)

[Visual Studio Code - Code Editing. Redefined](https://code.visualstudio.com/)

### Tabulkové procesory (formáty xls, xlsx, odf, ...)

[Apache OpenOffice Calc](http://www.openoffice.org/product/calc.html)

[FreeOffice for Windows, Mac and Linux](https://www.freeoffice.com/en/)

[Google Tabulky – zdarma vytvářejte a upravujte tabulky online.](https://www.google.co.uk/sheets/about/)

[LibreOffice Calc - Based on OpenOffice](https://www.libreoffice.org/discover/calc/)

[Microsoft Excel Spreadsheet Software](https://www.microsoft.com/en-us/microsoft-365/excel)

[Polaris Office Free Office Suite](https://www.polarisoffice.com/en/office)

[Zoho Sheet | Online Spreadsheet Software](https://www.zoho.com/sheet/?src=zoho-home&ireft=ohome)


<!-- #region -->
### Databáze

#### SQLite (formáty db, sqlite, ...) 

[DB Browser for SQLite (sqlitebrowser.org)](https://sqlitebrowser.org/)


#### Univerzální prohlížeče

[Beekeeper](https://www.beekeeperstudio.io/) - Jednoduchý a bezpečný prohlížečIt is mature and secure enough (electron-based) and platform independent (you did not specify win/linux/mac) however it is missing visual interface for building queries.

[Dbeaver](https://dbeaver.io/) - my personal favorite, very broad support of drivers (which can be easily updated), actively maintained and easy to use.

[Execute query](http://executequery.org/index.php) - pretty much the same as squirrel, but not that often updated (recently got an update to jre 1.8).

[Squirrel SQL](http://www.squirrelsql.org/) - small footprint, universal (both source and os), actively developed java tool. Visual interface is very basic and not intuitive (like in Access).

Prohlížení velkého množství databází v jazyce python umožňuje knihovna SQLAlchemy, viz 
<!-- #endregion -->

--------
Poznámky:

<sup>1</sup> - jedná se o FORTRAN/C++ frameworky pro analýzu dat, které vznikly v [CERN](https://en.wikipedia.org/wiki/CERN)u.

<sup>2</sup> -
