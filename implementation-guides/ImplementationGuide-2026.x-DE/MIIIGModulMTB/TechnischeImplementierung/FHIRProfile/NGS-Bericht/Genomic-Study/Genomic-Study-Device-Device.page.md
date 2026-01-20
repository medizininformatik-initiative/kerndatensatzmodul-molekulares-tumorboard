---
parent:
topic: Genomic Study (Procedure)
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-genomic-study
---

## {{page-title}}

---

### Inhalt

Dieses Profil beschreibt die Geräte, Labormaterialien und Software-Pipelines, die im Genomic Study Analysis-Profil referenziert werden. 


@```
from 
    StructureDefinition 
where 
    url.endsWith('mii-pr-mtb-genomic-study-device')
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
	        url.endsWith('mii-pr-mtb-genomic-study-device')
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url.endsWith('mii-pr-mtb-genomic-study-device')
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

    ```GET [base]/Device?_id=12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Device?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-genomic-study-device```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der 
    [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).


4. Der Suchparameter "device-name" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Device?deviceName=NextSeq+2000```

    Anwendungshinweise: Weitere Informationen zur Suche nach "code" finden sich in der 
    [FHIR-Basisspezifikation - Abschnitt "Token Search".](https://hl7.org/fhir/R4/search.html#token).

5. Der Suchparameter "manufacturer" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Device?manufacturer=Illumina```

    Anwendungshinweise: Weitere Informationen zur Suche nach "subject" finden sich in der 
    [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).

6. Der Suchparameter "type" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Device?type=sequencer```

    Anwendungshinweise: Weitere Informationen zur Suche nach "encounter" finden sich in der 
    [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).

---
**Beispiele**

### Sequencing Device
<tabs>
    <tab title="Tabelle">{{table: MII-EXA-MTB-Device-Sequencer-1}}</tab>
    <tab title="JSON">{{json: MII-EXA-MTB-Device-Sequencer-1}}</tab>
</tabs>

---

### Sequencing Kit
<tabs>
    <tab title="Tabelle">{{table: MII-EXA-MTB-Device-SequencingKit-1}}</tab>
    <tab title="JSON">{{json: MII-EXA-MTB-Device-SequencingKit-1}}</tab>
</tabs>

---


### Preparation Library
<tabs>
    <tab title="Tabelle">{{table: MII-EXA-MTB-Device-LibraryPreparation-Kit-1}}</tab>
    <tab title="JSON">{{json: MII-EXA-MTB-Device-LibraryPreparation-Kit-1}}</tab>
</tabs>

---