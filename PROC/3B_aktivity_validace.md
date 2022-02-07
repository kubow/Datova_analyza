---
## Čištění pro vstup

[←](../3B_aktivity.md) [→ další sekce](../3B_aktivity_charakteristika.md)

---

Proces čištění[^dta_cln], při kterém identifikujeme poškozené, nepřesné či jinak neplatné záznamy nám umožňuje vylepšit kvalitu dat[^dta_qlt], která vstupuje do systému.

Tyto aktivity se soustřeďují především do následujících oblastí:

- **Správnost (validita)**[^valid]: záznamy prochází pokud vyhovují definovaným podmínkám, které můžou být nastaveny v úložném systému.
- **Přesnost**[^preciz]: značí, v jakém formátu máme data uchovávat.
- **Kompletnost**: v rámci čištění lze na nekompletnost dat poukázat a zvolit, jak budou neplatné záznamy vedeny.
- **Konzistence**: 
- **Uniformita**: 

### Ukázky na konkrétních příkladech

Na prvním příkladu si ukážeme jakým zpsůobem mohou být záznamy validovány a identifikována jejich přesnost. 

```python
import pandas as pd
import sqlite3

conn = sqlite3.connect('../DATA/vzory.db')
df = pd.read_sql("SELECT * FROM dotaznik_typy_poli", con=conn)
# UNION ALL SELECT "Celkem", Sum(Pocet_respondentu), Sum(Procentuelni_zastoupeni) FROM dotaznik_typy_poli
df.loc['Celkem']= df.sum(numeric_only=True, axis=0)
print(df)

```


V dalším příkladu jsou pak zaznamenány příklady hodnot, které mohou nabírat různé typy polí a také ty, které nejsou správné.


```python
df = pd.read_sql("SELECT * FROM typy_hodnot", con=conn)

print(df)
conn.close()
```

---

Poznámky:

[^dta_cln]: anglicky Data Cleansing, zkratka DC ([detaily](https://en.wikipedia.org/wiki/Data_cleansing))

[^dta_qlt]: anglicky Data Quality ([detaily](https://en.wikipedia.org/wiki/Data_quality))

[^preciz]: témata přesnost a preciznost více viz https://cs.wikipedia.org/wiki/P%C5%99esnost_a_preciznost

[^valid]: téma validity dat rozebráno na https://en.wikipedia.org/wiki/Validity_(statistics)

