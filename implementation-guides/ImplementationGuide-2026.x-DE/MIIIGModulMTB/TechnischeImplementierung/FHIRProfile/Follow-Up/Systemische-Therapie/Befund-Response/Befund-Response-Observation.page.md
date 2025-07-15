---
parent: 
topic: Follow-Up Systemische Therapie (Medication Statement)
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-response-befund
---

## {{page-title}}

---

### Inhalt

Dieses Profil gehört zum Profil Systemische Therapie und bezeichnet den Befund zur Response auf die jeweilige Systemische Therapie \
Deshalb wird auch mithilfe des Elements ```Observation.partOf``` auf die Systemische Therapie (bzw. Procedure) verwiesen. 
Zusätzlich kann über ```Observation.method``` kodiert werden, falls eine strukturierte Erfassung nach RECIST oder RANO vorgenommen wurde. 


**Fragestellungen** \
Das Profil erbt aktuell von MII_PR_Onko_Verlauf. Hier ist vorgesehen, dass neben der Gesamtbewertung ```Observation.valueCodeableConcept``` mit ```Observation.component``` auch mindestens eine einzelne Bewertungen von Tumor, LK oder FM vorhanden sein muss. Das ist in DNPMv2 nicht vorgesehen.

Außerdem ist für die Gesamtbewertung in DNPMv2 ein anderes VS (```https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-response-befund-beurteilung```)vorgesehen als bei Onko. 



---

### Verknüpfungen zu anderen Ressourcen
Inhaltlich gibt es Überschneidung zum Verlauf-Profil des Onkologiemoduls.  
Dieses befüllt sich aber direkt aus den Krebsregisterdaten, wobei auch die Dokumentationskriterien der Tumordokumentare angewandt werden. 
Dieses Profil soll daher mit Fokus einen Report der Tumorresponse nach RECIST darstellen. 

---

### Zeitliche Zuordnung im Verlauf

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-response-befund' 
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-response-befund'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-response-befund' 
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
        id.contains('ResponseBefund') and mapping.first().map.contains('Observation')
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

    ```GET [base]/Observation?_id=12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-response-befund```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).


3. Der Suchparameter "identifier" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?identifier=5466```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.identifier" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).


4. Der Suchparameter "part-of" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?part-of=MII_PR_MTB_Systemische_Therapie/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.partOf" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).


5. Der Suchparameter "status" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?status=completed```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).


6. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?code=http://fhir.de/CodeSystem/bfarm/ops|5-37```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).


7. Der Suchparameter "subject" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?subject=Patient/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).


8. Der Suchparameter "focus" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?focus=MII_PR_Onko_Diagnose_Primaertumor/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.focus" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).


9. Der Suchparameter "encounter" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?subject=Encounter/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.encounter" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).


10. Der Suchparameter "method" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?method=Encounter/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.method" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token Search"](http://hl7.org/fhir/R4/search.html#token).



11. Der Suchparameter "combo-value-concept" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?combo-value-concept=ttps://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-response-befund-beurteilung|MR```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Observation.valueCodeableConcept" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

12. Der Suchparameter "component-code-value-concept" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?component-code-value-concept=http://loinc.org|12345-6$http://fhir.de/CodeSystem/sct|12345678```

Anwendungshinweise: Weitere Informationen zur Suche nach "components" finden sich in der [FHIR-Basisspezifikation - Abschnitt "composite"](http://hl7.org/fhir/R4/search.html#composite).




---
**Beispiele**

<tabs>
    <tab title="Tabelle">{{table: MII-EXA-MTB-Response-Befund-Beispiel-1}}</tab>
    <tab title="JSON">{{json: MII-EXA-MTB-Response-Befund-Beispiel-1}}</tab>
</tabs>


---