<!-- #region -->
## Příprava prezentačního prostředí

[←](../Readme.md)

K prohlížení prezentace je potřeba zvolit jednu z následujících cest:

### 1. Prezentační software kancelářského balíku

Prezentace je čitelná jednou z následujících aplikací:


[Microsoft PowerPoint Slide Presentation Software | Microsoft 365](https://www.microsoft.com/en-us/microsoft-365/powerpoint)

[Impress | LibreOffice - Based on OpenOffice](https://www.libreoffice.org/discover/impress/)

[Apache OpenOffice Impress](https://www.openoffice.org/product/impress.html)

Po výběru aplikace otevřete soubor v kořenové složce kurzu (soubor s názvem [A_Uvod_datova_analyza.pptx](../A_Uvod_datova_analyza.pptx)).
<!-- #endregion -->

### 2. Markdown editor

V případě Markdown<sup>2</sup> (zkratka MD) lze volit prakticky jakýkoliv dostupný editor. Autor používá následující řešení:

- [Markdown rozšíření pro Visual Studio Code](https://code.visualstudio.com/Docs/languages/markdown)
- [Obsidian - multiplatformní aplikace pro editaci Markdown](https://obsidian.md/)
- [Byword - editace Markdown pro Mac](https://apps.apple.com/us/app/byword/id420212497?mt=12)
- [Ghostwriter - editace Markdown pro Windows](https://wereturtle.github.io/ghostwriter/)



<!-- #region -->
### 3. Prezentační prostředí python/jupyter

Prvním krokem je instalace programovacího jazyka Python (k dispozici ke stažení na [python.org](https://www.python.org/downloads/)). Modul jupyter umožňuje spouštět poznámkové bloky v prostředí tzv. serveru<sup>1</sup>, který běží na Vaší lokální výpočetní stanici a přistupuje se k němu přes webový prohlížeč.

V druhém kroku je do jazyka instalováno několik modulů, zde je příklad z příkazové řádky:

```bash
 pip install jupyter  # instalace baliku jupyter (poznamkový blok)
 pip install pandas   # instalace baliku pro praci s daty
 pip install plotly   # instalace baliku pro grafickou prezentaci dat
 jupyter notebook     # spuštění poznámkového bloku ve webovém prohlížeči
 ```

V poslední části je pak odkázáno na adresu ve webovém prohlížeči:
> http://localhost:8888/tree



Dodatečné nastavení modulu jupytext je uvedeno zde:  Ve většině případů je však možné modul jupyter používat ihned po instalaci.

#### Jupytext (volitelný krok)

Pokud chcete mít jupyter poznámkové bloky synchroniovány s MD soubory, je k tomu potřeba nainstalovat [modul Jupytext](https://jupytext.readthedocs.io/en/latest/install.html). Návod je uveden níže:

```bash
 pip install jupytext --upgrade # volitelný krok pro synchronizaci s markdown
 jupyter notebook               # spuštění poznámkového bloku ve webovém prohlížeči
 ```
#### Další nastavení prostředí

Spuštěním níže uvedeného kódu dojde k zobrazení dostupných témat (barevné nastavené prostředí jupyter) a jejich zavedení (projevuje se až po restartu jupyter).

<!-- #endregion -->

```python
# zobrazení dostupných témat
!jt -l 
# výběr konkrétního tématu
# !jt -t solarizedl
# odkomentovat řádek, spustit a restartovat jupyter
```

<!-- #region -->
--------
Poznámky:


<sup>1</sup> - [Jupyter notebooks as Markdown documents](https://pythonawesome.com/jupyter-notebooks-as-markdown-documents/).

<sup>2</sup> - Prezentační možnosti Markdown jsou poměrně omezené viz. [dokumentace](https://daringfireball.net/projects/markdown/).
<!-- #endregion -->
