# MII EX MTB Antwort Kostenuebernahme Entscheidung - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EX MTB Antwort Kostenuebernahme Entscheidung**

## Extension: MII EX MTB Antwort Kostenuebernahme Entscheidung 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-antwort-kostenuebernahme-entscheidung | *Version*:2026.0.1 |
| Active Stand: 2026-09-11 | *Maschinenlesbarer Name*:MII_EX_MTB_Antwort_Kostenuebernahme_Entscheidung |

Entscheidung zum Antrag zur Kostenuebernahme

**Context of Use**

### Inhalt

Diese Erweiterung beschreibt, ob ein Kostenübernahme-Antrag vom Versicherungsträger angenommen wurde.

### Inhalt

[mii-cs-mtb-antwort-kostenuebernahme-entscheidung](CodeSystem-mii-cs-mtb-antwort-kostenuebernahme-entscheidung.md)

**Usage info**

**Usages:**

* Use this Extension: [MII PR MTB Anwort Kostenuebernahme](StructureDefinition-mii-pr-mtb-antwort-kostenuebernahme.md)
* Examples for this Extension: [ClaimResponse/MII-EXA-MTB-Antwort-Kostenuebernahme-Beispiel-1](ClaimResponse-MII-EXA-MTB-Antwort-Kostenuebernahme-Beispiel-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.mtb|current/StructureDefinition/StructureDefinition-mii-ex-mtb-antwort-kostenuebernahme-entscheidung.json)

### Formale Ansichten des Extension-Inhalts

 [Beschreibung von Profilen, Differentials, Snapshots und deren Repräsentationen](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Differential-Tabelle](#tabs-diff) 
*  [Snapshot-Tabelle](#tabs-snap) 
*  [Statistiken/Referenzen](#tabs-summ) 
*  [AlleAll](#tabs-all) 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Terminology Bindings (Differential)

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Simple Extension with the type CodeableConcept: Entscheidung zum Antrag zur Kostenuebernahme

 **Differential-AnsichtDifferential View** 

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

#### Terminology Bindings (Differential)

 **Snapshot-Ansicht** 

#### Terminology Bindings

#### Constraints

Diese Struktur ist abgeleitet von [Extension](http://hl7.org/fhir/R4/extensibility.html#Extension) 

** Summary **

Simple Extension with the type CodeableConcept: Entscheidung zum Antrag zur Kostenuebernahme

 

Weitere Repräsentationen des Profils: [CSV](../StructureDefinition-mii-ex-mtb-antwort-kostenuebernahme-entscheidung.csv), [Excel](../StructureDefinition-mii-ex-mtb-antwort-kostenuebernahme-entscheidung.xlsx), [Schematron](../StructureDefinition-mii-ex-mtb-antwort-kostenuebernahme-entscheidung.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-ex-mtb-antwort-kostenuebernahme-entscheidung",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-antwort-kostenuebernahme-entscheidung",
  "version" : "2026.0.1",
  "name" : "MII_EX_MTB_Antwort_Kostenuebernahme_Entscheidung",
  "title" : "MII EX MTB Antwort Kostenuebernahme Entscheidung",
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
  "description" : "Entscheidung zum Antrag zur Kostenuebernahme",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "ClaimResponse"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "MII EX MTB Antwort Kostenuebernahme Entscheidung",
      "definition" : "Entscheidung zum Antrag zur Kostenuebernahme"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-antwort-kostenuebernahme-entscheidung"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x].coding",
      "path" : "Extension.value[x].coding",
      "short" : "Status",
      "_short" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Status"
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
            "valueString" : "Status"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "definition" : "Status der Antwort auf den Antrag zur Kostenuebernahme",
      "_definition" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de-DE"
          },
          {
            "url" : "content",
            "valueString" : "Status der Antwort auf den Antrag zur Kostenuebernahme"
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
            "valueString" : "Status of the response to the cost coverage application"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      }
    },
    {
      "id" : "Extension.value[x].coding.system",
      "path" : "Extension.value[x].coding.system",
      "patternUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-antwort-kostenuebernahme-entscheidung"
    },
    {
      "id" : "Extension.value[x].coding.code",
      "path" : "Extension.value[x].coding.code",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-antwort-kostenuebernahme-entscheidung"
      }
    }]
  }
}

```
