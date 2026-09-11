# MII VS Empfehlung Evidenzgrad Zusatzverweis - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Empfehlung Evidenzgrad Zusatzverweis**

## ValueSet: MII VS Empfehlung Evidenzgrad Zusatzverweis 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-empfehlung-evidenzgrad-zusatzverweis | *Version*:2026.0.1 |
| Active as of 2026-09-11 | *Computable Name*:MII_VS_MTB_Empfehlung_EvidenzgradZusatzverweis |

 
ValueSet für den Zusatzverweis zum Evidenzgrad einer Empfehlung 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mtb-empfehlung-evidenzgrad-zusatzverweis",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-empfehlung-evidenzgrad-zusatzverweis",
  "version" : "2026.0.1",
  "name" : "MII_VS_MTB_Empfehlung_EvidenzgradZusatzverweis",
  "title" : "MII VS Empfehlung Evidenzgrad Zusatzverweis",
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
  "description" : "ValueSet für den Zusatzverweis zum Evidenzgrad einer Empfehlung",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-empfehlung-evidenzgrad-zusatzverweis"
    }]
  }
}

```
