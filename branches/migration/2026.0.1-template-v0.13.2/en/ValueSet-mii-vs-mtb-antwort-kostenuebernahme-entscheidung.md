# MII VS Antwort Kostenuebernahme Entscheidung - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Antwort Kostenuebernahme Entscheidung**

## ValueSet: MII VS Antwort Kostenuebernahme Entscheidung 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-antwort-kostenuebernahme-entscheidung | *Version*:2026.0.1 |
| Active as of 2026-09-11 | *Computable Name*:MII_VS_MTB_Antwort_Kostenuebernahme_Entscheidung |

 
ValueSet zur Entscheidung der Antwort auf den Antrags zur Kostenuebernahme 

 **References** 

* [MII EX MTB Antwort Kostenuebernahme Entscheidung](StructureDefinition-mii-ex-mtb-antwort-kostenuebernahme-entscheidung.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mtb-antwort-kostenuebernahme-entscheidung",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-antwort-kostenuebernahme-entscheidung",
  "version" : "2026.0.1",
  "name" : "MII_VS_MTB_Antwort_Kostenuebernahme_Entscheidung",
  "title" : "MII VS Antwort Kostenuebernahme Entscheidung",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-11T15:11:15+00:00",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "description" : "ValueSet zur Entscheidung der Antwort auf den Antrags zur Kostenuebernahme",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-antwort-kostenuebernahme-entscheidung"
    }]
  }
}

```
