<!-- Migrated from the Simplifier IG (source(s): MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/NGS-Bericht/Genomic-Study/Genomic-Study-Device-Device.page.md). TODO:REVIEW machine-translated from the German source. -->
---

### Content

This profile describes the devices, laboratory materials, and software pipelines referenced in the Genomic Study Analysis profile. 

### Content

Mapping dataset to FHIR

**Search parameters**

The following search parameters are relevant for this module, including in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/Device?_id=12345```

    Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/Device?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-genomic-study-device```

    Usage notes: Further information on searching for "_profile" can be found in the 
    [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

4. The search parameter "device-name" MUST be supported:

    Examples:

    ```GET [base]/Device?deviceName=NextSeq+2000```

    Usage notes: Further information on searching for "code" can be found in the 
    [FHIR base specification - section "Token Search".](https://hl7.org/fhir/R4/search.html#token).

5. The search parameter "manufacturer" MUST be supported:

    Examples:

    ```GET [base]/Device?manufacturer=Illumina```

    Usage notes: Further information on searching for "subject" can be found in the 
    [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

6. The search parameter "type" MUST be supported:

    Examples:

    ```GET [base]/Device?type=sequencer```

    Usage notes: Further information on searching for "encounter" can be found in the 
    [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).

**Examples**

### Preparation Library

---
