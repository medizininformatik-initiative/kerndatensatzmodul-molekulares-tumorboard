<!-- Migrated from the Simplifier IG (source(s): MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Antrag-Kostenuebernahme/Antwort-Kostenuebernahme-ClaimResponse/Index.page.md). TODO:REVIEW machine-translated from the German source. -->
---

### Content

This profile describes the response to the application for Kostenübernahme (cost coverage) (```MII_PR_Antrag_Kostenuebernahme```). They are based on the Financial resource ClaimResponse. 
CAVE: The lifecycle status of a Financial resource does not correspond to the familiar workflows. The Financial resources maintain their own ValueSet with their own semantic meanings (see https://hl7.org/fhir/R4/valueset-fm-status.html). A ClaimResponse should therefore normally always be `active` as long as it has not been withdrawn. 

### Relationships to other resources
- The preceding application for Kostenübernahme is referenced via the element ```ClaimResponse.request```. That is also where the references to the requested diagnostics / therapy as ServiceRequest / MedicationRequest / RequestGroup are located. 
- D

### Alternative profilings / ballot support
1. Both the decision and the reason for rejection are stored here as extensions. As an alternative, the regular FHIR R5 backport of the `ClaimResponse.decision` element added in R5 could serve as a replacement. 
2. As with the Claim, based on retrospective data capture the ExplanationOfBenefit resource would be conceivable as a combination of Claims and ClaimResponses 

### Content

Mapping dataset to FHIR

**Search parameters**

The following search parameters are relevant for the Oncology module, also in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/ClaimResponse?_id=12345```

    Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/ClaimResponse?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-antwort-kostenuebernahme```

    Usage notes: Further information on searching for "_profile" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

3. The search parameter "use" MUST be supported:

    Examples:
    
    ```GET [base]/ClaimResponse?use=claim```

    Usage notes: Further information on searching for "ClaimResponse.use" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

4. The search parameter "patient" MUST be supported:

    Examples:
    
    ```GET [base]/ClaimResponse?patient=Patient/example```

    Usage notes: Further information on searching for "ClaimResponse.patient" can be found in the [FHIR base specification - section "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).

5. The search parameter "created" MUST be supported:

    Examples:

    ```GET [base]/ClaimResponse?created=eq2022-01-01```

    Usage notes: Further information on searching for "ClaimResponse.created" can be found in the [FHIR base specification - section "Date Search"](http://hl7.org/fhir/R4/search.html#date).

6. The search parameter "request" MUST be supported:

    Examples:
    
    ```GET [base]/ClaimResponse?request=MII_PR_MTB_Antrag_Kostenuebernahme/example```

    Usage notes: Further information on searching for "ClaimResponse.request" can be found in the [FHIR base specification - section "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).

7. The search parameter "outcome" MUST be supported:

    Examples:
    
    ```GET [base]/ClaimResponse?outcome=complete```

    Usage notes: Further information on searching for "ClaimResponse.outcome" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

**Examples**

---
