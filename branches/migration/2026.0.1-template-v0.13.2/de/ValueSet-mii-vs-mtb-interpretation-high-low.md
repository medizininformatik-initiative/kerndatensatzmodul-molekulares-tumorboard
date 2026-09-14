# MII VS MTB Interpretation High/Low - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS MTB Interpretation High/Low**

## ValueSet: MII VS MTB Interpretation High/Low 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-interpretation-high-low | *Version*:2026.0.1 |
| Active Stand: 2026-09-14 | *Maschinenlesbarer Name*:MII_VS_MTB_Interpretation_High_Low |

 
Interpretation qualitativer Biomarker-Ergebnisse als hoch/niedrig (High/Low aus HL7 v3 ObservationInterpretation). Ersetzt das in Genomics Reporting STU3 entfallene high-low-codes-vs (STU2). 

 **References** 

* [MII PR MTB BRCAness](StructureDefinition-mii-pr-mtb-brcaness.md)
* [MII PR MTB HRD Score](StructureDefinition-mii-pr-mtb-hrd-score.md)
* [MII PR MTB Mutationslast](StructureDefinition-mii-pr-mtb-mutationslast.md)
* [MII PR MTB Ploidie](StructureDefinition-mii-pr-mtb-ploidie.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mtb-interpretation-high-low",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-interpretation-high-low",
  "version" : "2026.0.1",
  "name" : "MII_VS_MTB_Interpretation_High_Low",
  "title" : "MII VS MTB Interpretation High/Low",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-14T13:42:50+00:00",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "description" : "Interpretation qualitativer Biomarker-Ergebnisse als hoch/niedrig (High/Low aus HL7 v3 ObservationInterpretation). Ersetzt das in Genomics Reporting STU3 entfallene high-low-codes-vs (STU2).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "concept" : [{
        "code" : "H",
        "display" : "High"
      },
      {
        "code" : "L",
        "display" : "Low"
      }]
    }]
  }
}

```
