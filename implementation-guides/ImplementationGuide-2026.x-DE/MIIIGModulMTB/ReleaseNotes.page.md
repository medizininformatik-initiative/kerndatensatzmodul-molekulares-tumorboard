---
parent: 
---

## Release Notes

**Version 2026.0.0**

Datum TODO

- Im Profil `MII_PR_MTB_Immunohistochemistry` wurde das Slicing von `code.coding` geschlossen gemacht, um 
  sicherzustellen, dass nicht gleichzeitig ein spezifischer und generischer Code angegeben werden kann.
  ([GitHub-Issue](https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/issues/136))
- Im Profil `MII_PR_MTB_Antrag_Kostenuebernahme` wurde der fixe Wert von `status` von *Pattern* zu *Fixed Value*,
  geändert. Dies hat semantisch die selbe Bedeutung, ist aber leichter zu verstehen.
  ([GitHub-Issue](https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/issues/140))
- Im Profil `MII_PR_MTB_Ploidie` wurde das Pattern auf `code.coding` entfernt und stattdessen ein entsprechender Slice
  eingefügt. Das macht es möglich, dass zusätzlich andere Codings angegeben werden.
  ([GitHub-Issue](https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/issues/141))
- Im Profil `MII_PR_MTB_BIOMARKER_HER2_STATUS` wurde das Pattern auf `code.coding` entfernt und stattdessen ein entsprechender Slice
  eingefügt. Das macht es möglich, dass zusätzlich andere Codings angegeben werden.
  ([GitHub-Issue](https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/issues/144))
