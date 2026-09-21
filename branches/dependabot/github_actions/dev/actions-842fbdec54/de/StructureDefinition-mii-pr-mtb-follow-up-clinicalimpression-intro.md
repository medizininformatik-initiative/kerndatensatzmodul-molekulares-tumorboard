<!-- Migriert aus dem Simplifier-IG (Quelle(n): MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Follow-Up-ClinicalImpression.page.md). TODO:REVIEW -->
---

### Inhalt

Dieses Profil beschreibt Informationen über den administrativen Vorgang "Follow-Up" und den dabei eingeholten Informationen.
Im Zuge dieses Follow-Up Prozesses werden die durchgeführten Therapien (MII_PR_MTB_Systemische_Therapie) inkl nachfolgender Therapie-Response und ggfs. deren Kostenübernahmen (MII_PR_MTB_Antrag_Kostenuebernahme & MII_PR_MTB_Antwort_Kostenuebernahme) dokumentiert. 
Zusätzlich ist hier der Status des Therapieplans ```ClinicalImpression.investigation``` und eine Begründung bei Nicht-Durchführung ```ClinicalImpression.statusReason``` enthalten.

### Verknüpfungen zu anderen Ressourcen
Die Follow-up ClinicalImpression verweisen alle unter ClinicalImpression.previous auf die Behandlungsepisode

### Inhalt

Mapping Datensatz zu FHIR

**Suchparameter**

Folgende Suchparameter sind für das Modul MTB relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ClinicalImpression?_id=12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ClinicalImpression?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-follow-up-clinicalimpression```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

3. Der Suchparameter "status" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ClinicalImpression?status=completed```

    Anwendungshinweise: Weitere Informationen zur Suche nach "ClinicalImpression.status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

4. Der Suchparameter "statusReason" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ClinicalImpression?statusReson=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-systemische-therapie-status-grund|payment-refused```

    Anwendungshinweise: Weitere Informationen zur Suche nach "ClinicalImpression.statusReason" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

5. Der Suchparameter "subject" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ClinicalImpression?subject=Patient/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "ClinicalImpression.subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

8. Der Suchparameter "investigation" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ClinicalImpression?investigation=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-follow-up-status|ongoing```

    Anwendungshinweise: Weitere Informationen zur Suche nach "ClinicalImpression.investigation" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token).

9. Der Suchparameter "supporting-info" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ClinicalImpression?supporting-info=MII_PR_MTB_Systemische_Therapie/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "ClinicalImpression.supportingInfo" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference).

**Beispiele**

---
