<!-- Migrated from the Simplifier IG (source(s): MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Probe/Tumorzellgehalt-Observation.page.md). TODO:REVIEW machine-translated from the German source. -->
---

### Content

This profile describes the tumor cell content determined *bioinformatically* or *histologically*.

Depending on the methodology, this can either be done as part of a bioinformatic NGS analysis, or classically by light microscopic examination in pathology. The type of determination is coded under `method`.

A high tumor cell content is decisive for the quality of the sequencing process and a sufficiently precise detection of allele frequencies and variants. 

### Links to other resources

The tumor cell content can be linked from both an NGS report and a molecular pathology report via `DiagnosticReport.result`. In addition, a rebiopsy can link to a tumor cell content Observation via `ServiceRequest.supportingInfo` if the reason for the rebiopsy is that the tumor cell content of the original specimen was too low. 

### Content

Mapping dataset to FHIR

**Search parameters**

The following search parameters are relevant for this module, also in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/Observation?_id=12345```

    Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-tumorzellgehalt```

    Usage notes: Further information on searching for "_profile" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

3. The search parameter "identifier" MUST be supported:

    Examples:

    ```GET [base]/Observation?identifier=123456```

    Usage notes: Further information on searching for "identifier" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

4. The search parameter "based-on" MUST be supported:

    Examples:

    ```GET [base]/Observation?based-on=ServiceRequest/example```

    Usage notes: Further information on searching for "based-on" can be found in the [FHIR base specification - section "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

5. The search parameter "status" MUST be supported:

    Examples:

    ```GET [base]/Observation?status=final```

    Usage notes: Further information on searching for "status" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

6. The search parameter "category" MUST be supported:

    Examples:

    ```GET [base]/Observation?category=http://terminology.hl7.org/CodeSystem/observation-category|laboratory```

    Usage notes: Further information on searching for "category" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

7. The search parameter "code" MUST be supported:

    Examples:

    ```GET [base]/Observation?code=http://loinc.org|93356-4```

    Usage notes: Further information on searching for "code" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

8. The search parameter "subject" MUST be supported:

    Examples:

    ```GET [base]/Observation?subject=Patient/example```

    Usage notes: Further information on searching for "subject" can be found in the [FHIR base specification - section "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

9. The search parameter "date" MUST be supported:

    Examples:

    ```GET [base]/Observation?date=eq2021-06-10```

    Usage notes: Further information on searching for "date" can be found in the [FHIR base specification - section "Date Search"](https://hl7.org/fhir/R4/search.html#date).

10. The search parameter "component-value-quantity" MUST be supported:

    Examples:

    ```GET [base]/Observation?component-value-quantity=le20|http://unitsofmeasure.org|%```

    Usage notes: Further information on searching for "component-value-quantity" can be found in the [FHIR base specification - section "Quantity Search"](https://hl7.org/fhir/R4/search.html#quantity).

11. The search parameter "body-site" MUST be supported:

    Examples:

    ```GET [base]/Observation?body-site=http://snomed.info/sct|430304001```

    Usage notes: Further information on searching for "body-site" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

12. The search parameter "method" MUST be supported:

    Examples:

    ```GET [base]/Observation?method=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-bestimmungsmethode-tumorzellgehalt|histologic```

    Usage notes: Further information on searching for "method" can be found in the [FHIR base specification - section "Token Search"](https://hl7.org/fhir/R4/search.html#token).

13. The search parameter "specimen" MUST be supported:

    Examples:

    ```GET [base]/Observation?specimen=Specimen/example```

    Usage notes: Further information on searching for "specimen" can be found in the [FHIR base specification - section "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

14. The search parameter "has-member" MUST be supported:

    Examples:

    ```GET [base]/Observation?has-member=Observation/example```

    Usage notes: Further information on searching for "has-member" can be found in the [FHIR base specification - section "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

15. The search parameter "derived-from" MUST be supported:

    Examples:

    ```GET [base]/Observation?derived-from=ImagingStudy/example```

    Usage notes: Further information on searching for "derived-from" can be found in the [FHIR base specification - section "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

**Examples**

Example: decision on the MTB case for Kim Musterperson dated 2023-03-28 (see [scenarios](guidance.html))

[mii-cs-mtb-bestimmungsmethode-tumorzellgehalt](CodeSystem-mii-cs-mtb-bestimmungsmethode-tumorzellgehalt.html)
