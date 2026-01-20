---
parent: 
topic: Follow-Up (ClinicalImpression)
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-follow-up-clinicalimpression
---

## {{page-title}}

---

### Inhalt

Dieses Profil beschreibt Informationen über den administrativen Vorgang "Follow-Up" und den dabei eingeholten Informationen.
Im Zuge dieses Follow-Up Prozesses werden die durchgeführten Therapien (MII_PR_MTB_Systemische_Therapie) inkl nachfolgender Therapie-Response und ggfs. deren Kostenübernahmen (MII_PR_MTB_Antrag_Kostenuebernahme & MII_PR_MTB_Antwort_Kostenuebernahme) dokumentiert. 
Zusätzlich ist hier der Status des Therapieplans ```ClinicalImpression.investigation``` und eine Begründung bei Nicht-Durchführung ```ClinicalImpression.statusReason``` enthalten.


---

### Verknüpfungen zu anderen Ressourcen
Die Follow-up ClinicalImpression verweisen alle unter ClinicalImpression.previous auf die Behandlungsepisode

---

### Zeitliche Zuordnung im Verlauf

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-follow-up-clinicalimpression' 
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-follow-up-clinicalimpression'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-follow-up-clinicalimpression' 
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
        id.contains('FollowUp') and mapping.first().map.contains('ClinicalImpression')
    select 
        Datensatz: short,
        Erklaerung: definition,
        FHIR: mapping.first().map
```

---

**Suchparameter**

Folgende Suchparameter sind für das Modul MTB relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ClinicalImpression?_id=12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ClinicalImpression?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-follow-up-clinicalimpression```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

3. Der Suchparameter "status" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ClinicalImpression?status=completed```

    Anwendungshinweise: Weitere Informationen zur Suche nach "ClinicalImpression.status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

4. Der Suchparameter "statusReason" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ClinicalImpression?statusReson=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-systemische-therapie-status-grund|payment-refused```

    Anwendungshinweise: Weitere Informationen zur Suche nach "ClinicalImpression.statusReason" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).


5. Der Suchparameter "subject" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ClinicalImpression?subject=Patient/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "ClinicalImpression.subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).




8. Der Suchparameter "investigation" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ClinicalImpression?investigation=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-follow-up-status|ongoing```

    Anwendungshinweise: Weitere Informationen zur Suche nach "ClinicalImpression.investigation" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).


9. Der Suchparameter "supporting-info" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ClinicalImpression?supporting-info=MII_PR_MTB_Systemische_Therapie/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "ClinicalImpression.supportingInfo" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).



---
**Beispiele**

<tabs>
    <tab title="Tabelle">{{table:MII-EXA-MTB-Follow-Up-ClinicalImpression-Beispiel-1}}</tab>
    <tab title="JSON">{{json:MII-EXA-MTB-Follow-Up-ClinicalImpression-Beispiel-1}}</tab>
</tabs>

---