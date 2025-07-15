---
parent:
topic: Genomic Study (Procedure)
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-genomic-study
---

## {{page-title}}

---

### Inhalt

Dieses Profil beschreibt die Genomics Study.
Da sich der Aufbau, Umfang und Inhakt von genomischen Analysereport von anderen Diagnostischen Reports (Labor, Bildgebung, Pathologie, Mikrobiologie...) deutlich unterscheidet, wurde in FHIR R5 eine GenomicStudyRessource eingeführt, die alle relevanten Datenelemente beinhaltet. 
* https://hl7.org/fhir/R5/genomicstudy.html
* https://build.fhir.org/ig/HL7/genomics-reporting/StructureDefinition-genomic-study.html


Da viele nationale und internationale Organisationen weiter auf FHIR R4 setzen, gab es einen offiziellen Backport, so dass die Inhalte einer R5 GenomicStudy über eine übergeordnete GenomicStudy-Prozedur und untergeordnete GenomicStudyAnalysis-Prozeduren abgebildet werden können. 

### Zeitliche Zuordnung im Verlauf

@```
from 
    StructureDefinition 
where 
    url.endsWith('mii-pr-mtb-genomic-study')
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
	        url.endsWith('mii-pr-mtb-genomic-study')
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url.endsWith('mii-pr-mtb-genomic-study')
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
from StructureDefinition 
where url.endsWith('mii-lm-mtb')
    for
        differential.element
    
    where
        id.contains('RNASeq') and 
        mapping.first().map.contains('MII_PR_MTB_RNA_Seq')
    select 
        Datensatz: short,
        Erklaerung: definition, 
        FHIR: mapping[0].map 

```

---

**Suchparameter**

Folgende Suchparameter sind für dieses Modul relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?_id=12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-genomic-study```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der 
    [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

3. Der Suchparameter "status" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?status=completed```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.status" finden sich in der 
    [FHIR-Basisspezifikation - Abschnitt "Token Search".](https://hl7.org/fhir/R4/search.html#token).


4. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?code=Panel sequencing```

    Anwendungshinweise: Weitere Informationen zur Suche nach "code" finden sich in der 
    [FHIR-Basisspezifikation - Abschnitt "Token Search".](https://hl7.org/fhir/R4/search.html#token).

5. Der Suchparameter "subject" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?subject=Patient/1234```

    Anwendungshinweise: Weitere Informationen zur Suche nach "subject" finden sich in der 
    [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).

6. Der Suchparameter "encounter" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?encounter=Encounter/1234```

    Anwendungshinweise: Weitere Informationen zur Suche nach "encounter" finden sich in der 
    [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).

---
**Beispiele**

<tabs>
    <tab title="Tabelle">{{table: MII-EXA-MTB-GenomicStudy-1}}</tab>
    <tab title="JSON">{{json: MII-EXA-MTB-GenomicStudy-1}}</tab>
</tabs>


---