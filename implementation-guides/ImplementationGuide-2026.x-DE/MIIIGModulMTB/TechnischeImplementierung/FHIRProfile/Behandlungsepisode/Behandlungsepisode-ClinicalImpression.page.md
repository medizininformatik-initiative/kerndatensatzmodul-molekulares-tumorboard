---
parent: 
topic: Behandlungsepisode
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-behandlungsepisode
---

## {{page-title}}

---

### Inhalt

Dieses Profil beschreibt die aktuelle Behandlungsepisode inkl. dem aktuellen Gesundheitszustand, Vortherapien, Molekular Pathologie Befund und NGS Bericht.

Diese gilt als Klammer, die als Ergänzung zum Fallkonzept dienen soll, da die MTB neben den klassischen In-House-Patienten jeder der folgenden PAtient Journeys abdecken kann: 

* Patient*in wird von Anfang bis Ende am gleichen Uniklinikum leiliniengerecht (Onkologie) und am Molekularen Tumorboard (Diagnose, Therapie und Follow-up) betreut
* Patient*in wird extern leitliniengerecht extern behandelt, und bei Ausschöpfung wird für den Rest der Therapie am Unilinikum 
* Patient*in wird gar nicht persönlich an der Uniklinik vorstellig, sondern Fall wird nur MTB besprochen
* beliebige Kombinationen aus Vortherapien und Folgetherapien.

---

### Profilierungsentscheidungen / Ballotierungskommentar

Alternativ wurde die Verwendung der `EpisodeOfCare`-Ressource überlegt. Diese ist jedoch eher als administrativer Behandlungszeitraum anzusehen.

Daher erschien uns die Verwendung der `ClinicalImpression`-Ressource sinnvoller, auch wenn die `ClinicalImpression` hier einen Zeit**raum** und keinen Zeit**punkt** erfasst. Sie enthält damit sowohl Referenzen auf den Zustand des/der Patient*in zum Einschlusszeitpunkt, als auch Referenzen auf die durchgeführte Diagnostik und Behandlungen sowie interdisziplinäre Konferenzen zur weiteren Behandlungsplanung. 

---

@```
from 
    StructureDefinition 
where 
    url.endsWith('mii-pr-mtb-behandlungsepisode')
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
	        url.endsWith('mii-pr-mtb-behandlungsepisode')
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url.endsWith('mii-pr-mtb-behandlungsepisode') 
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
        id.lower().contains('behandlungsepisode') and 
        mapping.first().map.contains('ClinicalImpression')
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

    ```GET [base]/ClinicalImpression?_id=12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ClinicalImpression?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-behandlungsepisode```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

3. Der Suchparameter "period-end" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ClinicalImpression?period-end=eq2025-01-01```

    Anwendungshinweise: Weitere Informationen zur Suche nach "period-end" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Date Search"](https://hl7.org/fhir/R4/search.html#date).

4. Der Suchparameter "problem" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ClinicalImpression?problem=Condition/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "problem" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

5. Der Suchparameter "investigation" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ClinicalImpression?investigation=DiagnosticReport/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "investigation" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

6. Der Suchparameter "supporting-info" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ClinicalImpression?supporting-info=DiagnosticReport/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "supporting-info" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

<span style="color:red;font-weight:bold">TODO: SP Leitlinienbehandlung Status Extension</span>

---
**Beispiele**

Beispiel: Beschluss MTB-Fall für Kim Musterperson vom 28.03.2023 (siehe {{pagelink:Szenarien}})

<tabs>
    <tab title="Tabelle">{{table:mii-exa-mtb-kim-musterperson-therapieplan}}</tab>
    <tab title="JSON">{{json:mii-exa-mtb-kim-musterperson-therapieplan}}</tab>
</tabs>


---