<!-- Migrated from the Simplifier IG (source(s): MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Genetische-Implikationen/Therapeutische-Implikation-Observation.page.md). TODO:REVIEW machine-translated from the German source. -->
---

### Content
The profile describes the annotation of therapy options based on molecular characteristics (e.g. genetic variants, immunohistochemical findings). The therapeutic implication covers the view on both medication-based and non-medication-based therapy options. 
This is in particular about the presumed resistances / susceptibilities of a tumor to certain agents, as well as the and evidence strength of this implication and the pathogenicity of the present variant / variant combination. An implication can arise from individual variants / biomarkers or from a combination of several. 

Therapeutic implications are knowledge artifacts that can change with the current state of knowledge. This, along with the fact that there can be regular updates of an evidence, led to the modeling decision of the Clinical Genomics team to keep the therapeutic implication separate from the actual variant description. This profile is related to the diagnostic implication profile, which is used primarily for the notation of pathogenicity for variants without a concrete therapy option (and is additionally used, for example, in the context of variant determination in rare diseases). 
 

### Content

Mapping dataset to FHIR

**Search parameters**

The following search parameters are relevant for the Oncology module, including in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/Observation?_id=example-mii-molgen-variante-1```

    Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapeutische-implikation```

    Usage notes: Further information on searching for "_profile" can be found in the 
    [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

3. The search parameter "status" MUST be supported:

    Examples:

    ```GET [base]/Observation?status=final```

    Usage notes: Further information on searching for "status" can be found in the 
    [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).

4. The search parameter "category" MUST be supported:

    Examples:

    ```GET [base]/Observation?category=http://terminology.hl7.org/CodeSystem/observation-category|laboratory```

    Usage notes: Further information on searching for "category" can be found in the 
    [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).

5. The search parameter "code" MUST be supported:

    Examples:

    ```GET [base]/Observation?code=http://loinc.org|therapeutic-implication```

    Usage notes: Further information on searching for "code" can be found in the 
    [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).

6. The search parameter "subject" MUST be supported:

    Examples:

    ```GET [base]/Observation?subject=Patient/example-mii-mtb-patient```

    Usage notes: Further information on searching for "subject" can be found in the 
    [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

7. The search parameter "focus" MUST be supported:

    Examples:

    ```GET [base]/Observation?focus=Condition/example-mii-mtb-diagnose```

    Usage notes: Further information on searching for "focus" can be found in the 
    [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

8. The search parameter "encounter" MUST be supported:

    Examples:

    ```GET [base]/Observation?encounter=Encounter/12345```

    Usage notes: Further information on searching for "encounter" can be found in the 
    [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

**Examples**

---
