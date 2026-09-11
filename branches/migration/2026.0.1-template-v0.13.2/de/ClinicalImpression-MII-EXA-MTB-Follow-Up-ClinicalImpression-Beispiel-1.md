# Beispiel fuer eine Follow-Up Clinical Impression - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Beispiel fuer eine Follow-Up Clinical Impression **

## Beispiel ClinicalImpression: Beispiel fuer eine Follow-Up Clinical Impression 

-------

**German**

-------

Profile: [MII PR MTB Clinical Impresssion](StructureDefinition-mii-pr-mtb-follow-up-clinicalimpression.md) version: 2026.0.1

**status**: Completed

**code**: Follow-up encounter (procedure)

**subject**: [Patient/PatientExample](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.org/packages/de.basisprofil.r4/Patient/PatientExample)

**effective**: 2024-07-07

**previous**: [ClinicalImpression: status = completed; effective[x] = 2023-01-20 --> 2023-03-28](ClinicalImpression-mii-exa-mtb-kim-musterperson-behandlungsepisode.md)

### Investigations

| | |
| :--- | :--- |
| - | **Code** |
| * | ongoing |

**supportingInfo**: 

* [MII_PR_MTB_Systemische_Therapie/Example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.org/packages/de.basisprofil.r4/MII_PR_MTB_Systemische_Therapie/Example)
* [MII_PR_MTB_Antrag_Kostenuebernahme/Example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.org/packages/de.basisprofil.r4/MII_PR_MTB_Antrag_Kostenuebernahme/Example)
* [MII_PR_MTB_Antwort_Kostenuebernahme/Example](https://simplifier.net/resolve?scope=de.basisprofil.r4@1.6.0&canonical=http://fhir.org/packages/de.basisprofil.r4/MII_PR_MTB_Antwort_Kostenuebernahme/Example)



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
    "reference" : "Patient/PatientExample"
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
    "reference" : "MII_PR_MTB_Systemische_Therapie/Example"
  },
  {
    "reference" : "MII_PR_MTB_Antrag_Kostenuebernahme/Example"
  },
  {
    "reference" : "MII_PR_MTB_Antwort_Kostenuebernahme/Example"
  }]
}

```
