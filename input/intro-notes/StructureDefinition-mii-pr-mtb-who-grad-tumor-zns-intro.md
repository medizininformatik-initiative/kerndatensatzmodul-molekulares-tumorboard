<!-- Migrated from the Simplifier IG (source(s): MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Diagnose/WHO-Grad-ZNS-Observation.page.md). TODO:REVIEW machine-translated from the German source. -->
---

### Content

This profile describes the grade of the tumor according to the WHO classification of tumors of the central nervous system (CNS). In the oBDS this is captured primarily via the free-text-based field "Weitere Klassifikationen" (further classifications) and is modeled out here in the MTB as an example and semantically annotated.

### Links to other resources

The Behandlungsepisode (treatment episode) can point to a WHO grade in order to provide the correct context for diagnostics, prior therapy and therapy recommendations.

In the medium term it is planned to place this profile, together with other oncologically relevant grading scales (FIGO, hemato-oncological scales etc.), in the Oncology module.

### Content

Mapping dataset to FHIR

**Search parameters**

The following search parameters are relevant for this module, including in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/Observation?_id=12345```

    Usage notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-tumorausbreitung```

    Usage notes: Further information on searching by "_profile" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

3. The search parameter "code" MUST be supported:

    Examples:

    ```GET [base]/Observation?code=http://snomed.info/sct|396921005```

    Usage notes: Further information on searching by "code" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

4. The search parameter "subject" MUST be supported:

    Examples:

    ```GET [base]/Observation?subject=Patient/example```

    Usage notes: Further information on searching by "subject" can be found in the [FHIR base specification - section "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

5. The search parameter "encounter" MUST be supported:

    Examples:

    ```GET [base]/Observation?encounter=Encounter/example```

    Usage notes: Further information on searching by "encounter" can be found in the [FHIR base specification - section "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

6. The search parameter "combo-value-concept" MUST be supported:

    Examples:

    ```GET [base]/Observation?combo-value-concept=http://snomed.info/sct|396922003```

    Usage notes: Further information on searching by "combo-value-concept" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

**Examples**

[mii-vs-mtb-who-grad-tumor-zns](ValueSet-mii-vs-mtb-who-grad-tumor-zns.html)
