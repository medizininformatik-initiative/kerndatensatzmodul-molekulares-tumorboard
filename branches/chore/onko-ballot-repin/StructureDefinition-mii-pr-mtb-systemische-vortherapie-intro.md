<!-- Migrated from the Simplifier IG (source(s): MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Systemische-Vortherapie-Procedure.page.md). TODO:REVIEW machine-translated from the German source. -->
---

### Content

This profile describes a systemic (medication-based) prior therapy from the perspective of the Molekulares Tumorboard (molecular tumor board). 

It is based on the profile for systemic therapy from the Oncology module, whereby supplementary information on guideline therapy, i.e. the *therapy line* and the *approval status*, can be provided. Beyond that 

### Links to other resources

Where possible, data duplication with already existing procedures (e.g. systemic therapy Procedures) and medication administrations (e.g. MedicationStatements) from the Oncology module should be avoided. Instead, already existing resources can be tested with additional information such as therapy line and approval status.  

### Content

Mapping dataset to FHIR

**Search parameters**

The following search parameters are relevant for this module, including in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/Procedure?_id=103270```

    Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/Procedure?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-vortherapie```

    Usage notes: Further information on searching for "_profile" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

3. The search parameter "based-on" MUST be supported:

    Examples:

    ```GET [base]/Procedure?based-on=CarePlan/example```

    Usage notes: Further information on searching for "based-on" can be found in the [FHIR base specification - section "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).

4. The search parameter "part-of" MUST be supported:

    Examples:

    ```GET [base]/Procedure?part-of=Observation/example```

    Usage notes: Further information on searching for "part-of" can be found in the [FHIR base specification - section "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).

5. The search parameter "status" MUST be supported:

    Examples:

    ```GET [base]/Procedure?status=completed```

    Usage notes: Further information on searching for "status" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

6. The search parameter "status-reason" MUST be supported:

    Examples:

    ```GET [base]/Procedure?status-reason=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-therapiestatusgrund|patient-wish```

    Usage notes: Further information on searching for "status-reason" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

7. The search parameter "category" MUST be supported:

    Examples:

    ```GET [base]/Procedure?category=http://snomed.info/sct|103693007```

    Usage notes: Further information on searching for "Procedure.category" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

8. The search parameter "code" MUST be supported:

    Examples:

    ```GET [base]/Procedure?code=http://fhir.de/CodeSystem/bfarm/ops|5-37```

    Usage notes: Further information on searching for "Procedure.code" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

9. The search parameter "subject" MUST be supported:

    Examples:

    ```GET [base]/Procedure?subject=Patient/example```

    Usage notes: Further information on searching for "Procedure.subject" can be found in the [FHIR base specification - section "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).

10. The search parameter "encounter" MUST be supported:

    Examples:

    ```GET [base]/Procedure?encounter=Encounter/example```

    Usage notes: Further information on searching for "encounter" can be found in the [FHIR base specification - section "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

11. The search parameter "date" MUST be supported:

    Examples:

    ```GET [base]/Procedure?date=eq2025-01-01```

    Usage notes: Further information on searching for "date" can be found in the [FHIR base specification - section "Date Search"](https://hl7.org/fhir/R4/search.html#date).

12. The search parameter "reason-reference" MUST be supported:

    Examples:

    ```GET [base]/Procedure?reason-reference=Condition/example```

    Usage notes: Further information on searching for "reason-reference" can be found in the [FHIR base specification - section "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

13. The search parameter "bodySite" MUST be supported:

    Examples:

    ```GET [base]/Procedure?bodySite=http://snomed.info/sct|430304001```

    Usage notes: Further information on searching for "Procedure.bodySite" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

14. The search parameter "outcome" MUST be supported:

    Examples:

    ```GET [base]/Procedure?outcome=http://snomed.info/sct|80891009```

    Usage notes: Further information on searching for "outcome" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

15. The search parameter "note" MUST be supported:

    Examples:

    ```GET [base]/Procedure?note=contains:Carbo```

    Usage notes: Further information on searching for "note" can be found in the [FHIR base specification - section "String Search"](http://hl7.org/fhir/R4/search.html#string).

16. The search parameter "dokumentationsdatum" MUST be supported:

    Examples:

    ```GET [base]/Procedure?dokumentationsdatum=2022-01-01```

    Usage notes: Further information on searching for "dokumentationsdatum" can be found in the [FHIR base specification - section "Date Search"](http://hl7.org/fhir/R4/search.html#date).

17. The search parameter "durchfuehrungsabsicht" MUST be supported:

    Examples:

    ```GET [base]/Procedure?durchfuehrungsabsicht=http://snomed.info/sct|262202000```

    Usage notes: Further information on searching for "durchfuehrungsabsicht" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

18.  The search parameter "extension-intention" MUST be supported:

    Examples:

    ```GET [base]/Procedure?extension-intention=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention|K```

    Usage notes: Further information on searching for "extension-intention" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

18.  The search parameter "extension-intention" MUST be supported:

    Examples:

    ```GET [base]/Procedure?extension-stellung=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-stellung-zur-op|N```

    Usage notes: Further information on searching for "extension-intention" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

**Examples**

Example: Decision on the MTB case for Kim Musterperson dated 2023-03-28 (see [Scenarios](guidance.html))

[mii-cs-mtb-therapiestatusgrund](CodeSystem-mii-cs-mtb-therapiestatusgrund.html)
