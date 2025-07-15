---
parent: 
topic: Kombinationstherapie-Empfehlung
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung-kombination
---

## {{page-title}}

---

### Inhalt

Dieses Profil beschreibt ein Therapieempfehlung zur systemischen Therapie mit einer Kombination mehrerer Medikamente.

---

### Statusangabe

Die Statusangabe einer Kombinationstherapie-Empfehlung bezieht sich auf deren Umsetzungsstand. Es wird empfohlen folgende Statusangaben für die beschriebenen Situationen zu verwenden:

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
    url.endsWith('mii-pr-mtb-therapieempfehlung-kombination')
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
	        url.endsWith('mii-pr-mtb-therapieempfehlung-kombination')
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url.endsWith('mii-pr-mtb-therapieempfehlung-kombination')
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

<span style="color:red;font-weight:bold">TODO: FHIR LM für Kombinationstherapie</span>

---

**Suchparameter**

Folgende Suchparameter sind für dieses Modul relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/RequestGroup?_id=12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/RequestGroup?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](https://hl7.org/fhir/R4/search.html#token).

3. Der Suchparameter "identifier" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/RequestGroup?identifier=urn:fdc:medizininformatik-initiative.de:mtb-medications|0001```

    Anwendungshinweise: Weitere Informationen zur Suche nach "identifier" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](https://hl7.org/fhir/R4/search.html#token).

4. Der Suchparameter "intent" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/RequestGroup?intent=final```

    Anwendungshinweise: Weitere Informationen zur Suche nach "intent" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](https://hl7.org/fhir/R4/search.html#token).

5. Der Suchparameter "subject" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/RequestGroup?subject=Patient/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).

6. Der Suchparameter "action-resource" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/RequestGroup?action-resource=MedicationRequest/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "action-resource" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).

---

**Beispiele**

Beispiel: Empfehlung einer Kombinationstherapie bestehend aus Dabrafenib und Trametinib für Kim Musterperson vom 28.03.2023 (siehe {{pagelink:Szenarien}})

<tabs>
    <tab title="Tabelle">{{table:mii-exa-mtb-therapieempfehlung-kombinationstherapie}}</tab>
    <tab title="JSON">{{json:mii-exa-mtb-therapieempfehlung-kombinationstherapie}}</tab>
</tabs>

Dazu die jeweiligen `MedicationRequest`s:

<tabs>
    <tab title="Dabrafenib Tabelle">{{table:mii-exa-mtb-therapieempfehlung-dabrafenib}}</tab>
    <tab title="Dabrafenib JSON">{{json:mii-exa-mtb-therapieempfehlung-dabrafenib}}</tab>
    <tab title="Trametinib Tabelle">{{table:mii-exa-mtb-therapieempfehlung-trametinib}}</tab>
    <tab title="Trametinib JSON">{{json:mii-exa-mtb-therapieempfehlung-trametinib}}</tab>
</tabs>

Und die `Medication`s:

<tabs>
    <tab title="Dabrafenib Tabelle">{{table:mii-exa-mtb-medikation-dabrafenib}}</tab>
    <tab title="Dabrafenib JSON">{{json:mii-exa-mtb-medikation-dabrafenib}}</tab>
    <tab title="Trametinib Tabelle">{{table:mii-exa-mtb-medikation-trametinib}}</tab>
    <tab title="Trametinib JSON">{{json:mii-exa-mtb-medikation-trametinib}}</tab>
</tabs>

---