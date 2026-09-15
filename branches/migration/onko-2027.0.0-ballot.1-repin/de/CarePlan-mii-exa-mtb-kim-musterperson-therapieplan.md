# MTB-Beschluss Kim Musterperson - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MTB-Beschluss Kim Musterperson**

## Beispiel CarePlan: MTB-Beschluss Kim Musterperson

-------

**German**

-------

Profile: [MII PR MTB Therapieplan](StructureDefinition-mii-pr-mtb-therapieplan.md) version: 2026.0.1

**status**: Active

**intent**: Plan

**category**: prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie)

**subject**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**created**: 2023-03-28

**addresses**: [Condition Bösartige Neubildung: Peritoneum, nicht näher bezeichnet](Condition-PatientKimMusterperson-PrimaryDiagnosis-2.md)

**supportingInfo**: [ClinicalImpression: status = completed; effective[x] = 2023-01-20 --> 2023-03-28](ClinicalImpression-mii-exa-mtb-kim-musterperson-behandlungsepisode.md)

> **activity****outcomeReference**: [Procedure Chemotherapy](Procedure-MTBChemo2Procedure.md)**reference**: [MedicationRequest: extension = 1,m1A,http://doi.org#10.1200/JCO.2022.40.16_suppl.5512,http://www.ncbi.nlm.nih.gov/pubmed#38055253; status = completed; intent = proposal; medication[x] = MIRVETUXIMAB SORAVTANSINE; authoredOn = 2023-03-28](MedicationRequest-mii-exa-mtb-medication-request-mirvetuximab.md)

> **activity****reference**: [ServiceRequest Referral to clinical trial (procedure)](ServiceRequest-mii-exa-mtb-study-request-cldn6.md)

> **activity****reference**: [ServiceRequest Referral to clinical trial (procedure)](ServiceRequest-mii-exa-mtb-study-request-tedova.md)

> **activity****reference**: [ServiceRequest Referral to clinical trial (procedure)](ServiceRequest-mii-exa-mtb-study-request-ccne1.md)

> **activity****reference**: [MedicationRequest: extension = 3,m1B,http://www.ncbi.nlm.nih.gov/pubmed#35665782,http://www.ncbi.nlm.nih.gov/pubmed#37870536,http://doi.org#10.1200/JCO.2023.41.17_suppl.LBA3000; status = draft; intent = proposal; medication[x] = Trastuzumab deruxtecan; authoredOn = 2023-03-28](MedicationRequest-mii-exa-mtb-medication-request-trastuzumab-deruxtecan.md)

> **activity****reference**: [RequestGroup Chemotherapie + zielgerichtete Substanzen](RequestGroup-mii-exa-mtb-request-group-adavosertib-carboplatin.md)

> **activity****reference**: [RequestGroup zielgerichtete Substanzen](RequestGroup-mii-exa-mtb-request-group-lunresertib-camonsertib.md)

> **activity****reference**: [MedicationRequest: extension = 6,m3,http://www.ncbi.nlm.nih.gov/pubmed#31209687; status = draft; intent = option; medication[x] = COBIMETINIB; authoredOn = 2023-03-28](MedicationRequest-mii-exa-mtb-medication-request-cobimetinib.md)

> **activity****reference**: [ServiceRequest Genetic consultation (procedure)](ServiceRequest-mii-exa-mtb-kim-humangenetische-beratung-aszites.md)

> **activity****reference**: [ServiceRequest Refer for histology (procedure)](ServiceRequest-mii-exa-mtb-kim-histologie-evaluation-aszites.md)

> **activity****reference**: [ServiceRequest Biopsy (procedure)](ServiceRequest-mii-exa-mtb-kim-rebiopsie-aszites.md)



## Resource Content

```json
{
  "resourceType" : "CarePlan",
  "id" : "mii-exa-mtb-kim-musterperson-therapieplan",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieplan|2026.0.1"]
  },
  "status" : "active",
  "intent" : "plan",
  "category" : [{
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieplanung-typ",
      "code" : "praeth"
    }]
  }],
  "subject" : {
    "reference" : "Patient/PatientKimMusterperson"
  },
  "created" : "2023-03-28",
  "addresses" : [{
    "reference" : "Condition/PatientKimMusterperson-PrimaryDiagnosis-2"
  }],
  "supportingInfo" : [{
    "reference" : "ClinicalImpression/mii-exa-mtb-kim-musterperson-behandlungsepisode"
  }],
  "activity" : [{
    "outcomeReference" : [{
      "reference" : "Procedure/MTBChemo2Procedure"
    }],
    "reference" : {
      "reference" : "MedicationRequest/mii-exa-mtb-medication-request-mirvetuximab"
    }
  },
  {
    "reference" : {
      "reference" : "ServiceRequest/mii-exa-mtb-study-request-cldn6"
    }
  },
  {
    "reference" : {
      "reference" : "ServiceRequest/mii-exa-mtb-study-request-tedova"
    }
  },
  {
    "reference" : {
      "reference" : "ServiceRequest/mii-exa-mtb-study-request-ccne1"
    }
  },
  {
    "reference" : {
      "reference" : "MedicationRequest/mii-exa-mtb-medication-request-trastuzumab-deruxtecan"
    }
  },
  {
    "reference" : {
      "reference" : "RequestGroup/mii-exa-mtb-request-group-adavosertib-carboplatin"
    }
  },
  {
    "reference" : {
      "reference" : "RequestGroup/mii-exa-mtb-request-group-lunresertib-camonsertib"
    }
  },
  {
    "reference" : {
      "reference" : "MedicationRequest/mii-exa-mtb-medication-request-cobimetinib"
    }
  },
  {
    "reference" : {
      "reference" : "ServiceRequest/mii-exa-mtb-kim-humangenetische-beratung-aszites"
    }
  },
  {
    "reference" : {
      "reference" : "ServiceRequest/mii-exa-mtb-kim-histologie-evaluation-aszites"
    }
  },
  {
    "reference" : {
      "reference" : "ServiceRequest/mii-exa-mtb-kim-rebiopsie-aszites"
    }
  }]
}

```
