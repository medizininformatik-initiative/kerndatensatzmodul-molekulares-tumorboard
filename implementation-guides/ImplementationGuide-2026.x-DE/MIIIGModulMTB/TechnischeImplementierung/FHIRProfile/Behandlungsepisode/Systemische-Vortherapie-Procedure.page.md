---
parent: 
topic: Systemische Therapie
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-vortherapie
---

## {{page-title}}

---

### Inhalt

Dieses Profil beschreibt eine systemische (medikamentöse) Vortherapie aus Sicht des Molekularen Tumorboards. 

Grundlage ist das Profil zur Systemischen Therapie aus dem Onkologie-Modul, wobei ergänzende Angaben zur Leitlinientherapie, d.h. die *Therapielinie* und der *Zulassungsstatus*, gemacht werden können. Darüber hinaus 

---

### Verknüpfungen zu anderen Ressourcen

Es sollte nach Möglichkeit eine Datenduplikation zu bereits existierenden Prozeduren (z.B. Systemischen Therapie-Procedures) und Medikamentengaben (z.B. MedicationStatements) aus dem Onkologie-Modul vermieden werden. Stattdessen können bereits vorhandene Ressourcen mit zusätzlichen Informationen wie Therapielinie und Zulassungsstatus getestet werden.  

---

### Profilierungsentscheidungen / Ballotierungskommentar

@```
from 
    StructureDefinition 
where 
    url.endsWith('mii-pr-mtb-systemische-vortherapie')
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
	        url.endsWith('mii-pr-mtb-systemische-vortherapie')
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url.endsWith('mii-pr-mtb-systemische-vortherapie')
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
        id.lower().contains('vortherapie') and 
        mapping.first().map.contains('Procedure')
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

    ```GET [base]/Procedure?_id=103270```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-vortherapie```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

3. Der Suchparameter "based-on" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?based-on=CarePlan/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "based-on" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).

4. Der Suchparameter "part-of" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?part-of=Observation/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "part-of" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).

5. Der Suchparameter "status" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?status=completed```

    Anwendungshinweise: Weitere Informationen zur Suche nach "status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

6. Der Suchparameter "status-reason" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?status-reason=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-therapiestatusgrund|patient-wish```

    Anwendungshinweise: Weitere Informationen zur Suche nach "status-reason" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

7. Der Suchparameter "category" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?category=http://snomed.info/sct|103693007```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.category" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

8. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?code=http://fhir.de/CodeSystem/bfarm/ops|5-37```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).


9. Der Suchparameter "subject" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?subject=Patient/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).

10. Der Suchparameter "encounter" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?encounter=Encounter/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "encounter" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

11. Der Suchparameter "date" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?date=eq2025-01-01```

    Anwendungshinweise: Weitere Informationen zur Suche nach "date" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Date Search"](https://hl7.org/fhir/R4/search.html#date).

12. Der Suchparameter "reason-reference" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?reason-reference=Condition/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "reason-reference" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

13. Der Suchparameter "bodySite" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?bodySite=http://snomed.info/sct|430304001```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Procedure.bodySite" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

14. Der Suchparameter "outcome" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?outcome=http://snomed.info/sct|80891009```

    Anwendungshinweise: Weitere Informationen zur Suche nach "outcome" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

15. Der Suchparameter "note" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?note=contains:Carbo```

    Anwendungshinweise: Weitere Informationen zur Suche nach "note" finden sich in der [FHIR-Basisspezifikation - Abschnitt "String Search"](http://hl7.org/fhir/R4/search.html#string).

16. Der Suchparameter "dokumentationsdatum" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?dokumentationsdatum=2022-01-01```

    Anwendungshinweise: Weitere Informationen zur Suche nach "dokumentationsdatum" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Date Search"](http://hl7.org/fhir/R4/search.html#date).

17. Der Suchparameter "durchfuehrungsabsicht" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?durchfuehrungsabsicht=http://snomed.info/sct|262202000```

    Anwendungshinweise: Weitere Informationen zur Suche nach "durchfuehrungsabsicht" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

18.  Der Suchparameter "extension-intention" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Procedure?extension-intention=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention|K```

    Anwendungshinweise: Weitere Informationen zur Suche nach "extension-intention" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

<span style="color:red;font-weight:bold">TODO: SP Stellung Extension</span>

**Beispiele**

Beispiel: Beschluss MTB-Fall für Kim Musterperson vom 28.03.2023 (siehe {{pagelink:Szenarien}})

<tabs>
    <tab title="Tabelle">{{table:MTBChemo1Procedure}}</tab>
    <tab title="JSON">{{json:MTBChemo1Procedure}}</tab>
</tabs>

---

{{render:mii-cs-mtb-therapiestatusgrund}}