---
parent:
topic: Ploidie
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-ploidie
---

## {{page-title}}

---

### Inhalt

Dieses Profil beschreibt die Ploidie. Beschreibt die Gesamtploidie des Tumors. Die Ploidie ist ein Indikator für die Tumorproliferation und die Tumoraggressivität.

---

### Verknüpfungen zu anderen Ressourcen

---

### Zeitliche Zuordnung im Verlauf

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-ploidie'
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-ploidie'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-ploidie'
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

Mapping Datensatz zu FHIR

@```
from
    StructureDefinition 
where
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/LogicalModel/mii-lm-mtb'
for
    differential.element
    where
        id.contains('Ploidie') and mapping.first().map.contains('MII_PR_MTB_Ploidie')
    select 
        Datensatz: short,
        Erklaerung: definition,
        FHIR: mapping.first().map
```

---

**Suchparameter**

Folgende Suchparameter sind für das Modul Molekulares Tumorboard relevant, auch in Kombination:
1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?_id=12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-molekularer-biomarker```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der 
    [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

3. Der Suchparameter "focus" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?focus=Condition/example-mii-mtb-diagnose```

    Anwendungshinweise: Weitere Informationen zur Suche nach "focus" finden sich in der 
    [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).

4. Der Suchparameter "interpretation" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?interpretation=http://hl7.org/fhir/uv/genomics-reporting/ValueSet/high-low-codes-vs|high```

    Anwendungshinweise: Weitere Informationen zur Suche nach "interpretation" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](https://hl7.org/fhir/R4/search.html#token).


---
**Beispiele**

<tabs>
    <tab title="Tabelle">{{table:Observation/MII-EXA-MTB-Ploidie-1}}</tab>
    <tab title="JSON">{{json:Observation/MII-EXA-MTB-Ploidie-1}}</tab>
</tabs>

---