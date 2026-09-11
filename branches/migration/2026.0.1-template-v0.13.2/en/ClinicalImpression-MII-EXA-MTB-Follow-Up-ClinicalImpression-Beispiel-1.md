# Beispiel fuer eine Follow-Up Clinical Impression - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel fuer eine Follow-Up Clinical Impression **

## Example ClinicalImpression: Beispiel fuer eine Follow-Up Clinical Impression 

-------

**English**

-------

Profile: [MII PR MTB Clinical Impresssion](StructureDefinition-mii-pr-mtb-follow-up-clinicalimpression.md) version: 2026.0.1

**status**: Completed

**code**: Follow-up encounter (procedure)

**subject**: [Maxim Muster (no stated gender), DoB Unknown](Patient-mii-exa-mtb-patient.md)

**effective**: 2024-07-07

**previous**: [ClinicalImpression: status = completed; effective[x] = 2023-01-20 --> 2023-03-28](ClinicalImpression-mii-exa-mtb-kim-musterperson-behandlungsepisode.md)

### Investigations

| | |
| :--- | :--- |
| - | **Code** |
| * | ongoing |

**supportingInfo**: 

* [Procedure Zytostatische Chemotherapie, Immuntherapie und antiretrovirale Therapie](Procedure-MII-EXA-MTB-Systemtherapie-Beispiel-1.md)
* [Claim: status = active; type = institutional; use = claim; created = 2024-07-07; priority = Normal](Claim-MII-EXA-MTB-Antrag-Kostenuebernahme-Beispiel-1.md)
* [ClaimResponse: extension = Abgelehnt,Andere Therapie vorgeschlagen; status = active; type = institutional; use = claim; created = 2024-07-07; outcome = complete](ClaimResponse-MII-EXA-MTB-Antwort-Kostenuebernahme-Beispiel-1.md)



## Resource Content

```json
{
  "resourceType" : "ClinicalImpression",
  "id" : "MII-EXA-MTB-Follow-Up-ClinicalImpression-Beispiel-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-follow-up-clinicalimpression|2026.0.1"]
  },
  "status" : "completed",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "390906007",
      "display" : "Follow-up encounter (procedure)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-mtb-patient"
  },
  "effectiveDateTime" : "2024-07-07",
  "previous" : {
    "reference" : "ClinicalImpression/mii-exa-mtb-kim-musterperson-behandlungsepisode"
  },
  "investigation" : [{
    "code" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-follow-up-status",
        "code" : "ongoing"
      }]
    }
  }],
  "supportingInfo" : [{
    "reference" : "Procedure/MII-EXA-MTB-Systemtherapie-Beispiel-1"
  },
  {
    "reference" : "Claim/MII-EXA-MTB-Antrag-Kostenuebernahme-Beispiel-1"
  },
  {
    "reference" : "ClaimResponse/MII-EXA-MTB-Antwort-Kostenuebernahme-Beispiel-1"
  }]
}

```
