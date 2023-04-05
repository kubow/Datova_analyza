---
jupyter:
  jupytext:
    formats: ipynb,md
    text_representation:
      extension: .md
      format_name: markdown
      format_version: "1.3"
      jupytext_version: 1.11.2
  kernelspec:
    display_name: Python 3
    language: python
    name: python3
---

<!-- #region -->

## Porovnání rychlosti načtení dat z různých zdrojů

[←](../Readme.md)

Pěkné srovnání na https://stackoverflow.com/questions/41066582/python-save-pandas-data-frame-to-parquet-file

### Fyzické soubory

V této části porovnáváme vypočtení průměru nad vzorovým datasetem pro následující zdroje:

- CSV soubor
- zazipovaný CSV soubor
- Částečně strukturované soubory dat (XML, JSON, ...)
- SQLite databázové úložiště
- Sloupcové typy úložíšť (parquet)

<!-- #endregion -->

```python
# !pip install --upgrade pandas --user  # aktualizace knihovny pandas na nejnovejsi verzi
# !pip install lxml
!pip install pyarrow
!pip install fastparquet
```

```python
from datetime import datetime
import pandas as pd
from pathlib import Path
import sqlite3

def file_size(file_name):
    # vraci velikost souboru v "kb" nebo "b"
    size = Path(file_name).stat().st_size
    if size > 1024:
        return f'{round(size/1024)} kb'
    else:
        return f'{size} b'

def tt(start, end):
    # vraci pocet vterin mezi dvema casovymi znackami
    return (end - start).total_seconds()

def file_summary(f_name):
    # vraci prumer hodnot pro sloupec (promenna field) v zavislosti na typu zdroje
    field = 'emp_length_int'  # Age
    if '.csv' in f_name:
        dataset = pd.read_csv(f_name)
        return {'CSV   ': dataset[field].mean()}
    elif '.zip' in f_name:
        dataset = pd.read_csv(f_name, compression='zip')
        return {'ZipCSV': dataset[field].mean()}
    elif '.json' in f_name:
        dataset = pd.read_json(f_name)
        return {'JSON  ': dataset[field].mean()}
    elif '.xml' in f_name:
        dataset = pd.read_xml(file)
        return {'XML   ': dataset[field].mean()}
    elif '.db' in f_name or '.sqlite' in f_name:
        conn = sqlite3.connect(f_name)
        return {'SQLite': pd.read_sql_query(f'SELECT AVG({field}) FROM seznam;',conn).iloc[0][0]}
    elif 'gz' in f_name:
        dataset = pd.read_parquet(file)
        return {'PARQ_Z': dataset[field].mean()}
    elif 'brotli' in f_name:
        dataset = pd.read_parquet(file)
        return {'PARQ_B': dataset[field].mean()}
    elif 'parquet' in f_name:
        dataset = pd.read_parquet(file)
        return {'PARQUE': dataset[field].mean()}
    else:  # default fallback to stress out errors
        return {'N/A   ': 50}
'''
file_list = ['./Fake/FakeNameGenerator.com_93dd768d.csv', './Fake/FakeNameGenerator.com_93dd768d.zip',
             './Fake/FakeNameGenerator.com_93dd768d.json', './Fake/FakeNameGenerator.com_93dd768d.xml',
             './Fake/FakeNameGenerator.com_93dd768d.parquet', './Fake/FakeNameGenerator.com_93dd768d.parquet.brotli',
             './Fake/FakeNameGenerator.com_93dd768d.parquet.gz', './Fake/FakeNameGenerator.com_93dd768d.db']
'''

file_list = ['C:/Users/jirib/Downloads/loan_final313.csv',
             'C:/Users/jirib/Downloads/loan_final313.csv.zip',
             'C:/Users/jirib/Downloads/loan_final313.json',
             'C:/Users/jirib/Downloads/loan_final313.parquet',
             'C:/Users/jirib/Downloads/loan_final313.parquet.gz']


print('Vzorový dataset FakeNamesGenerator (3 000 záznamů) - výpočet průměrného věku \n'+50*'=')
for file in file_list:
    start_time = datetime.now()
    summary = file_summary(file)
    end_time = datetime.now()
    file_name = list(summary)[0]
    average = round(summary[file_name], 3)
    print(f'{file_name} soubor ukazuje průměr {average} let za {tt(start_time, end_time)} vteřin (velikost souboru {file_size(file)}).')


```

```python

```
