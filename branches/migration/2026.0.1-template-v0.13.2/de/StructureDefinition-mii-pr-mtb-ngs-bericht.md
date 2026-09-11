# MII PR MTB NGS-Bericht - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII PR MTB NGS-Bericht**

## Ressourcenprofil: MII PR MTB NGS-Bericht 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-ngs-bericht | *Version*:2026.0.1 |
| Active Stand: 2026-09-11 | *Maschinenlesbarer Name*:MII_PR_MTB_NGS_Bericht |

 
NGS-Bericht zu einer Probe 

-------

### Inhalt

Dieses Profil beschreibt den NGS-Bericht, welcher auf Patient und Probe verweist und mehrere Observations als result-Elemente beinhaltet. Die Metadaten des Berichts (Geräte, Kits, Library) werden über GenomicStudy / GenomicStudyAnalysis kodiert.

### Inhalt

Mapping Datensatz zu FHIR

**Suchparameter**

Folgende Suchparameter sind für das Modul Onkologie relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:Beispiele:`GET [base]/DiagnosticReport?_id=1234`Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "_profile" MUSS unterstützt werden:Beispiele:`GET [base]/DiagnosticReport?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-ngs-bericht`Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. Der Suchparameter "subject" MUSS unterstützt werden:Beispiele:`GET [base]/DiagnosticReport?subject=Patient/example-mii-mtb-patient`Anwendungshinweise: Weitere Informationen zur Suche nach "subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "issued" MUSS unterstützt werden:Beispiele:`GET [base]/DiagnosticReport?issued=2022-07-13`Anwendungshinweise: Weitere Informationen zur Suche nach "issued" finden sich in der [FHIR-Basisspezifikation - Abschnitt "date"](https://hl7.org/fhir/R4/search.html#date).
1. Der Suchparameter "specimen" MUSS unterstützt werden:Beispiele:`GET [base]/DiagnosticReport?specimen=Specimen/example-mii-mtb-specimen`Anwendungshinweise: Weitere Informationen zur Suche nach "specimen" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).
1. Der Suchparameter "result" MUSS unterstützt werden:Beispiele:`GET [base]/DiagnosticReport?result=Observation/example-mii-mtb-variante-1`Anwendungshinweise: Weitere Informationen zur Suche nach "result" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).

**Beispiele**

-------

**Usages:**

* Refer to this Profile: [MII PR MTB Behandlungsepisode](StructureDefinition-mii-pr-mtb-behandlungsepisode.md)
* Examples for this Profile: [DiagnosticReport/mii-exa-mtb-kim-musterperson-ngs-bericht](DiagnosticReport-mii-exa-mtb-kim-musterperson-ngs-bericht.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-pr-mtb-ngs-bericht.json)

