# Beispiel Mutationslast in Tumorprobe (MTB) - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Beispiel Mutationslast in Tumorprobe (MTB)**

## Beispiel Observation: Beispiel Mutationslast in Tumorprobe (MTB)

-------

**German**

-------

Profile: [MII PR MTB Mutationslast](StructureDefinition-mii-pr-mtb-mutationslast.md) version: 2026.0.1

**status**: Final

**category**: Laboratory, A characterization of a given biomarker observation.

**code**: Mutations/Megabase [# Ratio] in Tumor

**subject**: [Maxim Muster (no stated gender), DoB Unknown](Patient-mii-exa-mtb-patient.md)

**value**: 21 Mutations/Megabase (Details: UCUM code1/1000000{Base} = '1/1000000{Base}')

**interpretation**: High

**specimen**: [Specimen: status = available; type = Tissue specimen](Specimen-mii-exa-mtb-specimen.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "MII-EXA-MTB-Mutationslast-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-mutationslast|2026.0.1"]
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
      "code" : "94076-7",
      "display" : "Mutations/Megabase [# Ratio] in Tumor"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-mtb-patient"
  },
  "valueQuantity" : {
    "value" : 21,
    "unit" : "Mutations/Megabase",
    "system" : "http://unitsofmeasure.org",
    "code" : "1/1000000{Base}"
  },
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "H",
      "display" : "High"
    }]
  }],
  "specimen" : {
    "reference" : "Specimen/mii-exa-mtb-specimen"
  }
}

```
