---
parent: 
topic: TherapieempfehlungMedikation
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung
---

## {{page-title}}

---

### Inhalt

Dieses Profil beschreibt ein Therapieempfehlung zur systemischen (medikamentösen) Therapie. Es basiert auf den MedicationRequest-Profil des Basismoduls Medikation.

Mit `MedicationRequest` können theoretisch sowohl Empfehlungen als auch Verordnungen abgebildet werden. Da das Molekulare Tumorboard aber häufig nicht in der selben Einrichtung lokalisiert ist wie die behandelnden Onkologen, werden die Empfehlungen als solche modelliert (`intent = proposal`).

Die Angabe der Wirkstoffe soll nach Möglichkeit über ATC erfolgen, wobei theoretisch auch andere Systematiken genutzt werden können. Es ist zu beachten, dass eine Therapieempfehlung häufig auf Wirkstoffgruppenebene ausgesprochen werden kann - in dem Fall kann die Wirkstoffgruppe als ATC kodiert werden. Falls ein konkreter Wirkstoff in der Empfehlung benannt wird, können sowohl Wirkstoffklasse als auch Wirkstoff innerhalb des gleichen Codings dargestellt werden. 

Empfehlungen zu Kombinationstherapien werden unter Verwendung des Profils Kombinationstherapie-Empfehlung abgebildet, da die Evidenzen zwischen Einzel- und Kombinationstherapien häufig anders sind.

---

### Statusangabe

Die Statusangabe einer Therapieempfehlung bezieht sich auf deren Umsetzungsstand. Es wird empfohlen folgende Statusangaben für die beschriebenen Situationen zu verwenden:

|Belegung `status`|Beschreibung|
|-|-|
|`draft`|Nicht umgesetzt|
|`active`|In Umsetzung|
|`completed`|Abgeschlossen oder abgebrochen (Patient verstorben)|

*Hinweis: Die Statusangabe sollte mit der des beschlossenen Therapieplans (siehe {{pagelink:Therapieplan}}) semantisch abgestimmt sein.*

---

### Verknüpfungen zu anderen Ressourcen

Ein Therapieplan kann unter `CarePlan.activity.reference` auf beliebig viele `MedicationRequest`s verweisen. Tatsächlich durchgeführte Systemische Therapien und Medikamentengaben referenzieren über `Procecure.basedOn` bzw. `MedicationStatement.basedOn` auf den Request. Diese Zuordnung wird erleichtert, wenn sowohl im `MedicationRequest` als auch im `MedicationStatement` die ATC-Wirkstoffgruppe kodiert ist.

Über `MedicationRequest.reasonReference` können relevante Befunde sowie die Diagnose verlinkt werden. 

---

### Zeitliche Zuordnung im Verlauf

@```
from 
    StructureDefinition 
where 
    url.endsWith('mii-pr-mtb-therapieempfehlung')
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
	        url.endsWith('mii-pr-mtb-therapieempfehlung')
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url.endsWith('mii-pr-mtb-therapieempfehlung')
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
        id.contains('BeschlussTherapieplan.Therapieempfehlungen') and 
        mapping.first().map.contains('MedicationRequest') and 
        mapping.first().map.contains('extension').not()
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

    ```GET [base]/MedicationRequest?_id=12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationRequest?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](https://hl7.org/fhir/R4/search.html#token).

3. Der Suchparameter "identifier" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationRequest?identifier=urn:fdc:medizininformatik-initiative.de:mtb-medications|0001```

    Anwendungshinweise: Weitere Informationen zur Suche nach "identifier" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](https://hl7.org/fhir/R4/search.html#token).

4. Der Suchparameter "status" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationRequest?status=final```

    Anwendungshinweise: Weitere Informationen zur Suche nach "status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](https://hl7.org/fhir/R4/search.html#token).

5. Der Suchparameter "intent" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationRequest?intent=final```

    Anwendungshinweise: Weitere Informationen zur Suche nach "intent" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](https://hl7.org/fhir/R4/search.html#token).

6. Der Suchparameter "medication" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationRequest?medication=Medication/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "medication" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).

7. Der Suchparameter "subject" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationRequest?subject=Patient/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).

8. Der Suchparameter "encounter" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationRequest?encounter=Encounter/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "encounter" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).

9. Der Suchparameter "authoredOn" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationRequest?authoredon=eq2025-01-14```

    Anwendungshinweise: Weitere Informationen zur Suche nach "authoredon" finden sich in der [FHIR-Basisspezifikation - Abschnitt "date"](https://hl7.org/fhir/R4/search.html#date).

10. Der Suchparameter "requester" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationRequest?requester=Practitioner/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "requester" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).

11. Der Suchparameter "supporting-info" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationRequest?supporting-info=Observation/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "supporting-info" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).

---

**Beispiele**

Beispiel: Empfehlung einer systemischen Therapie mit Mirvetuximab Soravtansine für Kim Musterperson vom 28.03.2023 (siehe {{pagelink:Szenarien}})

<tabs>
    <tab title="Tabelle">{{table:mii-exa-mtb-medication-request-mirvetuximab}}</tab>
    <tab title="JSON">{{json:mii-exa-mtb-medication-request-mirvetuximab}}</tab>
</tabs>

---