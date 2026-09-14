---

### Inhalt

Dieses Profil beschreibt die Antwort auf den Antrag zur Kostenuebernahme (```MII_PR_Antrag_Kostenuebernahme```). Sie basieren auf dem Financial-Ressource ClaimResponse. 
CAVE: Der Lifecycle-Status einer Financial-Ressource entspricht nicht den bekannten Workflows. Die Financial-Ressourcen unterhalten ein eigenes ValueSet mit eigenen Semantischen Bedeutungen (siehe https://hl7.org/fhir/R4/valueset-fm-status.html). Eine ClaimResponse sollte daher im Normalfall immer `active` sein, solange sie nicht zurückgezogen wurde. 

### Beziehungen zu anderen Ressourcen
- Der vorausgegangene Antrag zur Kostenuebernahme wird über das Element ```ClaimResponse.request``` referenziert. Dort sind auch die Referenzen zur beantragten Diagnostik / Therapie als ServiceRequest / MedicationRequest / RequestGroup. 
- D

### Alternative Profilierungen / Ballot-Unterstützung
1. Sowohl Entscheidung als auch Ablehungsgrund ist hier als extension hinterlegt. Hier wäre alternativ der reguläre FHIR-R5-Backport des in R5 dazugekommen `ClaimResponse.decision`-Elements als Ersatz . 
2. Wie auch schon beim Claim wäre auf Basis der retrospektiven Erschließung die ExplanationOfBenefit-Ressource als Kombination von Claims und ClaimResponses denkbar 

### Inhalt

Mapping Datensatz zu FHIR

**Suchparameter**

Folgende Suchparameter sind für das Modul Onkologie relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ClaimResponse?_id=12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ClaimResponse?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-antwort-kostenuebernahme```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

3. Der Suchparameter "use" MUSS unterstützt werden:

    Beispiele:
    
    ```GET [base]/ClaimResponse?use=claim```

    Anwendungshinweise: Weitere Informationen zur Suche nach "ClaimResponse.use" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

4. Der Suchparameter "patient" MUSS unterstützt werden:

    Beispiele:
    
    ```GET [base]/ClaimResponse?patient=Patient/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "ClaimResponse.patient" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).

5. Der Suchparameter "created" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ClaimResponse?created=eq2022-01-01```

    Anwendungshinweise: Weitere Informationen zur Suche nach "ClaimResponse.created" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Date Search"](http://hl7.org/fhir/R4/search.html#date).

6. Der Suchparameter "request" MUSS unterstützt werden:

    Beispiele:
    
    ```GET [base]/ClaimResponse?request=MII_PR_MTB_Antrag_Kostenuebernahme/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "ClaimResponse.request" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).

7. Der Suchparameter "outcome" MUSS unterstützt werden:

    Beispiele:
    
    ```GET [base]/ClaimResponse?outcome=complete```

    Anwendungshinweise: Weitere Informationen zur Suche nach "ClaimResponse.outcome" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

**Beispiele**

---