### Formale Ansichten des Profilinhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Schlüsselelemente-Tabelle](#tabs-key) 
*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [Alle](#tabs-all) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [DiagnosticReport](http://hl7.org/fhir/R4/diagnosticreport.html) 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [DiagnosticReport](http://hl7.org/fhir/R4/diagnosticreport.html) 

** Summary **

Must-Support: 18 elements

**Structures**

This structure refers to these other structures:

* [MII PR Onkologie Specimen (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-specimen)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-specimen)
* [MII PR Patho Specimen (https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2027.0.0-ballot.rc2&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen)
* [MII PR Biobank Specimen Bioprobe Core (https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.biobank@2027.0.0-ballot.rc2&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore)
* [MII PR MTB Mutationslast (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-mutationslast)](StructureDefinition-mii-pr-mtb-mutationslast.md)
* [MII PR MTB Mikrosatelliteninstabilität (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-mikrosatelliteninstabilitaet)](StructureDefinition-mii-pr-mtb-mikrosatelliteninstabilitaet.md)
* [MII PR MTB Ploidie (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-ploidie)](StructureDefinition-mii-pr-mtb-ploidie.md)
* [MII PR MTB HRD Score (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-hrd-score)](StructureDefinition-mii-pr-mtb-hrd-score.md)
* [MII PR MTB BRCAness (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-brcaness)](StructureDefinition-mii-pr-mtb-brcaness.md)
* [MII PR MTB Einfache Variante (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-einfache-variante)](StructureDefinition-mii-pr-mtb-einfache-variante.md)
* [MII PR MTB Copy Number Variant (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-copy-number-variant)](StructureDefinition-mii-pr-mtb-copy-number-variant.md)
* [MII PR MTB DNA Fusion (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-dna-fusion)](StructureDefinition-mii-pr-mtb-dna-fusion.md)
* [MII PR MTB RNA Fusion (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-rna-fusion)](StructureDefinition-mii-pr-mtb-rna-fusion.md)
* [MII PR MTB RNA Seq (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-rna-seq)](StructureDefinition-mii-pr-mtb-rna-seq.md)
* [MII PR Biomarker Her2 Status (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-biomarker-her2-status)](StructureDefinition-mii-pr-mtb-biomarker-her2-status.md)
* [MII PR MTB Molekularer Biomarker (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-molekularer-biomarker)](StructureDefinition-mii-pr-mtb-molekularer-biomarker.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of DiagnosticReport.result

 **Schlüsselelemente-Ansicht** 

#### Terminology Bindings

#### Constraints

 **Differential-Ansicht** 

Diese Struktur ist abgeleitet von [DiagnosticReport](http://hl7.org/fhir/R4/diagnosticreport.html) 

 **Snapshot-AnsichtView** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [DiagnosticReport](http://hl7.org/fhir/R4/diagnosticreport.html) 

** Summary **

Must-Support: 18 elements

**Structures**

This structure refers to these other structures:

* [MII PR Onkologie Specimen (https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-specimen)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-specimen)
* [MII PR Patho Specimen (https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2027.0.0-ballot.rc2&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen)
* [MII PR Biobank Specimen Bioprobe Core (https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore)](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.biobank@2027.0.0-ballot.rc2&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore)
* [MII PR MTB Mutationslast (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-mutationslast)](StructureDefinition-mii-pr-mtb-mutationslast.md)
* [MII PR MTB Mikrosatelliteninstabilität (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-mikrosatelliteninstabilitaet)](StructureDefinition-mii-pr-mtb-mikrosatelliteninstabilitaet.md)
* [MII PR MTB Ploidie (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-ploidie)](StructureDefinition-mii-pr-mtb-ploidie.md)
* [MII PR MTB HRD Score (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-hrd-score)](StructureDefinition-mii-pr-mtb-hrd-score.md)
* [MII PR MTB BRCAness (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-brcaness)](StructureDefinition-mii-pr-mtb-brcaness.md)
* [MII PR MTB Einfache Variante (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-einfache-variante)](StructureDefinition-mii-pr-mtb-einfache-variante.md)
* [MII PR MTB Copy Number Variant (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-copy-number-variant)](StructureDefinition-mii-pr-mtb-copy-number-variant.md)
* [MII PR MTB DNA Fusion (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-dna-fusion)](StructureDefinition-mii-pr-mtb-dna-fusion.md)
* [MII PR MTB RNA Fusion (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-rna-fusion)](StructureDefinition-mii-pr-mtb-rna-fusion.md)
* [MII PR MTB RNA Seq (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-rna-seq)](StructureDefinition-mii-pr-mtb-rna-seq.md)
* [MII PR Biomarker Her2 Status (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-biomarker-her2-status)](StructureDefinition-mii-pr-mtb-biomarker-her2-status.md)
* [MII PR MTB Molekularer Biomarker (https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-molekularer-biomarker)](StructureDefinition-mii-pr-mtb-molekularer-biomarker.md)

**Slices**

This structure defines the following [Slices](http://hl7.org/fhir/R4/profiling.html#slices):

* The element 1 is sliced based on the value of DiagnosticReport.result

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-pr-mtb-ngs-bericht.csv), [Excel](../StructureDefinition-mii-pr-mtb-ngs-bericht.xlsx), [Schematron](../StructureDefinition-mii-pr-mtb-ngs-bericht.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mtb-ngs-bericht",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-ngs-bericht",
  "version" : "2026.0.1",
  "name" : "MII_PR_MTB_NGS_Bericht",
  "title" : "MII PR MTB NGS-Bericht",
  "status" : "active",
  "date" : "2026-09-11T14:44:50+00:00",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "description" : "NGS-Bericht zu einer Probe",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DiagnosticReport",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/DiagnosticReport",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DiagnosticReport",
      "path" : "DiagnosticReport"
    },
    {
      "id" : "DiagnosticReport.meta",
      "path" : "DiagnosticReport.meta",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.meta.profile",
      "path" : "DiagnosticReport.meta.profile",
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.subject",
      "path" : "DiagnosticReport.subject",
      "short" : "Referenz auf Patient",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Referenz auf Patient"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Reference to Patient"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.issued",
      "path" : "DiagnosticReport.issued",
      "short" : "Erstellungsdatum",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Erstellungsdatum"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Issue date"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.specimen",
      "path" : "DiagnosticReport.specimen",
      "short" : "Referenz auf Probe",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Referenz auf Probe"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Reference to Specimen"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-specimen",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore",
        "http://hl7.org/fhir/StructureDefinition/Specimen"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.result",
      "path" : "DiagnosticReport.result",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "$this.resolve()"
        }],
        "description" : "Slice für Varianten & Biomarker des NGS-Berichts",
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "DiagnosticReport.result:TumorMutionalBurden",
      "path" : "DiagnosticReport.result",
      "sliceName" : "TumorMutionalBurden",
      "short" : "Tumor Mutational Burden",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Tumormutationslast"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Tumor Mutational Burden"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Verweis auf Tumor Mutational Burden",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Verweis auf Tumormutationslast"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Reference to Tumor Mutational Burden"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-mutationslast"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.result:MSI",
      "path" : "DiagnosticReport.result",
      "sliceName" : "MSI",
      "short" : "Micro-Satellite Instabilities",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Mikrosatelliteninstabilitaeten"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Micro-Satellite Instabilities"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Verweis auf Micro-Satellite Instabilities",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Verweis auf Mikrosatelliteninstabilitaeten"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Reference to Micro-Satellite Instabilities"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-mikrosatelliteninstabilitaet"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.result:Ploidie",
      "path" : "DiagnosticReport.result",
      "sliceName" : "Ploidie",
      "short" : "Ploidie",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Ploidie"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Ploidy"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Ploidie",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Ploidie"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Ploidy"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-ploidie"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.result:HRDScore",
      "path" : "DiagnosticReport.result",
      "sliceName" : "HRDScore",
      "short" : "HRD-Score",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "HRD-Score"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "HRD Score"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Verweis auf HRD-Score",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Verweis auf HRD-Score"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Reference to HRD Score"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-hrd-score"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.result:BRCAness",
      "path" : "DiagnosticReport.result",
      "sliceName" : "BRCAness",
      "short" : "BRCAness",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "BRCAness"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "BRCAness"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Verweis auf BRCAness",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Verweis auf BRCAness"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Reference to BRCAness"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-brcaness"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.result:EinfacheVariante",
      "path" : "DiagnosticReport.result",
      "sliceName" : "EinfacheVariante",
      "short" : "Einfache Variante",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Einfache Variante"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Simple Variant"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Verweis auf Einfache Variante",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Verweis auf Einfache Variante"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Reference to Simple Variant"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-einfache-variante"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.result:CopyNumberVariant",
      "path" : "DiagnosticReport.result",
      "sliceName" : "CopyNumberVariant",
      "short" : "Copy Number Variant",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Kopienzahlvariante"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Copy Number Variant"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Verweis auf Copy Number Variant",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Verweis auf Kopienzahlvariante"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Reference to Copy Number Variant"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-copy-number-variant"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.result:DNAFusion",
      "path" : "DiagnosticReport.result",
      "sliceName" : "DNAFusion",
      "short" : "DNA-Fusion",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "DNA-Fusion"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "DNA Fusion"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Verweis auf DNA-Fusion",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Verweis auf DNA-Fusion"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Reference to DNA Fusion"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-dna-fusion"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.result:RNAFusion",
      "path" : "DiagnosticReport.result",
      "sliceName" : "RNAFusion",
      "short" : "RNA-Fusion",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "RNA-Fusion"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "RNA Fusion"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Verweis auf RNA-Fusion",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Verweis auf RNA-Fusion"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Reference to RNA Fusion"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-rna-fusion"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.result:RNASeq",
      "path" : "DiagnosticReport.result",
      "sliceName" : "RNASeq",
      "short" : "RNASeq",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "RNASeq"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "RNASeq"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Verweis auf RNASeq",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Verweis auf RNASeq"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Reference to RNASeq"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-rna-seq"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.result:MolekularerBiomarkerHER2Status",
      "path" : "DiagnosticReport.result",
      "sliceName" : "MolekularerBiomarkerHER2Status",
      "short" : "Molekularer Biomarker HER2 Status",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Molekularer Biomarker HER2 Status"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Molecular Biomarker HER2 Status"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Verweis auf Molekularer Biomarker HER2 Status",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Verweis auf Molekularer Biomarker HER2 Status"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Reference to Molecular Biomarker HER2 Status"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-biomarker-her2-status"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.result:MolekularerBiomarker",
      "path" : "DiagnosticReport.result",
      "sliceName" : "MolekularerBiomarker",
      "short" : "Molekularer Biomarker",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Molekularer Biomarker"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Molecular Biomarker"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Verweis auf Molekularer Biomarker",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Verweis auf Molekularer Biomarker"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        },
        {
          "extension" : [{
            "url" : "lang",
            "valueCode" : "en"
          },
          {
            "url" : "content",
            "valueString" : "Reference to Molecular Biomarker"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-molekularer-biomarker"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "DiagnosticReport.result:Tumorzellgehalt",
      "path" : "DiagnosticReport.result",
      "sliceName" : "Tumorzellgehalt",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    }]
  }
}

```
