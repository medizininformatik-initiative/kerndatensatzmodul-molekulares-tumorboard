# Phase 1/2 CLDN6 CAR-T-Zell-Studie - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Phase 1/2 CLDN6 CAR-T-Zell-Studie**

## Example ServiceRequest: Phase 1/2 CLDN6 CAR-T-Zell-Studie

-------

**English**

-------

Profile: [MII PR MTB Studieneinschluss Anfrage](StructureDefinition-mii-pr-mtb-studieneinschluss-anfrage.md) version: 2026.0.1

**MII EX MTB Empfehlung Priorität**: 2.1

**MII EX MTB Empfehlung Publikation**: `http://www.ncbi.nlm.nih.gov/pubmed`/37872225

**status**: Draft

**intent**: Proposal

**category**: Clinical trial (procedure)

**code**: Referral to clinical trial (procedure)

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**supportingInfo**: [ResearchStudy: identifier = https://www.medizininformatik-initiative.de/fhir/modul-mtb/sid/nct#MII_NS_MTB_NCT#04503278; status = active; primaryPurposeType = treatment; phase = phase-1; condition = Solid tumor configuration; keyword = ; period = 2020-09-16 --> 2040-01](ResearchStudy-mii-exa-mtb-study-cldn6.md)



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "mii-exa-mtb-study-request-cldn6",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-studieneinschluss-anfrage|2026.0.1"]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-prioritaet",
    "valueDecimal" : 2.1
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-publikation",
    "valueIdentifier" : {
      "system" : "http://www.ncbi.nlm.nih.gov/pubmed",
      "value" : "37872225"
    }
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
    "reference" : "ResearchStudy/mii-exa-mtb-study-cldn6"
  }]
}

```
