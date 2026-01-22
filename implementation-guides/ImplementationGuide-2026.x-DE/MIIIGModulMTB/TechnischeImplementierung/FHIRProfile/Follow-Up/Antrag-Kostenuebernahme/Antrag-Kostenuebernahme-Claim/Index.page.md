---
parent: 
topic: AntragKostenuebernahme
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-antrag-kostenuebernahme
---

## {{page-title}}

---

### Inhalt

Dieses Profil beschreibt die Antwort auf den Antrag zur Kostenuebernahme (```MII_PR_Antrag_Kostenuebernahme```). Sie basieren auf dem Financial-Ressource ClaimResponse. 
CAVE: Der Lifecycle-Status einer Financial-Ressource entspricht nicht den bekannten Workflows. Die Financial-Ressourcen unterhalten ein eigenes ValueSet mit eigenen Semantischen Bedeutungen (siehe https://hl7.org/fhir/R4/valueset-fm-status.html). Eine ClaimResponse sollte daher im Normalfall immer `active` sein, solange sie nicht zurückgezogen wurde. 


---

### Verknüpfungen zu anderen Ressourcen
Das Element "prescription" verweist auf die MedicationRequest, im besten Fall also auf das Profil MII_PR_Medikation_MedicationRequest.

---

### Zeitliche Zuordnung im Verlauf

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-antrag-kostenuebernahme' 
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-antrag-kostenuebernahme'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-antrag-kostenuebernahme' 
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
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/LogicalModel/mii-lm-mtb'
    for
        differential.element
    where
        id.contains('AntragKostenuebernahme') and mapping.first().map.contains('Claim')
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

    ```GET [base]/Claim?_id=12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Claim?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-antrag-kostenuebernahme```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

3. Der Suchparameter "claim-type" MUSS unterstützt werden:

    Beispiele:
    
    ```GET [base]/Claim?claim-type=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-antrag-kostenuebernahme```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Claim.type" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

4. Der Suchparameter "use" MUSS unterstützt werden:

    Beispiele:
    
    ```GET [base]/Claim?use=claim```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Claim.use" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).


5. Der Suchparameter "patient" MUSS unterstützt werden:

    Beispiele:
    
    ```GET [base]/Claim?patient=Patient/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Claim.patient" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).

6. Der Suchparameter "created" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Claim?created=eq2022-01-01```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Claim.created" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Date Search"](http://hl7.org/fhir/R4/search.html#date).

7. Der Suchparameter "provider" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Claim?provider=Practicioner/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Claim.provider" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).


8. Der Suchparameter "claim-related" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Claim?claim-related=Claim/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Claim.related.claim" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).


9. Der Suchparameter "claim-related-relationship" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Claim?claim-related-relationship=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-antrag-kostenuebernahme-antragsstadium#accepted```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Claim.related.claim" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).

10. Der Suchparameter "claim-related-relationship" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Claim?claim-related-relationship=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-antrag-kostenuebernahme-antragsstadium#accepted```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Claim.related.relationship.coding" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).


---
**Beispiele**


<tabs>
    <tab title="Tabelle">{{table: Claim/MII-EXA-MTB-Antrag-Kostenuebernahme-Beispiel-1}}</tab>
    <tab title="JSON">{{json: Claim/MII-EXA-MTB-Antrag-Kostenuebernahme-Beispiel-1}}</tab>
</tabs>

---