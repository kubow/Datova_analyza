<!-- #region -->
## Charakteristika dat

[←](3B_aktivity.md)  [→ další sekce](3C_analyza.md)

Při charakteristice dat se soustředíme na následující sadu činností:

- 
- Klasifikicace[^dta_cls]


### Ukázky na konkrétních příkladech

Na prvním příkladu si ukážeme jakým zpsůobem mohou být záznamy validovány a identifikována jejich přesnost. 
<!-- #endregion -->

```python
import pandas as pd

df = pd.read_csv('../DATA/FakeNameGenerator.com_93dd768d.zip', compression='zip')

df.head(5)
```


V dalším příkladu jsou pak zaznamenány příklady hodnot, které mohou nabírat různé typy polí a také ty, které nejsou správné.


```python

```

---

Poznámky:

[^dta_cls]: anglicky Data Classification, více viz [https://en.wikipedia.org/wiki/Data_classification_(business_intelligence)](https://en.wikipedia.org/wiki/Data_classification_(business_intelligence))


