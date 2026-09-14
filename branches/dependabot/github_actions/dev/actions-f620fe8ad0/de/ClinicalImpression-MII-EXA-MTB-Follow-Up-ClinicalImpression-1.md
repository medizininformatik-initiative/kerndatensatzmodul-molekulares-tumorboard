# Follow-Up Prozess zur Überprüfung der durchgeführten Therapien & Kostenübernahmen - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* ****Follow-Up Prozess zur Überprüfung der durchgeführten Therapien & Kostenübernahmen/b>

## Beispiel ClinicalImpression: Follow-Up Prozess zur Überprüfung der durchgeführten Therapien & Kostenübernahmen

-------

**German**

-------

Profile: [MII PR MTB Clinical Impresssion](StructureDefinition-mii-pr-mtb-follow-up-clinicalimpression.md) version: 2026.0.1

**status**: Completed

**code**: Follow-up encounter (procedure)

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**effective**: 2023-10-22

**previous**: [ClinicalImpression: status = completed; effective[x] = 2023-01-20 --> 2023-03-28](ClinicalImpression-mii-exa-mtb-kim-musterperson-behandlungsepisode.md)

### Investigations

| | |
| :--- | :--- |
| - | **Code** |
| * | completed |

**supportingInfo**: 

* [Procedure Zytostatische Chemotherapie, Immuntherapie und antiretrovirale Therapie](Procedure-MII-EXA-MTB-Systemische-Therapie-1.md)
* [Claim: status = active; type = institutional; use = claim; created = 2023-03-10; priority = Normal](Claim-MII-EXA-MTB-Antrag-Kostenuebernahme-1.md)
* [ClaimResponse: status = active; type = institutional; use = claim; created = 2023-05-01; outcome = complete](ClaimResponse-MII-EXA-MTB-Antwort-Kostenuebernahme-1.md)



## Resource Content

```json
{
  "resourceType" : "ClinicalImpression",
  "id" : "MII-EXA-MTB-Follow-Up-ClinicalImpression-1",
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
    "reference" : "Patient/PatientKimMusterperson"
  },
  "effectiveDateTime" : "2023-10-22",
  "previous" : {
    "reference" : "ClinicalImpression/mii-exa-mtb-kim-musterperson-behandlungsepisode"
  },
  "investigation" : [{
    "code" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-follow-up-status",
        "code" : "completed"
      }]
    }
  }],
  "supportingInfo" : [{
    "reference" : "Procedure/MII-EXA-MTB-Systemische-Therapie-1"
  },
  {
    "reference" : "Claim/MII-EXA-MTB-Antrag-Kostenuebernahme-1"
  },
  {
    "reference" : "ClaimResponse/MII-EXA-MTB-Antwort-Kostenuebernahme-1"
  }]
}

```
