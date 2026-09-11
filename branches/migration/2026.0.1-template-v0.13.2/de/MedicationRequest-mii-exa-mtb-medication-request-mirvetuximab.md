# Mirvetuximab soravtansine - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Mirvetuximab soravtansine**

## Beispiel MedicationRequest: Mirvetuximab soravtansine

-------

**German**

-------

Profile: [MII PR MTB Therapieempfehlung Systemische Therapie](StructureDefinition-mii-pr-mtb-therapieempfehlung.md) version: 2026.0.1

**MII EX MTB Empfehlung Priorität**: 1

**MII EX MTB Empfehlung Evidenzgraduierung**: m1A

**MII EX MTB Empfehlung Publikation**: `http://doi.org`/10.1200/JCO.2022.40.16_suppl.5512

**MII EX MTB Empfehlung Publikation**: `http://www.ncbi.nlm.nih.gov/pubmed`/38055253

**status**: Completed

**intent**: Proposal

**medication**: MIRVETUXIMAB SORAVTANSINE

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**authoredOn**: 2023-03-28

**reasonReference**: [Condition Bösartige Neubildung: Peritoneum, nicht näher bezeichnet](Condition-PatientKimMusterperson-PrimaryDiagnosis-2.md)

**basedOn**: [CarePlan: status = active; intent = plan; category = prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie); created = 2023-03-28](CarePlan-mii-exa-mtb-kim-musterperson-therapieplan.md)



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "mii-exa-mtb-medication-request-mirvetuximab",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung|2026.0.1"]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-prioritaet",
    "valuePositiveInt" : 1
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-evidenzgraduierung",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-empfehlung-evidenzgrad",
        "code" : "m1A"
      }]
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-publikation",
    "valueIdentifier" : {
      "system" : "http://doi.org",
      "value" : "10.1200/JCO.2022.40.16_suppl.5512"
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-publikation",
    "valueIdentifier" : {
      "system" : "http://www.ncbi.nlm.nih.gov/pubmed",
      "value" : "38055253"
    }
  }],
  "status" : "completed",
  "intent" : "proposal",
  "medicationCodeableConcept" : {
    "coding" : [{
      "system" : "http://fdasis.nlm.nih.gov",
      "code" : "98DE7VN88D",
      "display" : "MIRVETUXIMAB SORAVTANSINE"
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "version" : "2025",
      "code" : "L01FX26",
      "display" : "Mirvetuximab soravtansin"
    },
    {
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "version" : "2025",
      "code" : "L01FX",
      "display" : "Andere monoklonale Antikörper und Antikörper-Wirkstoff-Konjugate"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "authoredOn" : "2023-03-28",
  "reasonReference" : [{
    "reference" : "Condition/PatientKimMusterperson-PrimaryDiagnosis-2"
  }],
  "basedOn" : [{
    "reference" : "CarePlan/mii-exa-mtb-kim-musterperson-therapieplan"
  }]
}

```
