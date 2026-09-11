# Adavosertib - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Adavosertib**

## Beispiel MedicationRequest: Adavosertib

-------

**German**

-------

Profile: [MII PR MTB Therapieempfehlung Systemische Therapie](StructureDefinition-mii-pr-mtb-therapieempfehlung.md) version: 2026.0.1

**status**: Draft

**intent**: Option

**medication**: ADAVOSERTIB

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**authoredOn**: 2023-03-28

**reasonReference**: [Condition Bösartige Neubildung: Peritoneum, nicht näher bezeichnet](Condition-PatientKimMusterperson-PrimaryDiagnosis-2.md)



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "mii-exa-mtb-medication-request-adavosertib",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung|2026.0.1"]
  },
  "status" : "draft",
  "intent" : "option",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://fdasis.nlm.nih.gov",
      "code" : "K2T6HJX3I3",
      "display" : "ADAVOSERTIB"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "authoredOn" : "2023-03-28",
  "reasonReference" : [{
    "reference" : "Condition/PatientKimMusterperson-PrimaryDiagnosis-2"
  }]
}

```
