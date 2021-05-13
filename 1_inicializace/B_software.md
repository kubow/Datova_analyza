## prohlížení datových setů ###

Níže jsou popsány základní typy datasetů a nástroje, které s nimi umí pracovat

###  TXT - CSV - TSV ###

[PSPad - free unicode vývojářský textový editor](http://www.pspad.com/cz/download.php)

[Notepad++ (notepad-plus-plus.org)](https://notepad-plus-plus.org/)

[Visual Studio Code - Code Editing. Redefined](https://code.visualstudio.com/)

Prohlížení dat pomocí programovacího jazyka python:

```python
 # nainstalovat knohvnu pandas (pip install pandas)
 >>> import pandas as pd  # knihovna pandas umí mimo jiné číst xls soubory
 >>> csv_data = pd.read_csv("file.csv")    # dynamic variable loading
 >>> fixed_data = pd.read_fwf("2_zdrojova_data/engines.csv")  # case fixed width table
 >>> txt_data = []
 >>> with open('file.txt') as f:
 >>>     txt_data = f.readlines()
 ```
 



###  XLS - XLSX - ODF ###

[Microsoft Excel Spreadsheet Software](https://www.microsoft.com/en-us/microsoft-365/excel)

[Tabulky Google – zdarma vytvářejte a upravujte tabulky online.](https://www.google.co.uk/sheets/about/)

[Calc | LibreOffice - Based on OpenOffice](https://www.libreoffice.org/discover/calc/)

[Apache OpenOffice Calc](http://www.openoffice.org/product/calc.html)

[Online Spreadsheet Software | Zoho Sheet](https://www.zoho.com/sheet/?src=zoho-home&ireft=ohome)

[Most Compatible, Light & Free Office Suite - Polaris Office](https://www.polarisoffice.com/en/office)

[www.freeoffice.com - FreeOffice for Windows, Mac and Linux](https://www.freeoffice.com/en/)

Otevření dat pomocí programovacího jazyka python:

```python
 # nainstalovat knohvnu pandas (pip install pandas)
 # spustit apliakci python
 import pandas as pd  # knihovna pandas umí mimo jiné číst xls soubory
 data = pd.read_excel("2_zdrojova_data/engines.xls")
 ```
 
 

```python
 # nainstalovat knohvnu openpyxl / xlrd (pip install openpyxl)  
 # spustit apliakci python
 import openpyxl  # knihovna openpyxl umí číst xlsx soubory
 data = openpyxl.load_workbook("2_zdrojova_data/engines.xls") 
 sheet = data.active  # read active sheet
 ```



### SQLite (.db, .sqlite, ...) ###

[DB Browser for SQLite (sqlitebrowser.org)](https://sqlitebrowser.org/)


### Univerzální ###

