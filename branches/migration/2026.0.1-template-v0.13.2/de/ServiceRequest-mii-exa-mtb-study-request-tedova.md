# TEDOVA - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **TEDOVA**

## Beispiel ServiceRequest: TEDOVA

-------

**German**

-------

Profile: [MII PR MTB Studieneinschluss Anfrage](StructureDefinition-mii-pr-mtb-studieneinschluss-anfrage.md) version: 2026.0.1

**MII EX MTB Empfehlung Priorität**: 2.2

**status**: Draft

**intent**: Proposal

**category**: Clinical trial (procedure)

**code**: Referral to clinical trial (procedure)

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**supportingInfo**: [ResearchStudy: identifier = https://www.medizininformatik-initiative.de/fhir/modul-mtb/sid/nct#MII_NS_MTB_NCT#04713514; status = active](ResearchStudy-mii-exa-mtb-study-tedova.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "mii-exa-mtb-study-request-tedova",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-studieneinschluss-anfrage|2026.0.1"]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-prioritaet",
    "valueDecimal" : 2.2
  }],
  "status" : "draft",
  "intent" : "proposal",
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "110465008",
      "display" : "Clinical trial (procedure)"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "702475000",
      "display" : "Referral to clinical trial (procedure)"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "supportingInfo" : [{
    "reference" : "ResearchStudy/mii-exa-mtb-study-tedova"
  }]
}

```
