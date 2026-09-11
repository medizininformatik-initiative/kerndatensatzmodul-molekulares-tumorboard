<!-- Migrated from the Simplifier IG (source(s): MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Diagnose/Diagnose-Primaertumor-Condition.page.md). TODO:REVIEW machine-translated from the German source. -->
---

### Content

This profile describes the oncological diagnosis of the primary tumor and covers the tumor spread at the *time of diagnosis* as well as at the *time of registration for the Molekulares Tumorboard (molecular tumor board)*. If the tumor is a tumor of the central nervous system, a [grading according to the WHO classification](https://publications.iarc.fr/Book-And-Report-Series/Who-Classification-Of-Tumours/Central-Nervous-System-Tumours-2021) can be applied.

### Links to other resources

In principle, the molecular tumor board diagnosis inherits all data fields of the oncology diagnosis, including ICD-O morphology, topography, etc. Per patient there should be only one `Condition` resource per primary tumor.

The MTB diagnosis therefore extends the oncology fields with further data points that are relevant for evaluation and therapy selection in the Molekulares Tumorboard, e.g.:

1. For central nervous system (CNS) tumors, the WHO grade can be specified if needed.

2. For all tumors, an OncoTree classification of the MSKCC / OnkoKB can be specified if needed.

3. Tumor spread is actually a derived data point. Theoretically it can be computed from available timestamps and references (e.g. from TNM classifications / follow-up observations in the disease history). However, since in reality the complete disease history will not be available in structured form at the data integration centers, the module team considers it acceptable for the present profiling to initially store the data points tumor spread at the time of initial diagnosis and at the time of inclusion in the Molekulares Tumorboard as explicit data points.

### Content

Mapping dataset to FHIR

**Search parameters**

The following search parameters are relevant for this module, also in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/Condition?_id=12345```

    Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/Condition?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-diagnose-primaertumor```

    Usage notes: Further information on searching for "_profile" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

3. The search parameter "code" MUST be supported:

    Examples:

    ```GET [base]/Condition?code=http://fhir.de/CodeSystem/bfarm/icd-10-gm|A15.0```

    Usage notes: Further information on searching for "Condition.code" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

4. The search parameter "subject" MUST be supported:

    Examples:

    ```GET [base]/Condition?subject=Patient/example```

    Usage notes: Further information on searching for "Condition.subject" can be found in the [FHIR base specification - section "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).

5. The search parameter "patient" MUST be supported:

    Examples:

    ```GET [base]/Condition?patient=Patient/example```

    Usage notes: Further information on searching for "Condition.subject" can be found in the [FHIR base specification - section "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).

6. The search parameter "body-site" MUST be supported:

    Examples:

    ```GET [base]/Condition?body-site=http://terminology.hl7.org/CodeSystem/icd-o-3|C44.2```

    Usage notes: Further information on searching for "Condition.body-site" can be found in the [FHIR base specification - section "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).

7. The search parameter "morphology-behaviour-icd03" MUST be supported:

    Examples:

    ```GET [base]/Condition?morphology-behaviour-icdo3=http://terminology.hl7.org/CodeSystem/icd-o-3|8503/2```

    Usage notes: Further information on searching for "Condition.extension[morphology-behaviour-icdo3]" can be found in the [FHIR base specification - section "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).

8. The search parameter "icd10gm-diagnosesicherheit" MUST be supported:

    Examples:

    ```GET [base]/Condition?icd10gm-diagnosesicherheit=https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_ICD_DIAGNOSESICHERHEIT|G```

    Usage notes: Further information on searching for "Condition.code.coding.extension.where(url='http://fhir.de/StructureDefinition/icd-10-gm-diagnosesicherheit').value" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

9. The search parameter "icd10gm-mehrfachcodierung" MUST be supported:

    Examples:

    ```GET [base]/Condition?icd10gm-mehrfachcodierung=http://fhir.de/CodeSystem/icd-10-gm-mehrfachcodierungs-kennzeichen|†```

    Usage notes: Further information on searching for "Condition.code.coding.extension.where(url='http://fhir.de/StructureDefinition/icd-10-gm-mehrfachcodierungs-kennzeichen').value" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

10. The search parameter "icd10gm-seitenlokalisation" MUST be supported:

    Examples:

    ```GET [base]/Condition?icd10gm-seitenlokalisation=https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_ICD_SEITENLOKALISATION|B```

    Usage notes: Further information on searching for "Condition.code.coding.extension.where(url = 'http://fhir.de/StructureDefinition/seitenlokalisation').value" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

**Examples**

Example: decision on the MTB case for Kim Musterperson dated 2023-03-28 (see [scenarios](guidance.html))

---
