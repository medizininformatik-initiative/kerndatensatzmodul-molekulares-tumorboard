---
parent:
topic: Mikrosatelliteninstabilität
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-mikrosatelliteninstabilitaet
---

## {{page-title}}

---

### Inhalt

Dieses Profil beschreibt die Mikrosatelliteninstabilität (MSI). Es erlaubt den Rohdatenmesswert als Quantity anzugeben, sowie die klinisch relevantere Interpretation. 

Es existieren zwei verschiedene Interpretationsskalen : Einerseits  `MSI-H | MSI-L | Stable`, andererseits `Stable | Unstable | Indeterminate`. Das vorliegende Profil lässt beide Arten der Interpretation zu. 

---

### Verknüpfungen zu anderen Ressourcen

---


@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-mikrosatelliteninstabilitaet'
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-mikrosatelliteninstabilitaet'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-mikrosatelliteninstabilitaet'
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
        id.contains('mikrosatelliteninstabilitaet') and mapping.first().map.contains('MII_PR_MTB_Mikrosatelliteninstabilitaet')
    select 
        Datensatz: short,
        Erklaerung: definition,
        FHIR: mapping.first().map
```

---

**Suchparameter**

Folgende Suchparameter sind für das Modul Onkologie relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?_id=1234```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der 
    [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-mikrosatelliteninstabilitaet```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der 
    [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

3. Der Suchparameter "status" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?status=final```

    Anwendungshinweise: Weitere Informationen zur Suche nach "status" finden sich in der 
    [FHIR-Basisspezifikation - Abschnitt "token"](https://hl7.org/fhir/R4/search.html#token).

4. Der Suchparameter "category" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?category=http://terminology.hl7.org/CodeSystem/observation-category|laboratory```

    Anwendungshinweise: Weitere Informationen zur Suche nach "category" finden sich in der 
    [FHIR-Basisspezifikation - Abschnitt "token"](https://hl7.org/fhir/R4/search.html#token).

5. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?code=http://loinc.org|69548-6```

    Anwendungshinweise: Weitere Informationen zur Suche nach "code" finden sich in der 
    [FHIR-Basisspezifikation - Abschnitt "token"](https://hl7.org/fhir/R4/search.html#token).

6. Der Suchparameter "subject" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?subject=Patient/example-mii-mtb-patient```

    Anwendungshinweise: Weitere Informationen zur Suche nach "subject" finden sich in der 
    [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).

7. Der Suchparameter "focus" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?focus=Condition/example-mii-mtb-diagnose```

    Anwendungshinweise: Weitere Informationen zur Suche nach "focus" finden sich in der 
    [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).

8. Der Suchparameter "encounter" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?encounter=Encounter/12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach "encounter" finden sich in der 
    [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).

9. Der Suchparameter "interpretation" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?interpretation=http://loinc.org|LA14122-8```

    Anwendungshinweise: Weitere Informationen zur Suche nach "interpretation" finden sich in der 
    [FHIR-Basisspezifikation - Abschnitt "token"](https://hl7.org/fhir/R4/search.html#token).

10. Der Suchparameter "method" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?method=http://loinc.org|LA26398-0```

    Anwendungshinweise: Weitere Informationen zur Suche nach "method" finden sich in der 
    [FHIR-Basisspezifikation - Abschnitt "token"](https://hl7.org/fhir/R4/search.html#token).

11. Der Suchparameter "specimen" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?specimen=Encounter/12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach "specimen" finden sich in der 
    [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).

---
**Beispiele**

<tabs>
    <tab title="Tabelle">{{table:Observation/MII-EXA-MTB-Mikrosatelliteninstabilitaet-1}}</tab>
    <tab title="JSON">{{json:Observation/MII-EXA-MTB-Mikrosatelliteninstabilitaet-1}}</tab>
</tabs>


---