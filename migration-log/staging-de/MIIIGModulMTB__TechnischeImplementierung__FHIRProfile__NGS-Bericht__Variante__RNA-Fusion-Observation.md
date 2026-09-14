---

### Inhalt

Dieses Profil beschreibt die RNA-Fusion im NGS-Bericht. 
Die korrekte, präzise und standardisierte Darstellung von Fusions-Varianten ist bislang über den Clinical Genomics Reporting Implementation Guide nicht möglich. International arbeitet die GA4GH an einer präzisen, menschen- und maschinenlesbaren Repräsentation (Variation Representation Specification, VRS), die sich als Standard beim Austausch zwischen den öffentlich zugänglichen Datenbanken (ClinVar, OnkoKB, VICC) etabliert. 
 
Um bereits jetzt RNA-Fusionen beschreiben zu können, wird hier vereinfacht  und basierend auf der dnpm-Definition auf die formale Beschreibung der beteiligten 5' und 3'-Elemente Chromosom, Gen und Koordinaten zurückgegriffen.  

Der 5' Fusion Partner wird dargestellt durch mehrere Elemente im component Slice: \
MII_PR_MTB_RNA_Fusion.component[five-prime-gene], MII_PR_MTB_RNA_Fusion.component[five-prime-transcript-id],
MII_PR_MTB_RNA_Fusion.component[five-prime-exon-id], MII_PR_MTB_RNA_Fusion.component[five-prime-position] und MII_PR_MTB_RNA_Fusion.component[five-prime-strand].
Der 3' Fusion Partner analog dazu mit MII_PR_MTB_RNA_Fusion.component[three-prime-...].

#### Kodierung der Strang-Orientierung

Fuer die Kodierung der Strang-Orientierung (Plus/Minus-Strang) wird die [Sequence Ontology](http://www.sequenceontology.org) verwendet:

| Strang | Synonyme | Sequence Ontology Code |
|--------|----------|------------------------|
| Plus (+) | Watson, sense, coding, 5'→3' | `SO:0002262` (Watson_strand) |
| Minus (-) | Crick, antisense, template, 3'←5' | `SO:0002263` (Crick_strand) |

System-URL: `http://www.sequenceontology.org`

### Inhalt

Mapping Datensatz zu FHIR

**Suchparameter**

Folgende Suchparameter sind für das Modul Onkologie relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?_id=12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-rna-fusion```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der 
    [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

3. Der Suchparameter "status" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?status=final```

    Anwendungshinweise: Weitere Informationen zur Suche nach "status" finden sich in der 
    [FHIR-Basisspezifikation - Abschnitt "token"](https://hl7.org/fhir/R4/search.html#token).

4. Der Suchparameter "category" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?category=http://terminology.hl7.org/CodeSystem/observation-category|laboratory```

    Anwendungshinweise: Weitere Informationen zur Suche nach "category" finden sich in der 
    [FHIR-Basisspezifikation - Abschnitt "token"](https://hl7.org/fhir/R4/search.html#token).

5. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?code=http://loinc.org|69548-6```

    Anwendungshinweise: Weitere Informationen zur Suche nach "code" finden sich in der 
    [FHIR-Basisspezifikation - Abschnitt "token"](https://hl7.org/fhir/R4/search.html#token).

6. Der Suchparameter "subject" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?subject=Patient/example-mii-mtb-patient```

    Anwendungshinweise: Weitere Informationen zur Suche nach "subject" finden sich in der 
    [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).

7. Der Suchparameter "focus" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?focus=Condition/example-mii-mtb-diagnose```

    Anwendungshinweise: Weitere Informationen zur Suche nach "focus" finden sich in der 
    [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).

8. Der Suchparameter "method" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?method=http://loinc.org|LA26398-0```

    Anwendungshinweise: Weitere Informationen zur Suche nach "method" finden sich in der 
    [FHIR-Basisspezifikation - Abschnitt "token"](https://hl7.org/fhir/R4/search.html#token).

9. Der Suchparameter "specimen" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?specimen=Specimen/example-mii-mtb-specimen```

    Anwendungshinweise: Weitere Informationen zur Suche nach "specimen" finden sich in der 
    [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).

10. Der Suchparameter "device" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?device=Device/example-mii-molgen-device-sequencer```

    Anwendungshinweise: Weitere Informationen zur Suche nach "device" finden sich in der 
    [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).

11. Der Suchparameter "component-code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?component-code=http://loinc.org|48018-6```

    Anwendungshinweise: Weitere Informationen zur Suche nach "component-code" finden sich in der 
    [FHIR-Basisspezifikation - Abschnitt "token"](https://hl7.org/fhir/R4/search.html#token).

12. Der Suchparameter "component-code-value-concept" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?component-code-value-concept=http://loinc.org|    48018-6$http://www.genenames.org/geneId|HGNC:1097```

    Anwendungshinweise: Weitere Informationen zur Suche nach "component-code-value-concept" finden sich
    in der 
    [FHIR-Basisspezifikation - Abschnitt "composite"](https://hl7.org/fhir/search.html#composite).

13. Der Suchparameter "component-code-value-quantity" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?component-code-value-quantity=http://loinc.org|81258-6$ap30%|    http://unitsofmeasure.org|%25```

    Anwendungshinweise: Weitere Informationen zur Suche nach "component-code-value-quantity" finden
    sich in der 
    [FHIR-Basisspezifikation - Abschnitt "composite"](https://hl7.org/fhir/search.html#composite).

14. Der Suchparameter "component-value-concept" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?component-value-concept=http://sequenceontology.org|SO:SO:1000008```

    Anwendungshinweise: Weitere Informationen zur Suche nach "component-value-concept" finden
    sich in der 
    [FHIR-Basisspezifikation - Abschnitt "token"](https://hl7.org/fhir/R4/search.html#token).

15. Der Suchparameter "component-value-quantity" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?component-value-quantity=ap30%|http://unitsofmeasure.org|%25```

    Anwendungshinweise: Weitere Informationen zur Suche nach "component-value-quantity" finden
    sich in der 
    [FHIR-Basisspezifikation - Abschnitt "composite"](https://hl7.org/fhir/search.html#composite).

**Beispiele**

---
