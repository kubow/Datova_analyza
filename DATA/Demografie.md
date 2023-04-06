---
jupyter:
  jupytext:
    formats: ipynb,md
    text_representation:
      extension: .md
      format_name: markdown
      format_version: '1.3'
      jupytext_version: 1.11.2
  kernelspec:
    display_name: Python 3
    language: python
    name: python3
---

## Porovnání dat z voleb

[←](../Readme.md)
  
Data dostupná na serveru https://volby.cz/.

První krok je příprava knihoven:


```python
import re
from collections import Counter
import requests
import pandas as pd
import matplotlib.pyplot as plt

%matplotlib inline
```

Zdroj:
https://github.com/podondra/data-preprocessing/blob/master/1-visualisation/election-candidates.ipynb




```python
def read_party_df(url):
    r = requests.get(url)
    print(r.url, r.ok)
    dfs = pd.read_html(r.text, flavor='bs4', skiprows=2)
    column_names = {1: 'Kraj', 2: 'Number', 3: 'Name', 4: 'Age',
                    5: 'Party', 6: 'Political affiliation'}
    # first two rows are columns names
    # drop uninmportant columns
    # correct columns names
    return dfs[0].drop([0, 1])\
                 .drop([0, 7, 8], axis=1)\
                 .rename(index=lambda x: x - 2, columns=column_names)
          
```

```python

```
