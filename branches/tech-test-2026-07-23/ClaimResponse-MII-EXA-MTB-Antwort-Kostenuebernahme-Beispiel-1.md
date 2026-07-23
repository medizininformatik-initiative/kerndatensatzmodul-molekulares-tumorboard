# Beispiel fuer eine Antwort auf den Antrag auf Kostenuebernahme - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel fuer eine Antwort auf den Antrag auf Kostenuebernahme**

## Example ClaimResponse: Beispiel fuer eine Antwort auf den Antrag auf Kostenuebernahme

Profile: [MII PR MTB Anwort Kostenuebernahme](StructureDefinition-mii-pr-mtb-antwort-kostenuebernahme.md) version: 2026.0.1

**MII EX MTB Antwort Kostenuebernahme Entscheidung**: Abgelehnt

**MII EX MTB Antwort Kostenuebernahme Ablehnungsgrund**: Andere Therapie vorgeschlagen

**status**: Active

**type**: institutional

**use**: Claim

**patient**: [Patient/example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/example)

**created**: 2024-07-07

**insurer**: [Organization/InstitutionID](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&canonical=http://fhir.org/packages/de.basisprofil.r4/Organization/InstitutionID)

**request**: [Claim: status = active; type = institutional; use = claim; created = 2024-07-07; priority = Normal](Claim-MII-EXA-MTB-Antrag-Kostenuebernahme-Beispiel-1.md)

**outcome**: Processing Complete



## Resource Content

```json
{
  "resourceType" : "ClaimResponse",
  "id" : "MII-EXA-MTB-Antwort-Kostenuebernahme-Beispiel-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-antwort-kostenuebernahme|2026.0.1"]
  },
  "extension" : [{
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-antwort-kostenuebernahme-entscheidung",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-antwort-kostenuebernahme-entscheidung",
        "code" : "rejected"
      }]
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-antwort-kostenuebernahme-ablehnungsgrund",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-antwort-kostenuebernahme-ablehnungsgrund",
        "code" : "other-therapy-recommended"
      }]
    }
  }],
  "status" : "active",
  "type" : {
    "coding" : [{
      "code" : "institutional"
    }]
  },
  "use" : "claim",
  "patient" : {
    "reference" : "Patient/example"
  },
  "created" : "2024-07-07",
  "insurer" : {
    "reference" : "Organization/InstitutionID"
  },
  "request" : {
    "reference" : "Claim/MII-EXA-MTB-Antrag-Kostenuebernahme-Beispiel-1"
  },
  "outcome" : "complete"
}

```
