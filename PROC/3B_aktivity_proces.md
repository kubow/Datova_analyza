---
## Procesování dat

[←](../3B_aktivity.md) [→ další krok](../3C_analyza.md)



```


V dalším příkladu jsou pak zaznamenány příklady hodnot, které mohou nabírat různé typy polí a také ty, které nejsou správné.


```python
df = pd.read_sql("SELECT * FROM typy_hodnot", con=conn)

print(df)
conn.close()
```


Poznámky:

[^dta_cln]: anglicky Data Cleansing (někdy také označováno jako Data Cleaning, Data Remedation, Data Scrubbing nebo Error Correction). ([detaily](https://en.wikipedia.org/wiki/Data_cleansing))

[^dta_qlt]: anglicky Data Quality ([detaily](https://en.wikipedia.org/wiki/Data_quality))

[^preciz]: témata přesnost a preciznost více viz https://cs.wikipedia.org/wiki/P%C5%99esnost_a_preciznost

[^valid]: téma validity dat rozebráno na https://en.wikipedia.org/wiki/Validity_(statistics)

[^konzis]: téma konzistence dat rozebráno na https://en.wikipedia.org/wiki/Consistency

---