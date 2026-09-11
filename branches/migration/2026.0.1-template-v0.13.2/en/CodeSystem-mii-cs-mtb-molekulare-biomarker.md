# MII CS Molekulare Biomarker - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS Molekulare Biomarker**

## CodeSystem: MII CS Molekulare Biomarker 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker | *Version*:2026.0.1 |
| Active as of 2026-09-11 | *Computable Name*:MII_CS_MTB_Molekulare_Biomarker |

 
Codesystem, welches verschiedene Molekulare Biomarker enthält, die nicht in anderen offenen semantischen Standards wie LOINC oder SNOMED-CT abgebildet sind 

This Code system is referenced in the definition of the following value sets:

* [MII VS Molekulare Biomarker](ValueSet-mii-vs-mtb-molekulare-biomarker.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-mtb-molekulare-biomarker",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-molekulare-biomarker",
  "version" : "2026.0.1",
  "name" : "MII_CS_MTB_Molekulare_Biomarker",
  "title" : "MII CS Molekulare Biomarker",
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
  "description" : "Codesystem, welches verschiedene Molekulare Biomarker enthält, die nicht in anderen offenen semantischen Standards wie LOINC oder SNOMED-CT abgebildet sind",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 20,
  "concept" : [{
    "code" : "brcaness",
    "display" : "BRCAness"
  },
  {
    "code" : "phosphorylation-localization",
    "display" : "Phosphorylation localization"
  },
  {
    "code" : "protein-isoform",
    "display" : "Protein isoform"
  },
  {
    "code" : "relative-copy-number",
    "display" : "Relative Copy Number of Allele A and B"
  },
  {
    "code" : "copy-number-allele-a",
    "display" : "Copy Number of Allele B"
  },
  {
    "code" : "copy-number-allele-b",
    "display" : "Copy Number of Allele A"
  },
  {
    "code" : "reported-focality",
    "display" : "Reported focality"
  },
  {
    "code" : "copy-number-neutral-loh",
    "display" : "Copy Number Neutral Loss of Heterozygosity"
  },
  {
    "code" : "five-prime-chromosome",
    "display" : "Five Prime Chromosome"
  },
  {
    "code" : "five-prime-position",
    "display" : "Five Prime Position"
  },
  {
    "code" : "five-prime-gene",
    "display" : "Five Prime Gene"
  },
  {
    "code" : "three-prime-chromosome",
    "display" : "Three Prime Chromosome"
  },
  {
    "code" : "three-prime-position",
    "display" : "Three Prime Position"
  },
  {
    "code" : "three-prime-gene",
    "display" : "Three Prime Gene"
  },
  {
    "code" : "five-prime-transcript-id",
    "display" : "Five Prime Transcript ID"
  },
  {
    "code" : "five-prime-exon-id",
    "display" : "Five Prime Exon ID"
  },
  {
    "code" : "five-prime-strand",
    "display" : "Five Prime Strand"
  },
  {
    "code" : "three-prime-transcript-id",
    "display" : "Three Prime Transcript ID"
  },
  {
    "code" : "three-prime-exon-id",
    "display" : "Three Prime Exon ID"
  },
  {
    "code" : "three-prime-strand",
    "display" : "Three Prime Strand"
  }]
}

```
