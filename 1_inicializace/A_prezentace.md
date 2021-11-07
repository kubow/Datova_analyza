<!-- #region -->
K prohlížení prezentace je potřeba zvolit jednu z následujících cest:

## 1. Prezentační software kancelářského balíku

Prezentace je čitelná jednou z následujících aplikací:


[Microsoft PowerPoint Slide Presentation Software | Microsoft 365](https://www.microsoft.com/en-us/microsoft-365/powerpoint)

[Impress | LibreOffice - Based on OpenOffice](https://www.libreoffice.org/discover/impress/)

[Apache OpenOffice Impress](https://www.openoffice.org/product/impress.html)

Po výběru aplikace otevřete soubor v kořenové složce kurzu (soubor s názvem [A_Uvod_datova_analyza.pptx](../A_Uvod_datova_analyza.pptx)).
<!-- #endregion -->

<!-- #region -->
## 2. modul jupyter z programovacího jazyka Python

Prvním krokem je instalace programovacího jazyka Python (k dispozici [zde](https://www.python.org/downloads/)). Modul jupyter umožňuje spouštět poznámkové bloky v prostředí tzv. serveru, který běží na Vaší lokální výpočetní stanici a přistupuje se k němu přes webový prohlížeč.

Instalace a spouštění modulu jupyter se provádí následujícícm způsobem (předpokládá již nainstalovaný programovací jazyk Python):

```bash
 pip install jupyter  # nainstalovat knihvnu jupyter ()
 jupyter notebook     # spuštění poznámkového bloku ve webovém prohlížeči
 ```

Dodatečné nastavení modulu jupytext je uvedeno zde: [Jupyter notebooks as Markdown documents](https://pythonawesome.com/jupyter-notebooks-as-markdown-documents/). Ve většině případů je však možné modul jupyter používat ihned po instalaci.

### 2a. Jupytext (volitelný krok)

Pokud chcete mít jupyter poznámkové bloky synchroniovány s Markdown soubory, je k tomu potřeba nainstalovat [modul Jupytext](https://jupytext.readthedocs.io/en/latest/install.html). Návod je uveden níže:

```bash
 pip install jupytext --upgrade # volitelný krok pro synchronizaci s markdown
 jupyter notebook               # spuštění poznámkového bloku ve webovém prohlížeči
 ```

<!-- #endregion -->

## 3. Markdown editor

V případě Markdown (MD) lze volit prakticky jakýkoliv dostupný editor. Autor používá následující řešení:

- [Markdown rozšíření pro Visual Studio Code](https://code.visualstudio.com/Docs/languages/markdown)
- [Obsidian - multiplatformní aplikace pro editaci Markdown](https://obsidian.md/)
- [Byword - editace Markdown pro Mac](https://apps.apple.com/us/app/byword/id420212497?mt=12)
- [Ghostwriter - editace Markdown pro Windows](https://wereturtle.github.io/ghostwriter/)

Poznámka: prezentační možnosti Markdown jsou poměrně omezené, lze je však srovnat s prezentačními možnostmi modulu jupyter bez dalších nainstalovaných modulů.

```python

```
