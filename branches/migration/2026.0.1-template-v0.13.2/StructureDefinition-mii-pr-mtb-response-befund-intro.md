<!-- Migrated from the Simplifier IG (source(s): MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Systemische-Therapie/Befund-Response/Befund-Response-Observation.page.md). TODO:REVIEW machine-translated from the German source. -->
---

### Content

This profile belongs to the Systemic Therapy profile and denotes the finding on the response to the respective systemic therapy. \
For this reason, the element ```Observation.partOf``` is used to reference the systemic therapy (i.e. the Procedure).
In addition, ```Observation.method``` can be used to code whether a structured assessment according to RECIST or RANO was performed.

**Open questions** \
The profile currently inherits from MII_PR_Onko_Verlauf. There it is intended that, in addition to the overall assessment ```Observation.valueCodeableConcept```, at least one individual assessment of tumor, lymph nodes, or distant metastases must also be present via ```Observation.component```. This is not intended in DNPMv2.

Furthermore, for the overall assessment, DNPMv2 provides for a different value set (```https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-response-befund-beurteilung```) than the Oncology module.

### Relationships to other resources
In terms of content, there is overlap with the Verlauf (progress) profile of the Oncology module.
That profile, however, is populated directly from cancer registry data, whereby the documentation criteria of the tumor documentation staff are also applied.
This profile is therefore intended to represent, with focus, a report of the tumor response according to RECIST.

### Content

Mapping of the data set to FHIR

**Search parameters**

The following search parameters are relevant for the Oncology module, including in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/Observation?_id=12345```

    Usage notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-response-befund```

    Usage notes: Further information on searching by "_profile" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

3. The search parameter "identifier" MUST be supported:

    Examples:

    ```GET [base]/Observation?identifier=5466```

    Usage notes: Further information on searching by "Observation.identifier" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

4. The search parameter "part-of" MUST be supported:

    Examples:

    ```GET [base]/Observation?part-of=MII_PR_MTB_Systemische_Therapie/example```

    Usage notes: Further information on searching by "Observation.partOf" can be found in the [FHIR base specification - section "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).

5. The search parameter "status" MUST be supported:

    Examples:

    ```GET [base]/Observation?status=completed```

    Usage notes: Further information on searching by "Observation.status" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

6. The search parameter "code" MUST be supported:

    Examples:

    ```GET [base]/Observation?code=http://fhir.de/CodeSystem/bfarm/ops|5-37```

    Usage notes: Further information on searching by "Observation.code" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

7. The search parameter "subject" MUST be supported:

    Examples:

    ```GET [base]/Observation?subject=Patient/example```

    Usage notes: Further information on searching by "Observation.subject" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).

8. The search parameter "focus" MUST be supported:

    Examples:

    ```GET [base]/Observation?focus=MII_PR_Onko_Diagnose_Primaertumor/example```

    Usage notes: Further information on searching by "Observation.focus" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).

9. The search parameter "encounter" MUST be supported:

    Examples:

    ```GET [base]/Observation?subject=Encounter/example```

    Usage notes: Further information on searching by "Observation.encounter" can be found in the [FHIR base specification - section "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).

10. The search parameter "method" MUST be supported:

    Examples:

    ```GET [base]/Observation?method=Encounter/example```

    Usage notes: Further information on searching by "Observation.method" can be found in the [FHIR base specification - section "token Search"](http://hl7.org/fhir/R4/search.html#token).

11. The search parameter "combo-value-concept" MUST be supported:

    Examples:

    ```GET [base]/Observation?combo-value-concept=ttps://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-response-befund-beurteilung|MR```

    Usage notes: Further information on searching by "Observation.valueCodeableConcept" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

12. The search parameter "component-code-value-concept" MUST be supported:

    Examples:

    ```GET [base]/Observation?component-code-value-concept=http://loinc.org|12345-6$http://fhir.de/CodeSystem/sct|12345678```

Usage notes: Further information on searching by "components" can be found in the [FHIR base specification - section "composite"](http://hl7.org/fhir/R4/search.html#composite).

**Examples**

---
