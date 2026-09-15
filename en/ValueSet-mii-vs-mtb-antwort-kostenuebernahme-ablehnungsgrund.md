# MII VS Kostenuebernahme Ablehnungsgrund - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2027.0.0-ballot.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Kostenuebernahme Ablehnungsgrund**

## ValueSet: MII VS Kostenuebernahme Ablehnungsgrund 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-antwort-kostenuebernahme-ablehnungsgrund | *Version*:2027.0.0-ballot.1 |
| Active as of 2026-09-15 | *Computable Name*:MII_VS_MTB_Antwort_Kostenuebernahme_Ablehnungsgrund |

 
ValueSet zum Grund der Ablehnung des Antrags zur Kostenuebernahme 

 **References** 

* [MII EX MTB Antwort Kostenuebernahme Ablehnungsgrund](StructureDefinition-mii-ex-mtb-antwort-kostenuebernahme-ablehnungsgrund.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mtb-antwort-kostenuebernahme-ablehnungsgrund",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-antwort-kostenuebernahme-ablehnungsgrund",
  "version" : "2027.0.0-ballot.1",
  "name" : "MII_VS_MTB_Antwort_Kostenuebernahme_Ablehnungsgrund",
  "title" : "MII VS Kostenuebernahme Ablehnungsgrund",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-15T18:08:27+00:00",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "description" : "ValueSet zum Grund der Ablehnung des Antrags zur Kostenuebernahme",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-antwort-kostenuebernahme-ablehnungsgrund"
    }]
  }
}

```
