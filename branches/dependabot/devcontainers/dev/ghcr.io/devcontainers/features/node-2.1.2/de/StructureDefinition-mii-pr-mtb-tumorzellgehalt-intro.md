<!-- Migriert aus dem Simplifier-IG (Quelle(n): MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Probe/Tumorzellgehalt-Observation.page.md). TODO:REVIEW -->
---

### Inhalt

Dieses Profil beschreibt den *bioinformatisch* oder *histologisch* bestimmten Tumorzellgehalt.

Je nach Methodik kann dieser entweder als Teil einer bioinformatischen NGS-Analyse erfolgen, oder klassisch durch lichtmikroskopische Untersuchung in der Pathologie. Die Art des Nachweises wird unter `method` kodiert.

Ein hoher Tumorzellgehalt ist ausschlaggebend für die Qualität des Sequenzierprozesses und einen ausreichend präzisen Nachweis von Allelfrequenzen und Varianten. 

### Verknüpfungen zu anderen Ressourcen

Der Tumorzellgehalt kann sowohl von einem NGS- als auch molekularpathologischen Bericht über `DiagnosticReport.result` verlinkt sein. Zusätzlich kanne eine Rebiopsie über `ServiceRequest.supportingInfo` auf eine Tumorzellgehalt-Observation verlinken, wenn der Grund der Rebiopsie in einem zu niedrigen Tumorzellgehalt der ursprünglichen Probe liegt. 

### Inhalt

Mapping Datensatz zu FHIR

**Suchparameter**

Folgende Suchparameter sind für diese Modul relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?_id=12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-tumorzellgehalt```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

3. Der Suchparameter "identifier" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?identifier=123456```

    Anwendungshinweise: Weitere Informationen zur Suche nach "identifier" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

4. Der Suchparameter "based-on" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?based-on=ServiceRequest/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "based-on" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

5. Der Suchparameter "status" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?status=final```

    Anwendungshinweise: Weitere Informationen zur Suche nach "status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

6. Der Suchparameter "category" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?category=http://terminology.hl7.org/CodeSystem/observation-category|laboratory```

    Anwendungshinweise: Weitere Informationen zur Suche nach "category" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

7. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?code=http://loinc.org|93356-4```

    Anwendungshinweise: Weitere Informationen zur Suche nach "code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

8. Der Suchparameter "subject" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?subject=Patient/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

9. Der Suchparameter "date" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?date=eq2021-06-10```

    Anwendungshinweise: Weitere Informationen zur Suche nach "date" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Date Search"](https://hl7.org/fhir/R4/search.html#date).

10. Der Suchparameter "component-value-quantity" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?component-value-quantity=le20|http://unitsofmeasure.org|%```

    Anwendungshinweise: Weitere Informationen zur Suche nach "component-value-quantity" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Quantity Search"](https://hl7.org/fhir/R4/search.html#quantity).

11. Der Suchparameter "body-site" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?body-site=http://snomed.info/sct|430304001```

    Anwendungshinweise: Weitere Informationen zur Suche nach "body-site" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

12. Der Suchparameter "method" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?method=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-bestimmungsmethode-tumorzellgehalt|histologic```

    Anwendungshinweise: Weitere Informationen zur Suche nach "method" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

13. Der Suchparameter "specimen" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?specimen=Specimen/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "specimen" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

14. Der Suchparameter "has-member" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?has-member=Observation/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "has-member" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

15. Der Suchparameter "derived-from" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?derived-from=ImagingStudy/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "derived-from" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

**Beispiele**

Beispiel: Beschluss MTB-Fall für Kim Musterperson vom 28.03.2023 (siehe [Szenarien](guidance.html))

[mii-cs-mtb-bestimmungsmethode-tumorzellgehalt](CodeSystem-mii-cs-mtb-bestimmungsmethode-tumorzellgehalt.html)
