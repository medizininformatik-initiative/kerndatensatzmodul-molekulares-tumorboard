<!-- Migrated from the Simplifier IG (source(s): MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Systemische-Therapie/Systemische-Therapie-Medication-Statement-Medication-Statement.page.md). TODO:REVIEW machine-translated from the German source. -->
---

### Content
Systemic Therapy Medication Statement belongs to the Systemic Therapy to represent medication administrations. For this purpose, the slices for medicationCodeableConcept were adopted from the MII_PR_Medikation_MedicationStatement profile.
adopted.
In this profile there is the additional option of specifying a dose density, which indicates to what extent a dose reduction took place.

### Relationships to other resources
The partOf element always references the superordinate Systemic Therapy Procedure.

### Content

Mapping of the data set to FHIR

**Search parameters**

The following search parameters are relevant for the Oncology module, including in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/MedicationStatement?_id=12345```

    Usage notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/MedicationStatement?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemtherapie-medication-statement```

    Usage notes: Further information on searching by "_profile" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "based-on" MUST be supported:

    Examples:

    ```GET [base]/MedicationStatement?based-on=MII_PR_MTB_Therapieempfehlung/example```

    Usage notes: Further information on searching by "MedicationStatement.basedOn" can be found in the [FHIR base specification - section "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).

3. The search parameter "part-of" MUST be supported:

    Examples:

    ```GET [base]/MedicationStatement?part-of=MII_PR_MTB_Systemische_Therapie/example```

    Usage notes: Further information on searching by "MedicationStatement.partOf" can be found in the [FHIR base specification - section "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).

5. The search parameter "status" MUST be supported:

    Examples:

    ```GET [base]/MedicationStatement?status=completed```

    Usage notes: Further information on searching by "MedicationStatement.status" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

5. The search parameter "medication" MUST be supported:

    Examples:

    ```GET [base]/MedicationStatement?medication=completed```

    Usage notes: Further information on searching by "MedicationStatement.medication" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

8. The search parameter "effective" MUST be supported:

    Examples:

    ```GET [base]/MedicationStatement?effective=2022-01-01```

    Usage notes: Further information on searching by "MedicationStatement.effective" can be found in the [FHIR base specification - section "Date Search"](http://hl7.org/fhir/R4/search.html#date).

13. The search parameter "note" MUST be supported:

    Examples:

    ```GET [base]/MedicationStatement?note=diesdas```

    Usage notes: Further information on searching by "MedicationStatement.outcome" can be found in the [FHIR base specification - section "String Search"](http://hl7.org/fhir/R4/search.html#string).

5. The search parameter "dosisdichte" MUST be supported:

    Examples:

    ```GET [base]/MedicationStatement?dosisdichte=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-dosisdichte|>50%```

    Usage notes: Further information on searching by "MedicationStatement.dosage[Dosisdichte]" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

**Examples**

---
