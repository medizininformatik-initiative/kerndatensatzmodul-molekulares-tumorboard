---
parent:
topic: Immunhistochemie PDL1
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-insituhybridization
---

## {{page-title}}

---

### Inhalt

Dieses Profil beschreibt eine generische Darstellung von Ergebnissen,die aus molekularpathologischen In-Situ-Hybridizationsuntersuchungen auf Gewebsschnitten basiert. Die Observation ist damit generisch gehalten. 

Für fortgeschrittene FISH-Untersuchungen könnten zukünftig weitere Observations auf Basis z.B. des LOINC-Panels für FISH-Untersuchungen https://loinc.org/62367-8 erstellt werden. Dies ist jedoch davon abhängig, welche Datenpunkte aus den Pathologie-System / FISH-Analysegeräten direkt extrahiert werden können, und welche Daten an dein einzelnen Standorten vorliegen. 


---

### Verknüpfungen zu anderen Ressourcen
Die In-Situ-Hybridisierung wird wie immunhistochemische Ergebnisse vom Molekular-Pathologie-Report über DiagnosticReport.result verlinkt. Sie kann ihrerseits von diagnostischen oder therapeutischen Implikationen referenziert werden, wenn sich aus den Untersuchungen Einschätzungen zu Therapieoptionen oder Krankkheitsverlauf-Prädiktion ergeben. 

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

Mapping Datensatz zu FHIR



---


**Suchparameter**

Folgende Suchparameter sind für das Modul Onkologie relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?_id=12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?code=http://snomed.info/sct|384715000```

    Anwendungshinweise: Weitere Informationen zur Suche nach "code" finden sich in der 
    [FHIR-Basisspezifikation - Abschnitt "token"](https://hl7.org/fhir/R4/search.html#token).

3. Der Suchparameter "focus" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?focus=Condition/example-mii-mtb-diagnose```

    Anwendungshinweise: Weitere Informationen zur Suche nach "focus" finden sich in der 
    [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).

4. Der Suchparameter "interpretation" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?interpretation=http://hl7.org/fhir/uv/genomics-reporting/ValueSet/high-low-codes-vs|high```

    Anwendungshinweise: Weitere Informationen zur Suche nach "interpretation" finden sich in der 
    [FHIR-Basisspezifikation - Abschnitt "token"](https://hl7.org/fhir/R4/search.html#token).

---




---