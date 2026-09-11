# MII CS Empfehlung Evidenzgrad - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS Empfehlung Evidenzgrad**

## CodeSystem: MII CS Empfehlung Evidenzgrad 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-empfehlung-evidenzgrad | *Version*:2026.0.1 |
| Active Stand: 2026-09-11 | *Maschinenlesbarer Name*:MII_CS_MTB_Empfehlung_Evidenzgrad |

 
Evidenzgrad einer Empfehlung 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII VS Empfehlung Evidenzgrad](ValueSet-mii-vs-mtb-empfehlung-evidenzgrad.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-mtb-empfehlung-evidenzgrad-nct",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-empfehlung-evidenzgrad",
  "version" : "2026.0.1",
  "name" : "MII_CS_MTB_Empfehlung_Evidenzgrad",
  "title" : "MII CS Empfehlung Evidenzgrad",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-11T14:44:50+00:00",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "description" : "Evidenzgrad einer Empfehlung",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 9,
  "concept" : [{
    "code" : "m1A",
    "display" : "m1A",
    "definition" : "In der gleichen Tumorentität wurde der prädiktive Wert des Biomarkers oder die klinische Wirksamkeit in einer Biomarker-stratifizierten Kohorte einer adäquat gepowerten prospektiven Studie oder Metaanalyse gezeigt.",
    "designation" : [{
      "language" : "en",
      "value" : "Predictive value of the biomarker or clinical effectiveness of the corresponding drug in a molecularly stratified cohort was demonstrated in a prospective study or a meta-analysis in the same tumor type."
    }]
  },
  {
    "code" : "m1B",
    "display" : "m1B",
    "definition" : "In der gleichen Tumorentität wurde der prädiktive Wert des Biomarkers oder die klinische Wirksamkeit in einer retrospektiven Kohorte oder Fall-Kontroll-Studie gezeigt.",
    "designation" : [{
      "language" : "en",
      "value" : "Predictive value of the biomarker or clinical effectiveness of the drug in a molecularly stratified cohort was demonstrated in a retrospective cohort or case–control study in the same tumor type."
    }]
  },
  {
    "code" : "m1C",
    "display" : "m1C",
    "definition" : "Ein oder mehrere Fallberichte in der gleichen Tumorentität.",
    "designation" : [{
      "language" : "en",
      "value" : "Case study or single unusual responder indicates the biomarker is associated with response to the drug in the same tumor type."
    }]
  },
  {
    "code" : "m2A",
    "display" : "m2A",
    "definition" : "In einer anderen Tumorentität wurde der prädiktive Wert des Biomarkers oder die klinische Wirksamkeit in einer Biomarker-stratifizierten Kohorte einer adäquat gepowerten prospektiven Studie oder Metaanalyse gezeigt.",
    "designation" : [{
      "language" : "en",
      "value" : "Predictive value of the biomarker or clinical effectiveness of the corresponding drug in a molecularly stratified cohort was demonstrated in a prospective study or a meta-analysis in a different tumor type."
    }]
  },
  {
    "code" : "m2B",
    "display" : "m2B",
    "definition" : "In einer anderen Tumorentität wurde der prädiktive Wert des Biomarkers oder die Klinische Wirksamkeit in einer retrospektiven Kohorte oder Fall-Kontroll-Studie gezeigt.",
    "designation" : [{
      "language" : "en",
      "value" : "Predictive value of the biomarker or clinical effectiveness of the drug in a molecularly stratified cohort was demonstrated in a retrospective cohort or case–control study in a different tumor type."
    }]
  },
  {
    "code" : "m2C",
    "display" : "m2C",
    "definition" : "Unabhängig von der Tumorentität wurde beim Vorliegen des Biomarkers eine klinische Wirksamkeit in einem oder mehreren Fallberichten gezeigt.",
    "designation" : [{
      "language" : "en",
      "value" : "Case study or single unusual responder indicates the biomarker is associated with response to the drug in a different tumor type."
    }]
  },
  {
    "code" : "m3",
    "display" : "m3",
    "definition" : "Präklinische Daten (in vitro-/in vivo-Modelle, funktionelle Untersuchungen) zeigen eine Assoziation des Biomarkers mit der Wirksamkeit der Medikation, welche durch eine wissenschaftliche Rationale gestützt wird.",
    "designation" : [{
      "language" : "en",
      "value" : "Preclinical data (in vitro, in vivo models or functional genomics studies) demonstrate that the biomarker predicts response to a specific drug treatment, supported by scientific rationale."
    }]
  },
  {
    "code" : "m4",
    "display" : "m4",
    "definition" : "Eine wissenschaftliche, biologische Rationale legt eine Assoziation des Biomarkers mit der Wirksamkeit der Medikation nahe, welche bisher nicht durch (prä)klinische Daten gestützt wird.",
    "designation" : [{
      "language" : "en",
      "value" : "Biological rationale that associates the biomarker with altered signaling pathway activity or drug sensitivity without direct clinical or preclinical evidence for response to the drug."
    }]
  },
  {
    "code" : "undefined",
    "display" : "N/A",
    "definition" : "Nicht verfügbar",
    "designation" : [{
      "language" : "en",
      "value" : "Not available"
    }]
  }]
}

```
