---

### Inhalt

Dieses Profil beschreibt den NGS-Bericht, welcher auf Patient und Probe verweist und mehrere Observations als result-Elemente beinhaltet.
Die Metadaten des Berichts (Geräte, Kits, Library) werden über GenomicStudy / GenomicStudyAnalysis kodiert.  

### Inhalt

Mapping Datensatz zu FHIR

**Suchparameter**

Folgende Suchparameter sind für das Modul Onkologie relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DiagnosticReport?_id=1234```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der 
    [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DiagnosticReport?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-ngs-bericht```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der 
    [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

3. Der Suchparameter "subject" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DiagnosticReport?subject=Patient/example-mii-mtb-patient```

    Anwendungshinweise: Weitere Informationen zur Suche nach "subject" finden sich in der 
    [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).

4. Der Suchparameter "issued" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DiagnosticReport?issued=2022-07-13```

    Anwendungshinweise: Weitere Informationen zur Suche nach "issued" finden sich in der 
    [FHIR-Basisspezifikation - Abschnitt "date"](https://hl7.org/fhir/R4/search.html#date).

5. Der Suchparameter "specimen" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DiagnosticReport?specimen=Specimen/example-mii-mtb-specimen```

    Anwendungshinweise: Weitere Informationen zur Suche nach "specimen" finden sich in der 
    [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).

6. Der Suchparameter "result" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/DiagnosticReport?result=Observation/example-mii-mtb-variante-1```

    Anwendungshinweise: Weitere Informationen zur Suche nach "result" finden sich in der 
    [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).

**Beispiele**

---
