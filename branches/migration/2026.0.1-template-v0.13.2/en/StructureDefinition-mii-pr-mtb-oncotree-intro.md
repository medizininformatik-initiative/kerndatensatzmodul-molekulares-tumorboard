<!-- Migrated from the Simplifier IG (source(s): MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Diagnose/Oncotree-Observation.page.md). TODO:REVIEW machine-translated from the German source. -->
---

### Content

This profile describes the Oncotree classification used in precision medicine.

It combines localization and morphological descriptions and is therefore considered better suited for personalized medicine than the more widespread ICD-O classification with topography and morphology. The [current stable version is published by MSKCC](https://oncotree.mskcc.org/?version=oncotree_latest_stable&field=NAME) and is used in the [OnkoKB database](https://www.oncokb.org). 

Note that the OncoTree classification is not yet provided as a standalone CodeSystem/ValueSet for the commenting phase - however, this is planned at the latest with the official release. 

### Content

Mapping dataset to FHIR

**Search parameters**

The following search parameters are relevant for this module, including in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/Observation?_id=12345```

    Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-oncotree```

    Usage notes: Further information on searching for "_profile" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

3. The search parameter "code" MUST be supported:

    Examples:

    ```GET [base]/Observation?code=http://snomed.info/sct|371469007```

    Usage notes: Further information on searching for "code" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

4. The search parameter "subject" MUST be supported:

    Examples:

    ```GET [base]/Observation?subject=Patient/example```

    Usage notes: Further information on searching for "subject" can be found in the [FHIR base specification - section "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

5. The search parameter "encounter" MUST be supported:

    Examples:

    ```GET [base]/Observation?encounter=Encounter/example```

    Usage notes: Further information on searching for "encounter" can be found in the [FHIR base specification - section "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

6. The search parameter "combo-value-concept" MUST be supported:

    Examples:

    ```GET [base]/Observation?combo-value-concept=http://data.mskcc.org/ontologies/oncotree|HGONEC```

    Usage notes: Further information on searching for "combo-value-concept" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

**Examples**

Example: Decision on the MTB case for Kim Musterperson dated 2023-03-28 (see [Scenarios](guidance.html))

[mii-vs-mtb-oncotree](ValueSet-mii-vs-mtb-oncotree.html)
