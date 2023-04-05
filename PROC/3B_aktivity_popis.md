<!-- #region -->

## Popis dat

[←](3B_aktivity.md) [→ další krok](../3B_aktivity_proces.md)

Při charakteristice dat se soustředíme na následující sadu činností:

- Základní popis dat
  - Průměr (mean)
  - Střední hodnota a odchylky
- Extrémy a anomálie
- Klasifikicace[^dta_cls] (distribuční křivka hodnot)

Základní popis dat v prgramovacím jazyce python
https://medium.com/@kasiarachuta/basic-statistics-in-pandas-dataframe-594208074f85
https://github.com/kasiarachuta/Blog/blob/master/Basic%20statistics%20on%20pandas%20DataFrame.ipynb

### Základní popis dat

Na prvním příkladu si ukážeme jakým zpsůobem mohou být záznamy validovány a identifikována jejich přesnost.

<!-- #endregion -->

```python
import pandas as pd

print("První dva řádky datovéhou souboru:")
df = pd.read_csv('../DATA/Fake/FakeNameGenerator.com_93dd768d.zip', compression='zip')
df.head(2)
```

Přehled statistik nad datovým polem číselného typu.

```python
pole = 'Centimeters'  # zde si můžeme zvolit libovolné pole

print(f"Rozsah souboru (počet prvků v souboru): {df[pole].count()} záznamů")
print(f"Aritmetický průměr (mean) výšek respondentů): {df[pole].mean()} cm")
print(f"Rozpětí výšek respondentů: (od {df[pole].min()} cm do {df[pole].max()} cm)")
print(f"Střední hodnota (median) výšek respondentů: {df[pole].median()} cm")
print(f"Nejvyšší četnost (mode) výšek respondentů: {df[pole].mode()[0]} cm")
print(f"Rozptyl (variance) výšek respondentů): {df[pole].var()} cm")
print(f"Standartní odchylka výšek responentů: {df[pole].std()} cm2")
```

### Extrémy a anomálie

tady bude nějaký popis

```python

```

---

Poznámky:

[^dta_cls]: anglicky Data Classification, více viz [https://en.wikipedia.org/wiki/Data*classification*(business_intelligence)](<https://en.wikipedia.org/wiki/Data_classification_(business_intelligence)>)
