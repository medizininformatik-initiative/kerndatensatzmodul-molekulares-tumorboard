---
parent:
topic: In Situ Hybridization
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-insituhybridization
---

## {{page-title}}

---

### Inhalt

Dieses Profil beschreibt eine generische Darstellung von Ergebnissen, die aus molekularpathologischen In-Situ-Hybridisierungsuntersuchungen auf Gewebsschnitten basiert.

Das Profil unterstützt verschiedene ISH-Methoden:
* **FISH** (Fluoreszenz In Situ Hybridization)
* **CISH** (Chromogenic In Situ Hybridization)
* **SISH** (Silver In Situ Hybridization)

### Profilstruktur

Analog zur IHC-Modellierung wurde folgende Struktur gewählt:

* **`code`**: Slicing mit `spezifisch` und `generisch`
  * **Spezifisch**: Konkreter LOINC- oder SNOMED-Code für die Untersuchung (z.B. `49683-6 ERBB2 gene copy number/Chromosome 17 copy number in Tissue by FISH`)
  * **Generisch**: Fallback-Code `51864006 Nucleic acid hybridization, function (observable entity)` wenn kein spezifischer Code verfügbar ist

* **`method`** (Pflichtfeld): Angabe der ISH-Methode aus dem ValueSet `MII_VS_MTB_ISH_Method`:
  * `1303773004` - Fluorescence in situ hybridization technique (FISH)
  * `787997001` - Chromogenic in situ hybridization (CISH)
  * `787998006` - Silver in situ hybridization (SISH)

* **`value[x]`**: Unterstützt verschiedene Ergebnistypen:
  * `valueRatio` - für Ratio-Messungen (z.B. HER2/CEP17)
  * `valueQuantity` - für einzelne Signalzählungen
  * `valueCodeableConcept` - für kategorische Ergebnisse (positiv/negativ)

### Komponenten für Signalzählungen

Für detaillierte FISH-Auswertungen werden folgende Komponenten unterstützt:

| Komponente | LOINC | Beschreibung |
|------------|-------|--------------|
| `target-signals` | 74860-8 | Target-Sonden Signale pro Zellkern (z.B. ERBB2) |
| `reference-signals` | 74861-6 | Referenz-Sonden Signale pro Zellkern (z.B. CEP17) |
| `cells-counted` | 62361-1 | Anzahl der ausgewerteten Zellen |
| `gene-studied` | 48018-6 | Untersuchtes Gen (HGNC-kodiert) |

Diese Struktur basiert auf dem LOINC Panel für HER2 FISH (`74885-5 ERBB2 gene (HER2) duplication associated observations panel - Tissue by FISH`).

---

### Verknüpfungen zu anderen Ressourcen

Die In-Situ-Hybridisierung wird wie immunhistochemische Ergebnisse vom Molekular-Pathologie-Report über DiagnosticReport.result verlinkt. Sie kann ihrerseits von diagnostischen oder therapeutischen Implikationen referenziert werden.

### Spezialisierte Profile

Für häufige ISH-Untersuchungen existieren spezialisierte Kindprofile:
* **MII_PR_MTB_INSITUHYBRIDIZATION_HER2** - HER2/ERBB2 FISH mit Ratio-Berechnung

---

@```
from
    StructureDefinition
where
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-insituhybridization'
select
    Name: name,
    Status: status,
    Version: version,
    Canonical: url,
    Basis: baseDefinition
```

### Inhalt

<tabs>
  <tab title="Darstellung">{{tree, buttons}}</tab>
  <tab title="Beschreibung">
        @```
        from
	        StructureDefinition
        where
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-insituhybridization'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from
            StructureDefinition
        where
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-insituhybridization'
        for
            differential.element
            where
                mustSupport = true
            select
                Feldname: id,
                Kurzbeschreibung: short,
                Hinweise: comment
        ```
  </tab>
  <tab title="XML">{{xml}}</tab>
  <tab title="JSON">{{json}}</tab>
  <tab title="Link">{{link}}</tab>
</tabs>

---

### ValueSet: ISH Methoden

@```
from
    ValueSet
where
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-ish-method'
select
    Name: name,
    Canonical: url
```

---

**Suchparameter**

Folgende Suchparameter sind für das Modul Onkologie relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?_id=12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?code=http://snomed.info/sct|51864006```

    Anwendungshinweise: Weitere Informationen zur Suche nach "code" finden sich in der
    [FHIR-Basisspezifikation - Abschnitt "token"](https://hl7.org/fhir/R4/search.html#token).

3. Der Suchparameter "method" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?method=http://snomed.info/sct|1303773004```

    Anwendungshinweise: Suche nach der verwendeten ISH-Methode (FISH, CISH, SISH).

4. Der Suchparameter "focus" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?focus=Condition/example-mii-mtb-diagnose```

    Anwendungshinweise: Weitere Informationen zur Suche nach "focus" finden sich in der
    [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).

5. Der Suchparameter "interpretation" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?interpretation=http://hl7.org/fhir/uv/genomics-reporting/ValueSet/high-low-codes-vs|high```

    Anwendungshinweise: Weitere Informationen zur Suche nach "interpretation" finden sich in der
    [FHIR-Basisspezifikation - Abschnitt "token"](https://hl7.org/fhir/R4/search.html#token).

---

**Beispiele**

{{index:current}}

---
