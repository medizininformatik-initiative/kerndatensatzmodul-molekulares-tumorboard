<!-- Migrated from the Simplifier IG (source(s): MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Antrag-Kostenuebernahme/Antrag-Kostenuebernahme-Claim/Index.page.md). TODO:REVIEW machine-translated from the German source. -->
---

### Content

This profile describes the response to the application for Kostenübernahme (cost coverage) (```MII_PR_Antrag_Kostenuebernahme```). They are based on the Financial resource ClaimResponse. 
CAVE: The lifecycle status of a Financial resource does not correspond to the familiar workflows. The Financial resources maintain their own ValueSet with their own semantic meanings (see https://hl7.org/fhir/R4/valueset-fm-status.html). A ClaimResponse should therefore normally always be `active` as long as it has not been withdrawn. 

### Links to other resources
The element "prescription" references the MedicationRequest, ideally the profile MII_PR_Medikation_MedicationRequest.

### Content

Mapping dataset to FHIR

**Search parameters**

The following search parameters are relevant for the Oncology module, also in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/Claim?_id=12345```

    Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/Claim?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-antrag-kostenuebernahme```

    Usage notes: Further information on searching for "_profile" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

3. The search parameter "claim-type" MUST be supported:

    Examples:
    
    ```GET [base]/Claim?claim-type=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-antrag-kostenuebernahme```

    Usage notes: Further information on searching for "Claim.type" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

4. The search parameter "use" MUST be supported:

    Examples:
    
    ```GET [base]/Claim?use=claim```

    Usage notes: Further information on searching for "Claim.use" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

5. The search parameter "patient" MUST be supported:

    Examples:
    
    ```GET [base]/Claim?patient=Patient/example```

    Usage notes: Further information on searching for "Claim.patient" can be found in the [FHIR base specification - section "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).

6. The search parameter "created" MUST be supported:

    Examples:

    ```GET [base]/Claim?created=eq2022-01-01```

    Usage notes: Further information on searching for "Claim.created" can be found in the [FHIR base specification - section "Date Search"](http://hl7.org/fhir/R4/search.html#date).

7. The search parameter "provider" MUST be supported:

    Examples:

    ```GET [base]/Claim?provider=Practicioner/example```

    Usage notes: Further information on searching for "Claim.provider" can be found in the [FHIR base specification - section "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).

8. The search parameter "claim-related" MUST be supported:

    Examples:

    ```GET [base]/Claim?claim-related=Claim/example```

    Usage notes: Further information on searching for "Claim.related.claim" can be found in the [FHIR base specification - section "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).

9. The search parameter "claim-related-relationship" MUST be supported:

    Examples:

    ```GET [base]/Claim?claim-related-relationship=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-antrag-kostenuebernahme-antragsstadium#accepted```

    Usage notes: Further information on searching for "Claim.related.claim" can be found in the [FHIR base specification - section "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).

10. The search parameter "claim-related-relationship" MUST be supported:

    Examples:

    ```GET [base]/Claim?claim-related-relationship=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-antrag-kostenuebernahme-antragsstadium#accepted```

    Usage notes: Further information on searching for "Claim.related.relationship.coding" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

**Examples**

---
