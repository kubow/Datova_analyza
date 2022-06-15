<!-- #region -->
## Získání dat pomocí jazyka Python

[←](3A_dotazy.md)

Programovací jazyk Python[^python_lng] je navržen jako víceúčelový (neslouží tedy jen k analýzám dat), v základním nastavení pracuje s těmito datovými typy:

| Datový typ | Popis       | Příklad | Funkce na převedení |
|-----------| --------------------- | ----------|----------|
| string      | Textový řetězec            | `'automobil'`| str() |
| boolean      | Logická hodnota           | `True`| bool() |
| float64    | Reálné číslo             | `24.0`  | float() |
| int64      | Celé číslo            | `24`| int() |
| datetime64    | Datum (a čas)            | `'2022-01-01 12:01:00'`  | pomocí modulu datetime |

Práci se složitějšíma datovýma strukturama umožňují další rozšířené datové typy[^python_dtp]:

| Datový typ | Popis       | Příklad | Funkce na převedení |
|-----------| --------------------- | ----------|----------|
| list      | Řaditelný seznam prvků     | `['A', 'A', 'B']`| list() |
| set      |  Seřazený seznam unikátních prvků   | `{'A', 'B'}` | set() |
| tuple    | Neřaditelný seznam prvků   | `('A', 'A', 'B')` | tuple() |
| dictionary | Seznam typu klíč-hodnota | `{1: 'A', 2: 'B'}` | dict() |

Pro základní orientaci v programovacím jazyce slouží několik vestavěných funkcí[^python_buf], z nichž ty nejdůležitější si zde uvádíme:

| Vestavěná funkce    | Popis       | 
|-----------| --------------------- | 
| `dir()`      | vrací seznam názvů (modulů, funkcí a proměnných) dostupných v aktuální chvíli  | 
| `locals()/globals()`      | vrací seznam proměnných dostupných v lokálním/globálním měřítku  | 
| `help()`      | zobrazí nápovědu | 
| `input()`      | umožní uložit do proměnné hodnotu uživatelského vstupu | 
| `print()`      | proveden výstup na obrazovku | 
| `type()`      | zobrazí datový typ | 

V rámci datové analýzy nás bude zajímat funkcionalita vestavěných modulů[^python_bum]:

- **os / pathlib** pro správu souborů uložených na souborovém systému
- práce s webovými adresami
- práce s bitovým zápisem
- práce se streamem

| Příkaz    | Popis       | 
|-----------| --------------------- | 
| `os.chdir(cesta)`      | změna cesty pracovního adresáře             | 
| `os.gectwd()`    | zobrazení cesty pracovního adresáře            |
| `os.path.join(slozka1, ..., slozka n)`     | složení cesty           |
| `os.listdir(cesta)`      | výpis souborů a složek v pracovním adresáři | 
| `os.ath.isfile(cesta) / os.ath.isdir(cesta)`    | zjištění zda je cesta soubor / adresář |
| `pd.read_csv(cesta_souboru) / df.to_csv(cesta_souboru)`     | čtení / zápis csv souboru |


Pro pohodlnější práci s daty nás budou dále zajímat následující rozšiřující moduly:
- **matlpotlib**[^python_mpl] pro grafickou reprezentaci dat
- **numpy**[^python_np] pro vědecké výpočty
- **pandas**[^python_pd] pro datovou analýzu
- **scikit-learn**[^python_skl] pro práci se strojovým učením
- **scipy**[^python_sp] pro práci s algoritmy


<!-- #endregion -->

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


[^python_lng]:  Poprvé byl vydán v roce 1991 a od té doby bylo vydáno několik verzí, v současné době se drží vývojová řada označena jako Python 3. přehled verzí Python je k dispozici na https://www.python.org/downloads/](https://www.python.org/downloads/.

[^python_dtp]: Detailní přehled dostupných struktur k dispozici na https://pythongeeks.org/python-data-structures/ . Následující tabulka uvádí přehled dalších datových struktur, se kterými se lze potkat.

| Datový typ | Popis       | Poznámka | 
|-----------| --------------------- | ----------|
| array | Seznam prvků se stejným datovým typem  |   | 
| stack | Seznam prvků s daným pořadím odchozích prvků  | LIFO (Last In First Out)  |
| queue | Seznam prvků s daným pořadím odchozích prvků | FIFO (First In First Out)  | 
| linked list | Seznam prvků s ukzateli na další seznamy |  |
| tree | Hierarchické vztahy (nelineární datová struktura) |  |  |
| linked list | Reprezentace bodů a jejich spojnic (nelineární datová struktura) |  | 
| hash maps | Seznam typu klíč-hodnota (mapovaných pomocí funkce hash) |  |

[^python_buf]: https://docs.python.org/3/library/functions.html

[^python_bum]: Pro Python verze 3 jsou k dispozici zabudované moduly na adrese https://docs.python.org/3/py-modindex.html

[^python_mpl]: https://matplotlib.org/

[^python_np]: https://numpy.org/

[^python_pd]: https://pandas.pydata.org/

[^python_skl]: https://scikit-learn.org/stable/index.html

[^python_sp]: https://scipy.org/
<!-- #endregion -->
