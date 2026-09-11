# MII VS Genomic Analysis Method Type - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Genomic Analysis Method Type**

## ValueSet: MII VS Genomic Analysis Method Type 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-genomic-analysis-method-type | *Version*:2026.0.1 |
| Active as of 2026-09-11 | *Computable Name*:MII_VS_MTB_Genomic_Analysis_Method_Type |

 
ValueSet, dass die ursprünglich vom HL7 Clinical Genomics vorgeschlagenen Antwortmöglichkeiten für Genomic Study Analysis Method Type mit dem vom dnpm dekalrierten Antwortspektrum vereint 

 **References** 

* [MII PR MTB Genomic Study Analysis](StructureDefinition-mii-pr-mtb-genomic-study-analysis.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-mtb-genomic-analysis-method-type",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-genomic-analysis-method-type",
  "version" : "2026.0.1",
  "name" : "MII_VS_MTB_Genomic_Analysis_Method_Type",
  "title" : "MII VS Genomic Analysis Method Type",
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
  "description" : "ValueSet, dass die ursprünglich vom HL7 Clinical Genomics vorgeschlagenen Antwortmöglichkeiten für Genomic Study Analysis Method Type mit dem vom dnpm dekalrierten Antwortspektrum vereint",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/genomic-study-method-type-cs"
    },
    {
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-genomic-analysis-method-type"
    }]
  }
}

```
