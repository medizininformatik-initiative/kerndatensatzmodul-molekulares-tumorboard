---
parent:
topic: Genomic Study Analysis (Procedure)
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/genomic-study-analysis
---

## {{page-title}}

---

### Inhalt

Dieses Profil beschreibt die Genomics Study Analysis.

Dieses Profil beschreibt die Genomics Study.
Da sich der Aufbau, Umfang und Inhalt von genomischen Analysereport von anderen Diagnostischen Reports (Labor, Bildgebung, Pathologie, Mikrobiologie...) deutlich unterscheidet, wurde in FHIR R5 eine GenomicStudyRessource eingeführt, die alle relevanten Datenelemente beinhaltet. 
* https://hl7.org/fhir/R5/genomicstudy.html
* https://build.fhir.org/ig/HL7/genomics-reporting/StructureDefinition-genomic-study.html


Da viele nationale und internationale Organisationen weiter auf FHIR R4 setzen, gab es einen offiziellen Backport, so dass die Inhalte einer R5 GenomicStudy über eine übergeordnete GenomicStudy-Prozedur und untergeordnete GenomicStudyAnalysis-Prozeduren abgebildet werden können. 
Die GenomicStudyAnalysis beinhaltet dabei präzise Daten zu eingesetzen Geräten, Methodik, Referenzgenom etc. 

---

### Verknüpfungen zu anderen Ressourcen

Die GenomicStudyAnalysis ist über die GenomicStudy mit dem NGS-Befundbericht verknüpft. 
Die GenomicStudyAnalysis selbst beinhaltet Referenzen auf andere Geräte und Materialien, die in FHIR als Device-Ressource abgebildet werden. Hierfür wurde in der vorliegenden 


---

### Zeitliche Zuordnung im Verlauf

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/genomic-study-analysis' 
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/genomic-study-analysis'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/genomic-study-analysis' 
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
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/LogicalModel/mii-lm-mtb'
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

Folgende Suchparameter sind für das Modul Onkologie relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?_id=12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/genomic-study-analysis```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der 
    [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

3. Der Suchparameter "focus" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?focus=Condition/example-mii-mtb-diagnose```

    Anwendungshinweise: Weitere Informationen zur Suche nach "focus" finden sich in der 
    [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).


4. Der Suchparameter "specimen" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?specimen=Specimen/example-mii-mtb-specimen```

    Anwendungshinweise: Weitere Informationen zur Suche nach "specimen" finden sich in der 
    [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).

5. Der Suchparameter "device" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?device=Device/example-mii-molgen-device-sequencer```

    Anwendungshinweise: Weitere Informationen zur Suche nach "device" finden sich in der 
    [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).

6. Der Suchparameter "category" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?category=http://terminology.hl7.org/CodeSystem/observation-category|laboratory```

    Anwendungshinweise: Weitere Informationen zur Suche nach "category" finden sich in der 
    [FHIR-Basisspezifikation - Abschnitt "token"](https://hl7.org/fhir/R4/search.html#token).

---
**Beispiele**
### GenomicStudy
<tabs>
    <tab title="Tabelle">{{table: MII-EXA-MTB-GenomicStudyAnalysis-1}}</tab>
    <tab title="JSON">{{json: MII-EXA-MTB-GenomicStudyAnalysis-1}}</tab>
</tabs>

---