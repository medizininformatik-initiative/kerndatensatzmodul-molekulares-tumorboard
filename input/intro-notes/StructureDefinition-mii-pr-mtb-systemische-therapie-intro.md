<!-- Migrated from the Simplifier IG (source(s): MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Systemische-Therapie/Systemische-MTB-Therapie-Procedure.page.md). TODO:REVIEW machine-translated from the German source. -->
---

### Content

This profile describes a systemic therapy that was recorded in the Follow-Up process (Follow-Up ClinicalImpression).
This actually implemented therapy is to be compared with the recommendations of the Molekulares Tumorboard (molecular tumor board), so that one can see whether the recommended therapies were implemented.
Like the systemic therapies from the Oncology module, the Procedure resource forms the superstructure for individual medication administrations, which in individual MedicationStatements  

### Links to other resources
Medication administrations are preferably to be represented with references to the profile MII_PR_MTB_Systemische_Therapie_Medication_Statement.
It is to be distinguished from an oncology systemic therapy based on the oBDS in that this Procedure resource refers via `Procedure.basedOn` to an MTB Therapieplan (therapy plan) and via `Procedure.extension::causedBy` to a specific therapy recommendation. 

### Content

Mapping dataset to FHIR

**Search parameters**

The following search parameters are relevant for the MTB module, including in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/Procedure?_id=12345```

    Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/Procedure?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-follow-up-clinicalimpression```

    Usage notes: Further information on searching for "_profile" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

3. The search parameter "based-on" MUST be supported:

    Examples:

    ```GET [base]/Procedure?based-on=MII_PR_MTB_Therapieplan/example```

    Usage notes: Further information on searching for "Procedure.basedOn" can be found in the [FHIR base specification - section "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).

4. The search parameter "part-of" MUST be supported:

    Examples:

    ```GET [base]/Procedure?part-of=Observation/example```

    Usage notes: Further information on searching for "Procedure.partOf" can be found in the [FHIR base specification - section "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).

5. The search parameter "status" MUST be supported:

    Examples:

    ```GET [base]/Procedure?status=completed```

    Usage notes: Further information on searching for "Procedure.status" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

6. The search parameter "status-reason" MUST be supported:

    Examples:

    ```GET [base]/Procedure?status-reason=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-systemische-therapie-status-grund|payment-refused```

    Usage notes: Further information on searching for "Procedure.statusReason" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

6. The search parameter "category" MUST be supported:

    Examples:

    ```GET [base]/Procedure?category=http://snomed.info/sct|103693007```

    Usage notes: Further information on searching for "Procedure.category" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

7. The search parameter "code" MUST be supported:

    Examples:

    ```GET [base]/Procedure?code=http://fhir.de/CodeSystem/bfarm/ops|5-37```

    Usage notes: Further information on searching for "Procedure.code" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

8. The search parameter "date" MUST be supported:

    Examples:

    ```GET [base]/Procedure?date=2022-01-01```

    Usage notes: Further information on searching for "Procedure.performed" can be found in the [FHIR base specification - section "Date Search"](http://hl7.org/fhir/R4/search.html#date).

9. The search parameter "subject" MUST be supported:

    Examples:

    ```GET [base]/Procedure?subject=Patient/example```

    Usage notes: Further information on searching for "Procedure.subject" can be found in the [FHIR base specification - section "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).

10. The search parameter "encounter" MUST be supported:

    Examples:

    ```GET [base]/Procedure?subject=Encounter/example```

    Usage notes: Further information on searching for "Procedure.encounter" can be found in the [FHIR base specification - section "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).

11. The search parameter "reason-reference" MUST be supported:

    Examples:

    ```GET [base]/Procedure?subject=Condition/example```

    Usage notes: Further information on searching for "Procedure.reasonReference" can be found in the [FHIR base specification - section "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).

12. The search parameter "bodySite" MUST be supported:

    Examples:

    ```GET [base]/Procedure?bodySite=http://snomed.info/sct|80891009```

    Usage notes: Further information on searching for "Procedure.bodySite" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

12. The search parameter "outcome" MUST be supported:

    Examples:

    ```GET [base]/Procedure?outcome=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-residualstatus|R1```

    Usage notes: Further information on searching for "Procedure.outcome" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

13. The search parameter "note" MUST be supported:

    Examples:

    ```GET [base]/Procedure?note=diesdas```

    Usage notes: Further information on searching for "Procedure.outcome" can be found in the [FHIR base specification - section "String Search"](http://hl7.org/fhir/R4/search.html#string).

**Examples**

---
