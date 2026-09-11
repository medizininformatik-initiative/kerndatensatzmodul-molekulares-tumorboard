# PatientKimMusterperson-MolecularPathologyObservation-4-ER - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **PatientKimMusterperson-MolecularPathologyObservation-4-ER**

## Beispiel Observation: PatientKimMusterperson-MolecularPathologyObservation-4-ER

-------

**German**

-------

Profile: [MII PR MTB Immunohistochemistry](StructureDefinition-mii-pr-mtb-immunohistochemistry.md) version: 2026.0.1

**status**: Final

**category**: Laboratory, A characterization of a given biomarker observation.

**code**: Cells.estrogen receptor/cells in Tissue by Immune stain

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**value**: 70 % (Details: UCUM code/100 = '/100')

**specimen**: [Specimen: accessionIdentifier = Z230201/23; type = Ascitic fluid specimen (specimen)](Specimen-PatientKimMusterperson-AscitesSpecimen-2.md)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "PatientKimMusterperson-MolecularPathologyObservation-4-ER",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry|2026.0.1"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory"
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
      "code" : "14228-1",
      "display" : "Cells.estrogen receptor/cells in Tissue by Immune stain"
    },
    {
      "system" : "http://snomed.info/sct",
      "code" : "1234806008",
      "display" : "Observation using immunohistochemistry (observable entity)"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "valueQuantity" : {
    "value" : 70,
    "unit" : "%",
    "system" : "http://unitsofmeasure.org",
    "code" : "/100"
  },
  "specimen" : {
    "reference" : "Specimen/PatientKimMusterperson-AscitesSpecimen-2"
  }
}

```
