## Získání dat pomocí jazyka Python

[←](3A_dotazy.md)

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

Příklady prohlížení dat pomocí programovacího jazyka python:


```python
import json
import openpyxl  # knihovna openpyxl umí číst xlsx soubory
import pandas as pd  # knihovna pandas umí mimo jiné číst xls soubory (! ne xlsx)

print('1. JSON data (příklad seznam hlavních klíčů v souboru)')
with open("../DATA/engine_overview_202105140003.json", encoding='utf-8') as j:
    obsah = json.loads(j.read())
print(list(obsah['engine_overview'])[0:3])

print('\n2. CSV soubor (statistiky souboru pomocí knihovny pandas)')
csv_delimited = pd.read_csv("../DATA/engine_overview_202105140001.csv")    # dynamic variable loading
print(csv_delimited.describe())
# csv_fixed = pd.read_fwf("../DATA/engine_overview_202105140001.csv")  # case fixed width table
# print(csv_fixed)
print('\n3. CSV soubor (alternativní načtení všech řádků)')
txt_data = []
with open('../DATA/engine_overview_202105140001.csv') as f:
    txt_data = f.readlines()
print(f'file total length: {len(txt_data)}')

xls = pd.read_excel("../DATA/engine_overview_202105140001.xls")
print('\n4. XLS soubor (statistika souboru pomocí knihovny pandas)')
print(xls.describe())

xlsx = openpyxl.load_workbook("../DATA/engine_overview_202105140001.xlsx") 
sheet = xlsx.active  # read active sheet
print('\n5. XLSX soubor (pomocí knihovny openpyxl)')
print(dir(sheet))
```

<!-- #region -->
--------
Poznámky:


<sup>1</sup> - přehled verzí Python je k dispozici na [python.org](https://www.python.org/downloads/).

<sup>2</sup> -
<!-- #endregion -->
