# MII PR MTB In Situ Hybridization - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII PR MTB In Situ Hybridization**

## Resource Profile: MII PR MTB In Situ Hybridization 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-insituhybridization | *Version*:2026.0.1 |
| Active as of 2026-09-11 | *Computable Name*:MII_PR_MTB_Biomarker_InSituHybridization |

 
Molekularer Biomarker - In Situ Hybridization Profil. Unterstützt FISH, CISH und SISH Methoden. 

-------

### Content

This profile describes a generic representation of results based on molecular pathology in-situ hybridization tests on tissue sections.

The profile supports various ISH methods:

* **FISH** (Fluorescence In Situ Hybridization)
* **CISH** (Chromogenic In Situ Hybridization)
* **SISH** (Silver In Situ Hybridization)

### Profile structure

Analogous to the IHC modeling, the following structure was chosen:

* **`code`**: Slicing with `spezifisch` and `generisch` 
* **Specific**: Concrete LOINC or SNOMED code for the test (e.g. `49683-6 ERBB2 gene copy number/Chromosome 17 copy number in Tissue by FISH`)
* **Generic**: Fallback code `51864006 Nucleic acid hybridization, function (observable entity)` if no specific code is available
 
* **`method`** (mandatory field): Specification of the ISH method from the ValueSet `MII_VS_MTB_ISH_Method`: 
* `1303773004` - Fluorescence in situ hybridization technique (FISH)
* `787997001` - Chromogenic in situ hybridization (CISH)
* `787998006` - Silver in situ hybridization (SISH)
 
* **`value[x]`**: Supports various result types: 
* `valueRatio` - for ratio measurements (e.g. HER2/CEP17)
* `valueQuantity` - for individual signal counts
* `valueCodeableConcept` - for categorical results (positive/negative)
 

### Components for signal counts

For detailed FISH evaluations, the following components are supported:

| | | |
| :--- | :--- | :--- |
| `target-signals` | 74860-8 | Target probe signals per cell nucleus (e.g. ERBB2) |
| `reference-signals` | 74861-6 | Reference probe signals per cell nucleus (e.g. CEP17) |
| `cells-counted` | 62361-1 | Number of cells evaluated |
| `gene-studied` | 48018-6 | Gene studied (HGNC-coded) |

This structure is based on the LOINC panel for HER2 FISH (`74885-5 ERBB2 gene (HER2) duplication associated observations panel - Tissue by FISH`).

### Links to other resources

The in-situ hybridization, like immunohistochemical results, is linked from the molecular pathology report via DiagnosticReport.result. It can in turn be referenced by diagnostic or therapeutic implications.

### Specialized profiles

Specialized child profiles exist for common ISH tests:

* **MII_PR_MTB_INSITUHYBRIDIZATION_HER2** - HER2/ERBB2 FISH with ratio calculation

### ValueSet: ISH methods

**Search parameters**

The following search parameters are relevant for the Oncology module, including in combination:

