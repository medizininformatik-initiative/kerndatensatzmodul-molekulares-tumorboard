---
topic: MolekulareKonsequenzMTB
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/molekulare-konsequenz
---

### {{page-title}}

---

#### Beschreibung

Im Kontext des Molekularen Tumorboards beschreibt die Molekulare Konsequenz die funktionellen Auswirkungen von genetischen Varianten auf Proteinstruktur und -funktion. Diese Information ist relevant für die Bewertung der klinischen Bedeutung einer Variante im MTB.

Typische Anwendungsfälle im MTB:
- Beschreibung von Funktionsverlust (Loss-of-Function) bei Tumorsuppressorgenen
- Charakterisierung von aktivierenden Mutationen in Onkogenen
- Dokumentation von Splicing-Varianten und deren Auswirkungen

**Hinweis:** Dieses Profil wird aus dem MII Modul Molekulargenetischer Befundbericht (MolGen) verwendet. Es gibt kein MTB-spezifisches Profil, da die Anforderungen identisch sind.

@```
from
    StructureDefinition
where
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/molekulare-konsequenz'
select
    Name: name, Status: status, Version: version, Canonical: url, Basis: baseDefinition
```

---

Das Profil ist abgeleitet vom Profil [MolecularConsequence](http://hl7.org/fhir/uv/genomics-reporting/STU3/StructureDefinition-molecular-consequence.html) aus [HL7 Genomics Reporting Implementation Guide STU3](http://hl7.org/fhir/uv/genomics-reporting/STU3/).

---

#### Profil

<tabs>
  <tab title="Darstellung">{{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/molekulare-konsequenz, buttons}}</tab>
  <tab title="Beschreibung">
        @```
        from
            StructureDefinition
        where
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/molekulare-konsequenz'
        select
            Beschreibung: description
        with
            no header
        ```
        @```
        from
            StructureDefinition
        where
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/molekulare-konsequenz'
        for
            differential.element
            where
                mustSupport = true
            select Feldname: id, Kurzbeschreibung: short, Hinweise: comment
        ```
  </tab>
  <tab title="XML">{{xml:https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/molekulare-konsequenz}}</tab>
  <tab title="JSON">{{json:https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/molekulare-konsequenz}}</tab>
  <tab title="Link">{{link:https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/molekulare-konsequenz}}</tab>
</tabs>

---

#### Verknuepfungen zu anderen Ressourcen

Die Molekulare Konsequenz ist typischerweise mit folgenden Ressourcen verknuepft:
- **Variante** (Einfache Variante, CNV, DNA-Fusion, RNA-Fusion): Die Variante, deren Konsequenz beschrieben wird
- **Patient**: Der Patient, bei dem die Variante gefunden wurde

---

**Suchparameter**

Folgende Suchparameter sind fuer das MolekulareKonsequenz-Profil relevant:

1. Der Suchparameter ```_id``` MUSS unterstuetzt werden:

    Beispiele:

    ```GET [base]/Observation?_id=example-molekulare-konsequenz```

2. Der Suchparameter "_profile" MUSS unterstuetzt werden:

    Beispiele:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/molekulare-konsequenz```

3. Der Suchparameter "derived-from" MUSS unterstuetzt werden:

    Beispiele:

    ```GET [base]/Observation?derived-from=Observation/example-variante```

---
