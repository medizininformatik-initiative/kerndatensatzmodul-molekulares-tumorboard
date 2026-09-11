# 01.05.2023 Krankenkassenantrag Mirvetuximab soravtansine genehmigt - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **01.05.2023 Krankenkassenantrag Mirvetuximab soravtansine genehmigt**

## Beispiel ClaimResponse: 01.05.2023 Krankenkassenantrag Mirvetuximab soravtansine genehmigt

-------

**German**

-------

Profile: [MII PR MTB Anwort Kostenuebernahme](StructureDefinition-mii-pr-mtb-antwort-kostenuebernahme.md) version: 2026.0.1

**status**: Active

**type**: institutional

**use**: Claim

**patient**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**created**: 2023-05-01

**insurer**: [Organization Example General Hospital](Organization-MyHospital.md)

**request**: [Claim: status = active; type = institutional; use = claim; created = 2023-03-10; priority = Normal](Claim-MII-EXA-MTB-Antrag-Kostenuebernahme-1.md)

**outcome**: Processing Complete



## Resource Content

```json
{
  "resourceType" : "ClaimResponse",
  "id" : "MII-EXA-MTB-Antwort-Kostenuebernahme-1",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-antwort-kostenuebernahme|2026.0.1"]
  },
  "status" : "active",
  "type" : {
    "coding" : [{
      "code" : "institutional"
    }]
  },
  "use" : "claim",
  "patient" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "created" : "2023-05-01",
  "insurer" : {
    "reference" : "Organization/MyHospital"
  },
  "request" : {
    "reference" : "Claim/MII-EXA-MTB-Antrag-Kostenuebernahme-1"
  },
  "outcome" : "complete"
}

```
