# Beispiel Mikrosatelliteninstabilität - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Beispiel Mikrosatelliteninstabilität**

## Beispiel Observation: Beispiel Mikrosatelliteninstabilität

-------

**German**

-------

Profile: [MII PR MTB Mikrosatelliteninstabilität](StructureDefinition-mii-pr-mtb-mikrosatelliteninstabilitaet.md) version: 2026.0.1

**status**: Final

**category**: Laboratory, A characterization of a given biomarker observation.

**code**: Microsatellite instability [Interpretation] in Cancer specimen Qualitative

**subject**: [Maxim Muster (no stated gender), DoB Unknown](Patient-mii-exa-mtb-patient.md)

**value**: 2.61 % (Details: UCUM code% = '%')

**interpretation**: Stable

**method**: Sequenzierung

**specimen**: [Specimen: status = available; type = Tissue specimen](Specimen-mii-exa-mtb-specimen.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "MII-EXA-MTB-Mikrosatelliteninstabilitaet-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-mikrosatelliteninstabilitaet|2026.0.1"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory",
      "display" : "Laboratory"
    }]
  },
  {
    "coding" : [{
      "system" : "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs",
      "code" : "biomarker-category"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "81695-9",
      "display" : "Microsatellite instability [Interpretation] in Cancer specimen Qualitative"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-mtb-patient"
  },
  "valueQuantity" : {
    "value" : 2.61,
    "system" : "http://unitsofmeasure.org",
    "code" : "%"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "LA14122-8",
      "display" : "Stable"
    }]
  }],
  "method" : {
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-msi-method-type",
      "code" : "bioinformatic",
      "display" : "Sequenzierung"
    }]
  },
  "specimen" : {
    "reference" : "Specimen/mii-exa-mtb-specimen"
  }
}

```
