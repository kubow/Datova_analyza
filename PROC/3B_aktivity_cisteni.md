<!-- #region -->
---
## Čištění pro vstup

[←](../3B_aktivity.md) [→ další krok](../3B_aktivity_popis.md)


Proces čištění dat[^dta_cln], při kterém identifikujeme poškozené, nepřesné či jinak neplatné záznamy nám umožňuje vylepšit kvalitu dat[^dta_qlt], která vstupuje do systému.

[![](https://mermaid.ink/img/pako:eNo1zzFywkAMBdCraFSZGbiAi8yQOCdIumwKDSvCBq-8s2iZwZgjcAKauEyRUxjfK4tDOhVP_0tHXDWWscSPSGEDr5WRqhi_AqkMPWz3VDslsKQzWCweOifWbdMngySVZqcdLN-uZzf2er3I8HOD70aWk21CpH22HTwWwqG-RX5DO_StkD_M7gy6tuYw9hN8Kv4a09RoBOfoOXpyNl94NAJgUDfs2WCZR8trSrUaNHLKNIW8xc_WaROxXFO94zlS0ublICssNSb-R5Wj_LC_q9MvLddhjA)](https://mermaid-js.github.io/mermaid-live-editor/edit#pako:eNo1zzFywkAMBdCraFSZGbiAi8yQOCdIumwKDSvCBq-8s2iZwZgjcAKauEyRUxjfK4tDOhVP_0tHXDWWscSPSGEDr5WRqhi_AqkMPWz3VDslsKQzWCweOifWbdMngySVZqcdLN-uZzf2er3I8HOD70aWk21CpH22HTwWwqG-RX5DO_StkD_M7gy6tuYw9hN8Kv4a09RoBOfoOXpyNl94NAJgUDfs2WCZR8trSrUaNHLKNIW8xc_WaROxXFO94zlS0ublICssNSb-R5Wj_LC_q9MvLddhjA)

Tyto aktivity lze shrnout do následujících oblastí:

- **Správnost (validita)**[^valid]: záznamy prochází pokud vyhovují definovaným podmínkám, které můžou být nastaveny v úložném systému.
- **Přesnost**[^preciz]: značí, v jakém formátu máme data uchovávat.
- **Kompletnost**: v rámci čištění lze na nekompletnost dat poukázat a zvolit, jak budou neplatné záznamy vedeny.
- **Konzistence**[^konzis]: 
- **Uniformita**: 

Nejběžnější typy problémů, se kterými se můžeme setkat:
- Data nejsou správně parsovány
- Data obsahují znaky, které by tam být neměly
- Data obsahují chyby (v pravopise, výslovnosti, ...)
- Data jsou nepřesná
- Existují duplicitní záznamy
- Při zpracování se objevuje nečekaný vzor


### Ukázky na konkrétních příkladech

Na prvním příkladu si ukážeme jakým zpsůobem mohou být záznamy validovány a identifikována jejich přesnost. 
<!-- #endregion -->
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

## Popisy čištění dle různých nástrojů

[Čištění podle aplikace tableau](https://www.tableau.com/learn/articles/what-is-data-cleaning)

[Čištění podle aplikace talend](https://www.talend.com/resources/what-is-data-cleansing/)


Poznámky:

[^dta_cln]: anglicky Data Cleansing (někdy také označováno jako Data Cleaning, Data Remedation, Data Scrubbing nebo Error Correction). ([detaily](https://en.wikipedia.org/wiki/Data_cleansing))

[^dta_qlt]: anglicky Data Quality ([detaily](https://en.wikipedia.org/wiki/Data_quality))

[^preciz]: témata přesnost a preciznost více viz https://cs.wikipedia.org/wiki/P%C5%99esnost_a_preciznost

[^valid]: téma validity dat rozebráno na https://en.wikipedia.org/wiki/Validity_(statistics)

[^konzis]: téma konzistence dat rozebráno na https://en.wikipedia.org/wiki/Consistency
