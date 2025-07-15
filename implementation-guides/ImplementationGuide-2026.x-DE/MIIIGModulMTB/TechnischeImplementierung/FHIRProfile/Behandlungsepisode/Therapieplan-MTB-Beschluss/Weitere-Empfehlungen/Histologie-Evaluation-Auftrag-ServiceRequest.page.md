---
parent: 
topic: Histologie-Evaluation (Auftrag)
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-histologie-evaluation-auftrag
---

## {{page-title}}

---

### Inhalt

Dieses Profil beschreibt eine Empfehlung zur histologischen Reevaluation.

Dies kann u.a. erfolgen, wenn die ursprüngliche Befundung nicht aussagekräftig war oder aufgrund bestimmter Marker eine spezifisches Nachweisverfahren für Proteine (z.B. per IHC), Nukleinsäuren (z.B. per ISH) oder anderer Spezialfärbungen erforderlich werden.

---

### Statusangabe

Die Statusangabe eines Auftrags zur Histologie-Evaluation bezieht sich auf dessen Umsetzungsstand. Es wird empfohlen folgende Statusangaben für die beschriebenen Situationen zu verwenden:

|Belegung `status`|Beschreibung|
|-|-|
|`draft`|Nicht umgesetzt|
|`active`|In Umsetzung|
|`completed`|Abgeschlossen oder abgebrochen (Patient verstorben)|

*Hinweis: Die Statusangabe sollte mit der des beschlossenen Therapieplans (siehe {{pagelink:Therapieplan}}) semantisch abgestimmt sein.*

---

### Zeitliche Zuordnung im Verlauf

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-histologie-evaluation-auftrag' 
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-histologie-evaluation-auftrag'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-histologie-evaluation-auftrag' 
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
        id.contains('HistologieReevaluationAuftrag') and 
        mapping.first().map.contains('ServiceRequest')
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

    ```GET [base]/ServiceRequest?_id=12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).


2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ServiceRequest?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-biopsie-auftrag```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).


3. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ServiceRequest?code=http://snomed.info/sct|183825009```

    Anwendungshinweise: Weitere Informationen zur Suche nach "code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token)


4. Der Suchparameter "reason-reference" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ServiceRequest?reason-reference=Observation/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "reason-reference" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#reference)


5. Der Suchparameter "specimen" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ServiceRequest?specimen=Specimen/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "specimen" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#reference)

**Beispiele**

Beispiel: Auftrag zur histologischen Evaluation für Kim Musterperson vom 28.03.2023 (siehe {{pagelink:Szenarien}})

<tabs>
    <tab title="Tabelle">{{table:mii-exa-mtb-kim-histologie-evaluation-aszites}}</tab>
    <tab title="JSON">{{json:mii-exa-mtb-kim-histologie-evaluation-aszites}}</tab>
</tabs>

---