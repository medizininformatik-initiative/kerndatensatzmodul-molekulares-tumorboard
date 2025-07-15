---
parent: 
topic: WHO Grad ZNS
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-who-grad-tumor-zns
---

## {{page-title}}

---

### Inhalt

Dieses Profil beschreibt den Grad des Tumors nach WHO-Klassifikation der Tumoren des zentralen Nervensystems (ZNS). Dies wird im oBDS v.a. durch das freitext-basierte Feld "Weitere Klassifikationen" erhoben und wird hier im MTB beispielhaft ausmodelliert und semantisch annotiert.

---

### Verknüpfungen zu anderen Ressourcen

Die Behandlungsepisode kann auf einen WHO-Grad verweisen, um den korrekten Kontext für Diagnostik, Vortherapie und Therapieempfehlungen bereitzustellen. 

Es ist mittelfristig geplant, dieses Profil gemeinsam mit anderen onkologisch relevanten Bewertungsskalen (FIGO, hämato-onkologische Skalen etc.) im Onkologie-Modul unterzubringen.   

---

### Zeitliche Zuordnung im Verlauf

@```
from 
    StructureDefinition 
where 
    url.endsWith('mii-pr-mtb-who-grad-tumor-zns') 
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
	        url.endsWith('mii-pr-mtb-who-grad-tumor-zns') 
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url.endsWith('mii-pr-mtb-who-grad-tumor-zns')  
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
        id.lower().contains('who') and 
        mapping.first().map.contains('Observation')
    select 
        Datensatz: short,
        Erklaerung: definition, 
        FHIR: mapping[0].map 
```

---

**Suchparameter**

Folgende Suchparameter sind für diese Modul relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?_id=12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-tumorausbreitung```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

3. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?code=http://snomed.info/sct|396921005```

    Anwendungshinweise: Weitere Informationen zur Suche nach "code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

4. Der Suchparameter "subject" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?subject=Patient/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

5. Der Suchparameter "encounter" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?encounter=Encounter/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "encounter" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

6. Der Suchparameter "combo-value-concept" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?combo-value-concept=http://snomed.info/sct|396922003```

    Anwendungshinweise: Weitere Informationen zur Suche nach "combo-value-concept" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

<!--
---
**Beispiele**

<tabs>
    <tab title="Tabelle">{{table:mii-exa-mtb-kim-tumorausbreitung}}</tab>
    <tab title="JSON">{{json:mii-exa-mtb-kim-tumorausbreitung}}</tab>
</tabs>
-->
---

{{render:mii-vs-mtb-who-grad-tumor-zns}}