1. The search parameter "_id" MUST be supported:Examples:`GET [base]/Observation?_id=12345`Usage notes: Further information on searching for "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).
1. The search parameter "code" MUST be supported:Examples:`GET [base]/Observation?code=http://snomed.info/sct|51864006`Usage notes: Further information on searching for "code" can be found in the [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).
1. The search parameter "method" MUST be supported:Examples:`GET [base]/Observation?method=http://snomed.info/sct|1303773004`Usage notes: Search for the ISH method used (FISH, CISH, SISH).
1. The search parameter "focus" MUST be supported:Examples:`GET [base]/Observation?focus=Condition/example-mii-mtb-diagnose`Usage notes: Further information on searching for "focus" can be found in the [FHIR base specification - section "reference"](https://hl7.org/fhir/R4/search.html#reference).
1. The search parameter "interpretation" MUST be supported:Examples:`GET [base]/Observation?interpretation=http://hl7.org/fhir/uv/genomics-reporting/ValueSet/high-low-codes-vs|high`Usage notes: Further information on searching for "interpretation" can be found in the [FHIR base specification - section "token"](https://hl7.org/fhir/R4/search.html#token).

**Examples**

**Usages:**

* Derived from this Profile: [MII PR MTB In Situ Hybridization HER2](StructureDefinition-mii-pr-mtb-insituhybridization-her2.md)
* Refer to this Profile: [MII PR MTB Molecular Pathology Report](StructureDefinition-mii-pr-mtb-molecular-pathology-report.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-pr-mtb-insituhybridization.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-pr-mtb-insituhybridization.csv), [Excel](../StructureDefinition-mii-pr-mtb-insituhybridization.xlsx), [Schematron](../StructureDefinition-mii-pr-mtb-insituhybridization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-pr-mtb-insituhybridization",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-insituhybridization",
  "version" : "2026.0.1",
  "name" : "MII_PR_MTB_Biomarker_InSituHybridization",
  "title" : "MII PR MTB In Situ Hybridization",
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
  "description" : "Molekularer Biomarker - In Situ Hybridization Profil. Unterstützt FISH, CISH und SISH Methoden.",
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
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
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
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-molekularer-biomarker",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation",
      "constraint" : [{
        "key" : "mii-mtb-ish-1",
        "severity" : "error",
        "human" : "Entweder muss ein spezifischer Code oder gene-studied angegeben werden (Either a specific code or gene-studied must be provided)",
        "expression" : "code.coding.where(system != 'http://snomed.info/sct' or code != '51864006').exists() or component.where(code.coding.where(system = 'http://loinc.org' and code = '48018-6').exists()).exists()",
        "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-insituhybridization"
      }]
    },
    {
      "id" : "Observation.identifier",
      "path" : "Observation.identifier",
      "short" : "Identifier zur Abgrenzung anderer gleichartiger Untersuchungen",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Identifier zur Abgrenzung anderer gleichartiger Untersuchungen"
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
            "valueString" : "Identifier to distinguish from other similar examinations"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Identifier der Untersuchung, damit die Untersuchung auch außerhalb von FHIR eindeutig identifiziert werden kann. Sollte ISH oder vlg. beinhalten, um von anderen Biomarkeruntersuchungen abzugrenzen.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Identifier der Untersuchung damit die Untersuchung auch ausserhalb von FHIR eindeutig identifiziert werden kann. Sollte ISH oder aehnliches beinhalten um von anderen Biomarkeruntersuchungen abzugrenzen."
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
            "valueString" : "Identifier of the examination so that the examination can be uniquely identified outside of FHIR. Should include ISH or similar to distinguish from other biomarker examinations."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "short" : "Code für In Situ Hybridization Untersuchung",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Code fuer In Situ Hybridization Untersuchung"
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
            "valueString" : "Code for In Situ Hybridization examination"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Kodierung für In Situ Hybridization. Nach Möglichkeit sind spezifische Codes zu verwenden. Wenn weder in SNOMED noch LOINC spezifische Codes vorhanden sind, ist der generische Code mit Textbeschreibung zu verwenden.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Kodierung fuer In Situ Hybridization. Nach Moeglichkeit sind spezifische Codes zu verwenden. Wenn weder in SNOMED noch LOINC spezifische Codes vorhanden sind ist der generische Code mit Textbeschreibung zu verwenden."
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
            "valueString" : "Coding for In Situ Hybridization. Specific codes should be used whenever possible. If no specific codes are available in SNOMED or LOINC use the generic code with text description."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "Observation.code.coding",
      "path" : "Observation.code.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "$this"
        }],
        "description" : "Slice für generischen ISH Code, zusätzliche spezifische Codes via open slicing",
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.code.coding:generisch",
      "path" : "Observation.code.coding",
      "sliceName" : "generisch",
      "short" : "Generischer ISH Code",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Generischer ISH Code"
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
            "valueString" : "Generic ISH Code"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Generischer Code für ISH-Untersuchungen. Wird immer angegeben, um die Interoperabilität zu gewährleisten. Zusätzliche spezifische Codes können über open slicing hinzugefügt werden.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Generischer Code fuer ISH-Untersuchungen. Wird immer angegeben um die Interoperabilitaet zu gewaehrleisten. Zusaetzliche spezifische Codes koennen ueber open slicing hinzugefuegt werden."
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
            "valueString" : "Generic code for ISH examinations. Always provided to ensure interoperability. Additional specific codes can be added via open slicing."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "max" : "1",
      "patternCoding" : {
        "system" : "http://snomed.info/sct",
        "code" : "51864006",
        "display" : "Nucleic acid hybridization, function (observable entity)"
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.focus",
      "path" : "Observation.focus",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"]
      }]
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]:valueQuantity",
      "path" : "Observation.value[x]",
      "sliceName" : "valueQuantity",
      "short" : "Quantitatives Ergebnis (z.B. Signalanzahl)",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Quantitatives Ergebnis - z.B. Signalanzahl"
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
            "valueString" : "Quantitative result - e.g. signal count"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]:valueRatio",
      "path" : "Observation.value[x]",
      "sliceName" : "valueRatio",
      "short" : "Ratio-Ergebnis (z.B. HER2/CEP17)",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Ratio-Ergebnis - z.B. HER2/CEP17"
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
            "valueString" : "Ratio result - e.g. HER2/CEP17"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Ratio"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]:valueCodeableConcept",
      "path" : "Observation.value[x]",
      "sliceName" : "valueCodeableConcept",
      "short" : "Kategorisches Ergebnis (z.B. positiv/negativ)",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Kategorisches Ergebnis - z.B. positiv/negativ"
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
            "valueString" : "Categorical result - e.g. positive/negative"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.interpretation",
      "path" : "Observation.interpretation",
      "short" : "Interpretation",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Interpretation"
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
            "valueString" : "Interpretation"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Interpretation der ISH Signale. Die Interpretation kann auf Vergleich mit Referenzwerten basieren.",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Interpretation der ISH Signale. Die Interpretation kann auf Vergleich mit Referenzwerten basieren."
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
            "valueString" : "Interpretation of ISH signals. The interpretation can be based on comparison with reference values."
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.method",
      "path" : "Observation.method",
      "short" : "FISH | CISH | SISH",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "FISH | CISH | SISH"
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
            "valueString" : "FISH | CISH | SISH"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "In Situ Hybridization Methode: Fluoreszenz (FISH), Chromogen (CISH), oder Silber (SISH)",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "In Situ Hybridization Methode: Fluoreszenz - FISH - Chromogen - CISH - oder Silber - SISH"
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
            "valueString" : "In Situ Hybridization Method: Fluorescence - FISH - Chromogen - CISH - or Silver - SISH"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-ish-method"
      }
    },
    {
      "id" : "Observation.component:gene-studied",
      "path" : "Observation.component",
      "sliceName" : "gene-studied",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Untersuchtes Gen"
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
            "valueString" : "Gene studied"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Das mit der Target-Sonde untersuchte Gen (z.B. ERBB2)",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Das mit der Target-Sonde untersuchte Gen - z.B. ERBB2"
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
            "valueString" : "The gene studied with the target probe - e.g. ERBB2"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    }]
  }
}

```
