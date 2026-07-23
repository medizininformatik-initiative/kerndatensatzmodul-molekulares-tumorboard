# mii-exa-mtb-kim-musterperson-bundle - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mii-exa-mtb-kim-musterperson-bundle**

## Example Bundle: mii-exa-mtb-kim-musterperson-bundle



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "mii-exa-mtb-kim-musterperson-bundle",
  "type" : "transaction",
  "entry" : [{
    "fullUrl" : "http://example.org/fhir/ClinicalImpression/mii-exa-mtb-kim-musterperson-behandlungsepisode",
    "resource" : {
      "resourceType" : "ClinicalImpression",
      "id" : "mii-exa-mtb-kim-musterperson-behandlungsepisode",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-behandlungsepisode|2026.0.1"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ClinicalImpression_mii-exa-mtb-kim-musterperson-behandlungsepisode\"> </a><p class=\"res-header-id\"><b>Generated Narrative: ClinicalImpression mii-exa-mtb-kim-musterperson-behandlungsepisode</b></p><a name=\"mii-exa-mtb-kim-musterperson-behandlungsepisode\"> </a><a name=\"hcmii-exa-mtb-kim-musterperson-behandlungsepisode\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-behandlungsepisode.html\">MII PR MTB Behandlungsepisode</a> version: 2026.0.1</p></div><p><b>status</b>: Completed</p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>effective</b>: 2023-01-20 --&gt; 2023-03-28</p><p><b>problem</b>: <a href=\"Condition-mii-exa-mtb-kim-diagnose.html\">Condition Bösartige Neubildung: Peritoneum, nicht näher bezeichnet</a></p><blockquote><p><b>investigation</b></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 106221001}\">Genetic finding</span></p><p><b>item</b>: <a href=\"DiagnosticReport-mii-exa-mtb-kim-musterperson-ngs-bericht.html\">Diagnostic Report for 'Genetic analysis report' for '-&gt;Kim Musterperson  (no stated gender), DoB: 1956-03-14'</a></p></blockquote><blockquote><p><b>investigation</b></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 60568-3}\">Pathology synoptic report</span></p><p><b>item</b>: <a href=\"DiagnosticReport-PatientKimMusterperson-MolecularPathologyReport-1.html\">Diagnostic Report for 'Pathology synoptic report' for '-&gt;Kim Musterperson  (no stated gender), DoB: 1956-03-14'</a></p></blockquote><blockquote><p><b>investigation</b></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 424122007}\">ECOG performance status finding</span></p><p><b>item</b>: <a href=\"Observation-mii-exa-onko-allgemeiner-leistungszustand-ecog.html\">Observation ECOG performance status</a></p></blockquote><blockquote><p><b>investigation</b></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 105511-0}\">Was consent given</span></p><p><b>item</b>: <a href=\"Observation-mii-exa-mtb-kim-musterperson-aufklaerung.html\">Observation Was consent given</a></p></blockquote><p><b>supportingInfo</b>: </p><ul><li><a href=\"Procedure-PatientKimMusterperson-Procedure-1.html\">Procedure Computertomographie [CT], nativ</a></li><li><a href=\"Observation-PatientKimMusterperson-Observation-1.html\">Observation Metastatic malignant neoplasm (disorder)</a></li><li><a href=\"Observation-PatientKimMusterperson-Observation-2.html\">Observation Recurrent</a></li><li><a href=\"Observation-PatientKimMusterperson-Observation-3.html\">Observation Ascites</a></li><li><a href=\"Observation-PatientKimMusterperson-Observation-4.html\">Observation Status post (contextual qualifier) (qualifier value)</a></li><li><a href=\"Procedure-PatientKimMusterperson-Procedure-2.html\">Procedure Computertomographie [CT], nativ</a></li><li><a href=\"Observation-PatientKimMusterperson-Observation-5.html\">Observation Status post (contextual qualifier) (qualifier value)</a></li><li><a href=\"Observation-PatientKimMusterperson-Observation-6.html\">Observation Ascites</a></li><li><a href=\"Observation-PatientKimMusterperson-Observation-7.html\">Observation Recurrent</a></li><li><a href=\"Observation-PatientKimMusterperson-Observation-8.html\">Observation Atypical</a></li><li><a href=\"Procedure-PatientKimMusterperson-Procedure-3.html\">Procedure Computertomographie [CT], nativ</a></li><li><a href=\"Observation-PatientKimMusterperson-Observation-9.html\">Observation Status post (contextual qualifier) (qualifier value)</a></li><li><a href=\"Observation-PatientKimMusterperson-Observation-10.html\">Observation Status post (contextual qualifier) (qualifier value)</a></li><li><a href=\"Observation-PatientKimMusterperson-Observation-11.html\">Observation Ascites</a></li><li><a href=\"Observation-PatientKimMusterperson-Observation-12.html\">Observation Recurrent</a></li><li><a href=\"Observation-PatientKimMusterperson-Observation-13.html\">Observation Recurrent</a></li><li><a href=\"Observation-PatientKimMusterperson-Observation-14.html\">Observation Mediastinal lymph node group</a></li><li><a href=\"Observation-PatientKimMusterperson-Observation-15.html\">Observation Mediastinal lymph node group</a></li><li><a href=\"Procedure-PatientKimMusterperson-Procedure-4.html\">Procedure Computertomographie [CT], nativ</a></li><li><a href=\"https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&amp;canonical=http://fhir.org/packages/de.basisprofil.r4/Procedure/PatientKimMusterperson-Procedure-4a\">Procedure/PatientKimMusterperson-Procedure-4a</a></li><li><a href=\"https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&amp;canonical=http://fhir.org/packages/de.basisprofil.r4/Procedure/PatientKimMusterperson-Procedure-4b\">Procedure/PatientKimMusterperson-Procedure-4b</a></li><li><a href=\"https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&amp;canonical=http://fhir.org/packages/de.basisprofil.r4/Procedure/PatientKimMusterperson-Procedure-4c\">Procedure/PatientKimMusterperson-Procedure-4c</a></li><li><a href=\"https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&amp;canonical=http://fhir.org/packages/de.basisprofil.r4/Procedure/PatientKimMusterperson-Procedure-4d\">Procedure/PatientKimMusterperson-Procedure-4d</a></li><li><a href=\"Observation-PatientKimMusterperson-Observation-16.html\">Observation Progressive</a></li><li><a href=\"Observation-PatientKimMusterperson-Observation-17.html\">Observation Entire peritoneal serous membrane of peritoneum</a></li><li><a href=\"Observation-PatientKimMusterperson-Observation-18.html\">Observation Carcinomatosis of peritoneum</a></li><li><a href=\"Observation-PatientKimMusterperson-Observation-19.html\">Observation True pelvis</a></li><li><a href=\"https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&amp;canonical=http://fhir.org/packages/de.basisprofil.r4/Procedure/PatientKimMusterperson-SystemicTherapy-1\">Procedure/PatientKimMusterperson-SystemicTherapy-1</a></li><li><a href=\"https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&amp;canonical=http://fhir.org/packages/de.basisprofil.r4/Procedure/PatientKimMusterperson-SystemicTherapy-2\">Procedure/PatientKimMusterperson-SystemicTherapy-2</a></li><li><a href=\"https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&amp;canonical=http://fhir.org/packages/de.basisprofil.r4/Procedure/PatientKimMusterperson-SystemicTherapy-3\">Procedure/PatientKimMusterperson-SystemicTherapy-3</a></li><li><a href=\"Procedure-MTBChemo1Procedure.html\">Procedure Chemotherapy</a></li><li><a href=\"Procedure-PatientKimMusterperson-Procedure-5.html\">Procedure Computertomographie [CT], nativ</a></li><li><a href=\"Observation-PatientKimMusterperson-Observation-20.html\">Observation Ascites</a></li><li><a href=\"Observation-PatientKimMusterperson-Observation-21.html\">Observation True pelvis</a></li><li><a href=\"Observation-PatientKimMusterperson-Observation-22.html\">Observation Localized enlarged lymph nodes</a></li><li><a href=\"Observation-PatientKimMusterperson-Observation-23.html\">Observation Lesion</a></li><li><a href=\"Procedure-MTBChemo2Procedure.html\">Procedure Chemotherapy</a></li><li><a href=\"Procedure-PatientKimMusterperson-Procedure-6.html\">Procedure Computertomographie [CT], nativ</a></li><li><a href=\"Observation-PatientKimMusterperson-Observation-24.html\">Observation Ascites</a></li><li><a href=\"Observation-PatientKimMusterperson-Observation-25.html\">Observation Recurrent</a></li><li><a href=\"Procedure-PatientKimMusterperson-Procedure-7.html\">Procedure Computertomographie [CT], nativ</a></li><li><a href=\"Observation-PatientKimMusterperson-Observation-26.html\">Observation True pelvis</a></li><li><a href=\"Observation-PatientKimMusterperson-Observation-27.html\">Observation Status post (contextual qualifier) (qualifier value)</a></li><li><a href=\"https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&amp;canonical=http://fhir.org/packages/de.basisprofil.r4/Observation/PatientKimMusterperson-Observation-28\">Observation/PatientKimMusterperson-Observation-28</a></li><li><a href=\"Observation-PatientKimMusterperson-Observation-29.html\">Observation Mediastinal lymph node group</a></li><li><a href=\"Observation-PatientKimMusterperson-Observation-30.html\">Observation Mediastinal lymph node group</a></li></ul></div>"
      },
      "status" : "completed",
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "effectivePeriod" : {
        "start" : "2023-01-20",
        "end" : "2023-03-28"
      },
      "problem" : [{
        "reference" : "Condition/mii-exa-mtb-kim-diagnose"
      }],
      "investigation" : [{
        "code" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "106221001",
            "display" : "Genetic finding"
          }]
        },
        "item" : [{
          "reference" : "DiagnosticReport/mii-exa-mtb-kim-musterperson-ngs-bericht"
        }]
      },
      {
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "60568-3",
            "display" : "Pathology synoptic report"
          }]
        },
        "item" : [{
          "reference" : "DiagnosticReport/PatientKimMusterperson-MolecularPathologyReport-1"
        }]
      },
      {
        "code" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "424122007",
            "display" : "ECOG performance status finding"
          }]
        },
        "item" : [{
          "reference" : "Observation/mii-exa-onko-allgemeiner-leistungszustand-ecog"
        }]
      },
      {
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "105511-0",
            "display" : "Was consent given"
          }]
        },
        "item" : [{
          "reference" : "Observation/mii-exa-mtb-kim-musterperson-aufklaerung"
        }]
      }],
      "supportingInfo" : [{
        "reference" : "Procedure/PatientKimMusterperson-Procedure-1"
      },
      {
        "reference" : "Observation/PatientKimMusterperson-Observation-1"
      },
      {
        "reference" : "Observation/PatientKimMusterperson-Observation-2"
      },
      {
        "reference" : "Observation/PatientKimMusterperson-Observation-3"
      },
      {
        "reference" : "Observation/PatientKimMusterperson-Observation-4"
      },
      {
        "reference" : "Procedure/PatientKimMusterperson-Procedure-2"
      },
      {
        "reference" : "Observation/PatientKimMusterperson-Observation-5"
      },
      {
        "reference" : "Observation/PatientKimMusterperson-Observation-6"
      },
      {
        "reference" : "Observation/PatientKimMusterperson-Observation-7"
      },
      {
        "reference" : "Observation/PatientKimMusterperson-Observation-8"
      },
      {
        "reference" : "Procedure/PatientKimMusterperson-Procedure-3"
      },
      {
        "reference" : "Observation/PatientKimMusterperson-Observation-9"
      },
      {
        "reference" : "Observation/PatientKimMusterperson-Observation-10"
      },
      {
        "reference" : "Observation/PatientKimMusterperson-Observation-11"
      },
      {
        "reference" : "Observation/PatientKimMusterperson-Observation-12"
      },
      {
        "reference" : "Observation/PatientKimMusterperson-Observation-13"
      },
      {
        "reference" : "Observation/PatientKimMusterperson-Observation-14"
      },
      {
        "reference" : "Observation/PatientKimMusterperson-Observation-15"
      },
      {
        "reference" : "Procedure/PatientKimMusterperson-Procedure-4"
      },
      {
        "reference" : "Procedure/PatientKimMusterperson-Procedure-4a"
      },
      {
        "reference" : "Procedure/PatientKimMusterperson-Procedure-4b"
      },
      {
        "reference" : "Procedure/PatientKimMusterperson-Procedure-4c"
      },
      {
        "reference" : "Procedure/PatientKimMusterperson-Procedure-4d"
      },
      {
        "reference" : "Observation/PatientKimMusterperson-Observation-16"
      },
      {
        "reference" : "Observation/PatientKimMusterperson-Observation-17"
      },
      {
        "reference" : "Observation/PatientKimMusterperson-Observation-18"
      },
      {
        "reference" : "Observation/PatientKimMusterperson-Observation-19"
      },
      {
        "reference" : "Procedure/PatientKimMusterperson-SystemicTherapy-1"
      },
      {
        "reference" : "Procedure/PatientKimMusterperson-SystemicTherapy-2"
      },
      {
        "reference" : "Procedure/PatientKimMusterperson-SystemicTherapy-3"
      },
      {
        "reference" : "Procedure/MTBChemo1Procedure"
      },
      {
        "reference" : "Procedure/PatientKimMusterperson-Procedure-5"
      },
      {
        "reference" : "Observation/PatientKimMusterperson-Observation-20"
      },
      {
        "reference" : "Observation/PatientKimMusterperson-Observation-21"
      },
      {
        "reference" : "Observation/PatientKimMusterperson-Observation-22"
      },
      {
        "reference" : "Observation/PatientKimMusterperson-Observation-23"
      },
      {
        "reference" : "Procedure/MTBChemo2Procedure"
      },
      {
        "reference" : "Procedure/PatientKimMusterperson-Procedure-6"
      },
      {
        "reference" : "Observation/PatientKimMusterperson-Observation-24"
      },
      {
        "reference" : "Observation/PatientKimMusterperson-Observation-25"
      },
      {
        "reference" : "Procedure/PatientKimMusterperson-Procedure-7"
      },
      {
        "reference" : "Observation/PatientKimMusterperson-Observation-26"
      },
      {
        "reference" : "Observation/PatientKimMusterperson-Observation-27"
      },
      {
        "reference" : "Observation/PatientKimMusterperson-Observation-28"
      },
      {
        "reference" : "Observation/PatientKimMusterperson-Observation-29"
      },
      {
        "reference" : "Observation/PatientKimMusterperson-Observation-30"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "ClinicalImpression/mii-exa-mtb-kim-musterperson-behandlungsepisode"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/mii-exa-mtb-kim-musterperson-aufklaerung",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-mtb-kim-musterperson-aufklaerung",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-consent-given|2026.0.1"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-mtb-kim-musterperson-aufklaerung\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-mtb-kim-musterperson-aufklaerung</b></p><a name=\"mii-exa-mtb-kim-musterperson-aufklaerung\"> </a><a name=\"hcmii-exa-mtb-kim-musterperson-aufklaerung\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-consent-given.html\">MII PR MTB Consent</a> version: 2026.0.1</p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 105511-0}\">Was consent given</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>effective</b>: 2023-01-02</p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 373066001}\">Yes (qualifier value)</span></p></div>"
      },
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "105511-0",
          "display" : "Was consent given"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "effectiveDateTime" : "2023-01-02",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "373066001",
          "display" : "Yes (qualifier value)"
        }]
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-mtb-kim-musterperson-aufklaerung"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Patient/PatientKimMusterperson",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "PatientKimMusterperson",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_PatientKimMusterperson\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Patient PatientKimMusterperson</b></p><a name=\"PatientKimMusterperson\"> </a><a name=\"hcPatientKimMusterperson\"> </a><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</p><hr/></div>"
      },
      "name" : [{
        "family" : "Musterperson",
        "given" : ["Kim"]
      }],
      "birthDate" : "1956-03-14"
    },
    "request" : {
      "method" : "PUT",
      "url" : "Patient/PatientKimMusterperson"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/MTBObservationCA125-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "MTBObservationCA125-1",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_MTBObservationCA125-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation MTBObservationCA125-1</b></p><a name=\"MTBObservationCA125-1\"> </a><a name=\"hcMTBObservationCA125-1\"> </a><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://loinc.org 26436-6}\">Laboratory studies (set)</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 11210-2}\">Cancer Ag 125 [Units/volume] in Body fluid</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>effective</b>: 2022-04-22</p><p><b>value</b>: 42.3 IU/ml<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code[iU]/ml = '[iU]/ml')</span></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "26436-6",
          "display" : "Laboratory studies (set)"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "11210-2",
          "display" : "Cancer Ag 125 [Units/volume] in Body fluid"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "effectiveDateTime" : "2022-04-22",
      "valueQuantity" : {
        "value" : 42.3,
        "unit" : "IU/ml",
        "system" : "http://unitsofmeasure.org",
        "code" : "[iU]/ml"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/MTBObservationCA125-1"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/MTBObservationCA125-2",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "MTBObservationCA125-2",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_MTBObservationCA125-2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation MTBObservationCA125-2</b></p><a name=\"MTBObservationCA125-2\"> </a><a name=\"hcMTBObservationCA125-2\"> </a><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://loinc.org 26436-6}\">Laboratory studies (set)</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 11210-2}\">Cancer Ag 125 [Units/volume] in Body fluid</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>effective</b>: 2022-07-18</p><p><b>value</b>: 45.8 IU/ml<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code[iU]/ml = '[iU]/ml')</span></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "26436-6",
          "display" : "Laboratory studies (set)"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "11210-2",
          "display" : "Cancer Ag 125 [Units/volume] in Body fluid"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "effectiveDateTime" : "2022-07-18",
      "valueQuantity" : {
        "value" : 45.8,
        "unit" : "IU/ml",
        "system" : "http://unitsofmeasure.org",
        "code" : "[iU]/ml"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/MTBObservationCA125-2"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/MTBObservationCA125-3",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "MTBObservationCA125-3",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_MTBObservationCA125-3\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation MTBObservationCA125-3</b></p><a name=\"MTBObservationCA125-3\"> </a><a name=\"hcMTBObservationCA125-3\"> </a><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://loinc.org 26436-6}\">Laboratory studies (set)</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 11210-2}\">Cancer Ag 125 [Units/volume] in Body fluid</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>effective</b>: 2022-10-24</p><p><b>value</b>: 49.7 IU/ml<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code[iU]/ml = '[iU]/ml')</span></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "26436-6",
          "display" : "Laboratory studies (set)"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "11210-2",
          "display" : "Cancer Ag 125 [Units/volume] in Body fluid"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "effectiveDateTime" : "2022-10-24",
      "valueQuantity" : {
        "value" : 49.7,
        "unit" : "IU/ml",
        "system" : "http://unitsofmeasure.org",
        "code" : "[iU]/ml"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/MTBObservationCA125-3"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/MTBObservationCA125-4",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "MTBObservationCA125-4",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_MTBObservationCA125-4\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation MTBObservationCA125-4</b></p><a name=\"MTBObservationCA125-4\"> </a><a name=\"hcMTBObservationCA125-4\"> </a><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://loinc.org 26436-6}\">Laboratory studies (set)</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 11210-2}\">Cancer Ag 125 [Units/volume] in Body fluid</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>effective</b>: 2022-12-27</p><p><b>value</b>: 67.2 IU/ml<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code[iU]/ml = '[iU]/ml')</span></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "26436-6",
          "display" : "Laboratory studies (set)"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "11210-2",
          "display" : "Cancer Ag 125 [Units/volume] in Body fluid"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "effectiveDateTime" : "2022-12-27",
      "valueQuantity" : {
        "value" : 67.2,
        "unit" : "IU/ml",
        "system" : "http://unitsofmeasure.org",
        "code" : "[iU]/ml"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/MTBObservationCA125-4"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/MTBObservationCA125-5",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "MTBObservationCA125-5",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_MTBObservationCA125-5\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation MTBObservationCA125-5</b></p><a name=\"MTBObservationCA125-5\"> </a><a name=\"hcMTBObservationCA125-5\"> </a><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://loinc.org 26436-6}\">Laboratory studies (set)</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 11210-2}\">Cancer Ag 125 [Units/volume] in Body fluid</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>effective</b>: 2023-03-24</p><p><b>value</b>: 43.7 IU/ml<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code[iU]/ml = '[iU]/ml')</span></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "26436-6",
          "display" : "Laboratory studies (set)"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "11210-2",
          "display" : "Cancer Ag 125 [Units/volume] in Body fluid"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "effectiveDateTime" : "2023-03-24",
      "valueQuantity" : {
        "value" : 43.7,
        "unit" : "IU/ml",
        "system" : "http://unitsofmeasure.org",
        "code" : "[iU]/ml"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/MTBObservationCA125-5"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/MTBObservationCA125-6",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "MTBObservationCA125-6",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_MTBObservationCA125-6\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation MTBObservationCA125-6</b></p><a name=\"MTBObservationCA125-6\"> </a><a name=\"hcMTBObservationCA125-6\"> </a><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://loinc.org 26436-6}\">Laboratory studies (set)</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 11210-2}\">Cancer Ag 125 [Units/volume] in Body fluid</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>effective</b>: 2023-06-20</p><p><b>value</b>: 78.2 IU/ml<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code[iU]/ml = '[iU]/ml')</span></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "26436-6",
          "display" : "Laboratory studies (set)"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "11210-2",
          "display" : "Cancer Ag 125 [Units/volume] in Body fluid"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "effectiveDateTime" : "2023-06-20",
      "valueQuantity" : {
        "value" : 78.2,
        "unit" : "IU/ml",
        "system" : "http://unitsofmeasure.org",
        "code" : "[iU]/ml"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/MTBObservationCA125-6"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/DiagnosticReport/PatientKimMusterperson-MolecularPathologyReport-1",
    "resource" : {
      "resourceType" : "DiagnosticReport",
      "id" : "PatientKimMusterperson-MolecularPathologyReport-1",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-molecular-pathology-report|2026.0.1"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"DiagnosticReport_PatientKimMusterperson-MolecularPathologyReport-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: DiagnosticReport PatientKimMusterperson-MolecularPathologyReport-1</b></p><a name=\"PatientKimMusterperson-MolecularPathologyReport-1\"> </a><a name=\"hcPatientKimMusterperson-MolecularPathologyReport-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-molecular-pathology-report.html\">MII PR MTB Molecular Pathology Report</a> version: 2026.0.1</p></div><h2><span title=\"Codes:{http://loinc.org 60568-3}\">Pathology synoptic report</span> </h2><table class=\"grid\"><tr><td>Subject</td><td>Kim Musterperson  (no stated gender), DoB: 1956-03-14</td></tr></table><p><b>Report Details</b></p><table class=\"grid\"><tr><td><b>Code</b></td><td><b>Value</b></td><td><b>Flags</b></td></tr><tr><td><a href=\"Observation-PatientKimMusterperson-MolecularPathologyObservation-0a-Her2neu.html\"><span title=\"Codes:{http://loinc.org 18474-7}, {http://snomed.info/sct 1234806008}\">HER2 Ag [Presence] in Tissue by Immune stain</span></a></td><td><span title=\"Codes:{http://loinc.org LA11842-4}\">2+</span></td><td>Final</td></tr></table></div>"
      },
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "60568-3",
          "display" : "Pathology synoptic report"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "result" : [{
        "reference" : "Observation/PatientKimMusterperson-MolecularPathologyObservation-0a-Her2neu"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "DiagnosticReport/PatientKimMusterperson-MolecularPathologyReport-1"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Specimen/PatientKimMusterperson-AscitesSpecimen-2",
    "resource" : {
      "resourceType" : "Specimen",
      "id" : "PatientKimMusterperson-AscitesSpecimen-2",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-specimen"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Specimen_PatientKimMusterperson-AscitesSpecimen-2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Specimen PatientKimMusterperson-AscitesSpecimen-2</b></p><a name=\"PatientKimMusterperson-AscitesSpecimen-2\"> </a><a name=\"hcPatientKimMusterperson-AscitesSpecimen-2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-specimen\">MII PR Onkologie Specimen</a></p></div><p><b>accessionIdentifier</b>: Z230201/23</p><p><b>type</b>: <span title=\"Codes:{http://snomed.info/sct 309201001}\">Ascitic fluid specimen (specimen)</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><h3>Collections</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Collected[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>2023-02-01</td></tr></table></div>"
      },
      "accessionIdentifier" : {
        "value" : "Z230201/23"
      },
      "type" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "309201001",
          "display" : "Ascitic fluid specimen (specimen)"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "collection" : {
        "collectedDateTime" : "2023-02-01"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Specimen/PatientKimMusterperson-AscitesSpecimen-2"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/PatientKimMusterperson-MolecularPathologyObservation-0a-Her2neu",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "PatientKimMusterperson-MolecularPathologyObservation-0a-Her2neu",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry|2026.0.1"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_PatientKimMusterperson-MolecularPathologyObservation-0a-Her2neu\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation PatientKimMusterperson-MolecularPathologyObservation-0a-Her2neu</b></p><a name=\"PatientKimMusterperson-MolecularPathologyObservation-0a-Her2neu\"> </a><a name=\"hcPatientKimMusterperson-MolecularPathologyObservation-0a-Her2neu\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-immunohistochemistry.html\">MII PR MTB Immunohistochemistry</a> version: 2026.0.1</p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 GE}\">Genetik</span>, <span title=\"Codes:{http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs biomarker-category}\">A characterization of a given biomarker observation.</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 18474-7}, {http://snomed.info/sct 1234806008}\">HER2 Ag [Presence] in Tissue by Immune stain</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>value</b>: <span title=\"Codes:{http://loinc.org LA11842-4}\">2+</span></p><p><b>specimen</b>: <a href=\"Specimen-PatientKimMusterperson-AscitesSpecimen-2.html\">Specimen: accessionIdentifier = Z230201/23; type = Ascitic fluid specimen (specimen)</a></p><h3>Components</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Code</b></td><td><b>Value[x]</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://loinc.org 48018-6}\">Gene studied [ID]</span></td><td><span title=\"Codes:{http://www.genenames.org/geneId HGNC:3430}\">ERBB2</span></td></tr></table></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "GE"
        }]
      },
      {
        "coding" : [{
          "system" : "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs",
          "code" : "biomarker-category"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "18474-7",
          "display" : "HER2 Ag [Presence] in Tissue by Immune stain"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "1234806008",
          "display" : "Observation using immunohistochemistry (observable entity)"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "LA11842-4",
          "display" : "2+"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/PatientKimMusterperson-AscitesSpecimen-2"
      },
      "component" : [{
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "48018-6",
            "display" : "Gene studied [ID]"
          }]
        },
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://www.genenames.org/geneId",
            "code" : "HGNC:3430",
            "display" : "ERBB2"
          }]
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/PatientKimMusterperson-MolecularPathologyObservation-0a-Her2neu"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/PatientKimMusterperson-MolecularPathologyInterpret-0a-Her2neu",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "PatientKimMusterperson-MolecularPathologyInterpret-0a-Her2neu",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry|2026.0.1"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_PatientKimMusterperson-MolecularPathologyInterpret-0a-Her2neu\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation PatientKimMusterperson-MolecularPathologyInterpret-0a-Her2neu</b></p><a name=\"PatientKimMusterperson-MolecularPathologyInterpret-0a-Her2neu\"> </a><a name=\"hcPatientKimMusterperson-MolecularPathologyInterpret-0a-Her2neu\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-immunohistochemistry.html\">MII PR MTB Immunohistochemistry</a> version: 2026.0.1</p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs biomarker-category}\">A characterization of a given biomarker observation.</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 48676-1}, {http://snomed.info/sct 1234806008}\">HER2 [Interpretation] in Tissue</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 1381317004}\">HER2-low (IHC 2+/ISH negative)</span></p><p><b>specimen</b>: <a href=\"Specimen-PatientKimMusterperson-AscitesSpecimen-2.html\">Specimen: accessionIdentifier = Z230201/23; type = Ascitic fluid specimen (specimen)</a></p><h3>Components</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Code</b></td><td><b>Value[x]</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://loinc.org 48018-6}\">Gene studied [ID]</span></td><td><span title=\"Codes:{http://www.genenames.org/geneId HGNC:3430}\">ERBB2</span></td></tr></table></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs",
          "code" : "biomarker-category"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "48676-1",
          "display" : "HER2 [Interpretation] in Tissue"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "1234806008",
          "display" : "Observation using immunohistochemistry (observable entity)"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "1381317004",
          "display" : "Human epidermal growth factor receptor 2 low"
        }],
        "text" : "HER2-low (IHC 2+/ISH negative)"
      },
      "specimen" : {
        "reference" : "Specimen/PatientKimMusterperson-AscitesSpecimen-2"
      },
      "component" : [{
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "48018-6",
            "display" : "Gene studied [ID]"
          }]
        },
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://www.genenames.org/geneId",
            "code" : "HGNC:3430",
            "display" : "ERBB2"
          }]
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/PatientKimMusterperson-MolecularPathologyInterpret-0a-Her2neu"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/PatientKimMusterperson-MolecularPathologyObservation-0b-Folat-Ra",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "PatientKimMusterperson-MolecularPathologyObservation-0b-Folat-Ra",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry|2026.0.1"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_PatientKimMusterperson-MolecularPathologyObservation-0b-Folat-Ra\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation PatientKimMusterperson-MolecularPathologyObservation-0b-Folat-Ra</b></p><a name=\"PatientKimMusterperson-MolecularPathologyObservation-0b-Folat-Ra\"> </a><a name=\"hcPatientKimMusterperson-MolecularPathologyObservation-0b-Folat-Ra\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-immunohistochemistry.html\">MII PR MTB Immunohistochemistry</a> version: 2026.0.1</p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs biomarker-category}\">A characterization of a given biomarker observation.</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 55229-9}, {http://snomed.info/sct 1234806008}\">Immune stain study</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>value</b>: 70 %<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code{/100} = '{/100}')</span></p><p><b>specimen</b>: <a href=\"Specimen-PatientKimMusterperson-AscitesSpecimen-2.html\">Specimen: accessionIdentifier = Z230201/23; type = Ascitic fluid specimen (specimen)</a></p><h3>Components</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Code</b></td><td><b>Value[x]</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://loinc.org 48018-6}\">Gene studied [ID]</span></td><td><span title=\"Codes:{http://www.genenames.org/geneId HGNC:3791}, {http://loinc.org LP440974-6}\">FOLR1</span></td></tr></table></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs",
          "code" : "biomarker-category"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "55229-9",
          "display" : "Immune stain study"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "1234806008",
          "display" : "Observation using immunohistochemistry (observable entity)"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "valueQuantity" : {
        "value" : 70,
        "unit" : "%",
        "system" : "http://unitsofmeasure.org",
        "code" : "{/100}"
      },
      "specimen" : {
        "reference" : "Specimen/PatientKimMusterperson-AscitesSpecimen-2"
      },
      "component" : [{
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "48018-6",
            "display" : "Gene studied [ID]"
          }]
        },
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://www.genenames.org/geneId",
            "code" : "HGNC:3791",
            "display" : "FOLR1"
          },
          {
            "system" : "http://loinc.org",
            "code" : "LP440974-6",
            "display" : "Folate receptor alpha"
          }]
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/PatientKimMusterperson-MolecularPathologyObservation-0b-Folat-Ra"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/PatientKimMusterperson-MolecularPathologyObservation-0c-Trop2",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "PatientKimMusterperson-MolecularPathologyObservation-0c-Trop2",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry|2026.0.1"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_PatientKimMusterperson-MolecularPathologyObservation-0c-Trop2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation PatientKimMusterperson-MolecularPathologyObservation-0c-Trop2</b></p><a name=\"PatientKimMusterperson-MolecularPathologyObservation-0c-Trop2\"> </a><a name=\"hcPatientKimMusterperson-MolecularPathologyObservation-0c-Trop2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-immunohistochemistry.html\">MII PR MTB Immunohistochemistry</a> version: 2026.0.1</p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs biomarker-category}\">A characterization of a given biomarker observation.</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 55229-9}, {http://snomed.info/sct 1234806008}\">Immune stain study</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>value</b>: <span title=\"Codes:{http://loinc.org LA6576-8}\">Positive</span></p><p><b>specimen</b>: <a href=\"Specimen-PatientKimMusterperson-AscitesSpecimen-2.html\">Specimen: accessionIdentifier = Z230201/23; type = Ascitic fluid specimen (specimen)</a></p><h3>Components</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Code</b></td><td><b>Value[x]</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://loinc.org 48018-6}\">Gene studied [ID]</span></td><td><span title=\"Codes:{http://www.genenames.org/geneId HGNC:11530}, {http://www.uniprot.org P09758}\">TACSTD2</span></td></tr></table></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs",
          "code" : "biomarker-category"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "55229-9",
          "display" : "Immune stain study"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "1234806008",
          "display" : "Observation using immunohistochemistry (observable entity)"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "LA6576-8",
          "display" : "Positive"
        }]
      },
      "specimen" : {
        "reference" : "Specimen/PatientKimMusterperson-AscitesSpecimen-2"
      },
      "component" : [{
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "48018-6",
            "display" : "Gene studied [ID]"
          }]
        },
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://www.genenames.org/geneId",
            "code" : "HGNC:11530",
            "display" : "TACSTD2"
          },
          {
            "system" : "http://www.uniprot.org",
            "code" : "P09758",
            "display" : "Tumor-associated calcium signal transducer 2"
          }]
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/PatientKimMusterperson-MolecularPathologyObservation-0c-Trop2"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/PatientKimMusterperson-MolecularPathologyObservation-1-CA125",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "PatientKimMusterperson-MolecularPathologyObservation-1-CA125",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry|2026.0.1"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_PatientKimMusterperson-MolecularPathologyObservation-1-CA125\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation PatientKimMusterperson-MolecularPathologyObservation-1-CA125</b></p><a name=\"PatientKimMusterperson-MolecularPathologyObservation-1-CA125\"> </a><a name=\"hcPatientKimMusterperson-MolecularPathologyObservation-1-CA125\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-immunohistochemistry.html\">MII PR MTB Immunohistochemistry</a> version: 2026.0.1</p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs biomarker-category}\">A characterization of a given biomarker observation.</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 48677-9}, {http://snomed.info/sct 1234806008}\">Cancer Ag 125 [Presence] in Tissue by Immune stain</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>value</b>: <span title=\"Codes:{http://loinc.org LA6576-8}\">Die Tumorzellen sind partiell positiv für CA125,...</span></p><p><b>specimen</b>: <a href=\"Specimen-PatientKimMusterperson-AscitesSpecimen-2.html\">Specimen: accessionIdentifier = Z230201/23; type = Ascitic fluid specimen (specimen)</a></p><h3>Components</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Code</b></td><td><b>Value[x]</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://loinc.org 48018-6}\">Gene studied [ID]</span></td><td><span title=\"Codes:{http://www.genenames.org/geneId HGNC:11530}, {http://www.uniprot.org P09758}\">TACSTD2</span></td></tr></table></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs",
          "code" : "biomarker-category"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "48677-9",
          "display" : "Cancer Ag 125 [Presence] in Tissue by Immune stain"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "1234806008",
          "display" : "Observation using immunohistochemistry (observable entity)"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "LA6576-8",
          "display" : "Positive"
        }],
        "text" : "Die Tumorzellen sind partiell positiv für CA125,..."
      },
      "specimen" : {
        "reference" : "Specimen/PatientKimMusterperson-AscitesSpecimen-2"
      },
      "component" : [{
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "48018-6",
            "display" : "Gene studied [ID]"
          }]
        },
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://www.genenames.org/geneId",
            "code" : "HGNC:11530",
            "display" : "TACSTD2"
          },
          {
            "system" : "http://www.uniprot.org",
            "code" : "P09758",
            "display" : "Tumor-associated calcium signal transducer 2"
          }]
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/PatientKimMusterperson-MolecularPathologyObservation-1-CA125"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/PatientKimMusterperson-MolecularPathologyObservation-2-Pax8",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "PatientKimMusterperson-MolecularPathologyObservation-2-Pax8",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry|2026.0.1"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_PatientKimMusterperson-MolecularPathologyObservation-2-Pax8\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation PatientKimMusterperson-MolecularPathologyObservation-2-Pax8</b></p><a name=\"PatientKimMusterperson-MolecularPathologyObservation-2-Pax8\"> </a><a name=\"hcPatientKimMusterperson-MolecularPathologyObservation-2-Pax8\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-immunohistochemistry.html\">MII PR MTB Immunohistochemistry</a> version: 2026.0.1</p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs biomarker-category}\">A characterization of a given biomarker observation.</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 73910-2}, {http://snomed.info/sct 1234806008}\">PAX8 Ag [Presence] in Tissue by Immune stain</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>value</b>: <span title=\"Codes:{http://loinc.org LA6576-8}\">Tumorzellen durchgehend nukleär für Pax 8</span></p><p><b>specimen</b>: <a href=\"Specimen-PatientKimMusterperson-AscitesSpecimen-2.html\">Specimen: accessionIdentifier = Z230201/23; type = Ascitic fluid specimen (specimen)</a></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs",
          "code" : "biomarker-category"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "73910-2",
          "display" : "PAX8 Ag [Presence] in Tissue by Immune stain"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "1234806008",
          "display" : "Observation using immunohistochemistry (observable entity)"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "LA6576-8",
          "display" : "Positive"
        }],
        "text" : "Tumorzellen durchgehend nukleär für Pax 8"
      },
      "specimen" : {
        "reference" : "Specimen/PatientKimMusterperson-AscitesSpecimen-2"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/PatientKimMusterperson-MolecularPathologyObservation-2-Pax8"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/PatientKimMusterperson-MolecularPathologyObservation-3-WT1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "PatientKimMusterperson-MolecularPathologyObservation-3-WT1",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry|2026.0.1"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_PatientKimMusterperson-MolecularPathologyObservation-3-WT1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation PatientKimMusterperson-MolecularPathologyObservation-3-WT1</b></p><a name=\"PatientKimMusterperson-MolecularPathologyObservation-3-WT1\"> </a><a name=\"hcPatientKimMusterperson-MolecularPathologyObservation-3-WT1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-immunohistochemistry.html\">MII PR MTB Immunohistochemistry</a> version: 2026.0.1</p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs biomarker-category}\">A characterization of a given biomarker observation.</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 1234806008}\">Observation using immunohistochemistry (observable entity)</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>value</b>: <span title=\"Codes:{http://loinc.org LA6576-8}\">Tumorzellen durchgehend nukleär für WT1</span></p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 84640000}\">Nukleär</span></p><p><b>specimen</b>: <a href=\"Specimen-PatientKimMusterperson-AscitesSpecimen-2.html\">Specimen: accessionIdentifier = Z230201/23; type = Ascitic fluid specimen (specimen)</a></p><h3>Components</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Code</b></td><td><b>Value[x]</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://loinc.org 48018-6}\">Gene studied [ID]</span></td><td><span title=\"Codes:{http://www.genenames.org/geneId HGNC:12796}, {http://loinc.org LP65352-4}\">WT1</span></td></tr></table></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs",
          "code" : "biomarker-category"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "1234806008",
          "display" : "Observation using immunohistochemistry (observable entity)"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "LA6576-8",
          "display" : "Positive"
        }],
        "text" : "Tumorzellen durchgehend nukleär für WT1"
      },
      "bodySite" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "84640000",
          "display" : "Nucleus (cell structure)"
        }],
        "text" : "Nukleär"
      },
      "specimen" : {
        "reference" : "Specimen/PatientKimMusterperson-AscitesSpecimen-2"
      },
      "component" : [{
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "48018-6",
            "display" : "Gene studied [ID]"
          }]
        },
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://www.genenames.org/geneId",
            "code" : "HGNC:12796",
            "display" : "WT1"
          },
          {
            "system" : "http://loinc.org",
            "code" : "LP65352-4",
            "display" : "WT-1 Ag"
          }]
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/PatientKimMusterperson-MolecularPathologyObservation-3-WT1"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/PatientKimMusterperson-MolecularPathologyObservation-4-ER",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "PatientKimMusterperson-MolecularPathologyObservation-4-ER",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry|2026.0.1"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_PatientKimMusterperson-MolecularPathologyObservation-4-ER\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation PatientKimMusterperson-MolecularPathologyObservation-4-ER</b></p><a name=\"PatientKimMusterperson-MolecularPathologyObservation-4-ER\"> </a><a name=\"hcPatientKimMusterperson-MolecularPathologyObservation-4-ER\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-immunohistochemistry.html\">MII PR MTB Immunohistochemistry</a> version: 2026.0.1</p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs biomarker-category}\">A characterization of a given biomarker observation.</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 14228-1}, {http://snomed.info/sct 1234806008}\">Cells.estrogen receptor/cells in Tissue by Immune stain</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>value</b>: 70 %<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code/100 = '/100')</span></p><p><b>specimen</b>: <a href=\"Specimen-PatientKimMusterperson-AscitesSpecimen-2.html\">Specimen: accessionIdentifier = Z230201/23; type = Ascitic fluid specimen (specimen)</a></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs",
          "code" : "biomarker-category"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "14228-1",
          "display" : "Cells.estrogen receptor/cells in Tissue by Immune stain"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "1234806008",
          "display" : "Observation using immunohistochemistry (observable entity)"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "valueQuantity" : {
        "value" : 70,
        "unit" : "%",
        "system" : "http://unitsofmeasure.org",
        "code" : "/100"
      },
      "specimen" : {
        "reference" : "Specimen/PatientKimMusterperson-AscitesSpecimen-2"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/PatientKimMusterperson-MolecularPathologyObservation-4-ER"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/PatientKimMusterperson-MolecularPathologyObservation-5-PR",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "PatientKimMusterperson-MolecularPathologyObservation-5-PR",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry|2026.0.1"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_PatientKimMusterperson-MolecularPathologyObservation-5-PR\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation PatientKimMusterperson-MolecularPathologyObservation-5-PR</b></p><a name=\"PatientKimMusterperson-MolecularPathologyObservation-5-PR\"> </a><a name=\"hcPatientKimMusterperson-MolecularPathologyObservation-5-PR\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-immunohistochemistry.html\">MII PR MTB Immunohistochemistry</a> version: 2026.0.1</p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs biomarker-category}\">A characterization of a given biomarker observation.</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 14230-7}, {http://snomed.info/sct 1234806008}\">Cells.progesterone receptor/cells in Tissue by Immune stain</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>value</b>: 30 %<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code/100 = '/100')</span></p><p><b>specimen</b>: <a href=\"Specimen-PatientKimMusterperson-AscitesSpecimen-2.html\">Specimen: accessionIdentifier = Z230201/23; type = Ascitic fluid specimen (specimen)</a></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs",
          "code" : "biomarker-category"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "14230-7",
          "display" : "Cells.progesterone receptor/cells in Tissue by Immune stain"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "1234806008",
          "display" : "Observation using immunohistochemistry (observable entity)"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "valueQuantity" : {
        "value" : 30,
        "unit" : "%",
        "system" : "http://unitsofmeasure.org",
        "code" : "/100"
      },
      "specimen" : {
        "reference" : "Specimen/PatientKimMusterperson-AscitesSpecimen-2"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/PatientKimMusterperson-MolecularPathologyObservation-5-PR"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/PatientKimMusterperson-MolecularPathologyObservation-6-p53",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "PatientKimMusterperson-MolecularPathologyObservation-6-p53",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry|2026.0.1"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_PatientKimMusterperson-MolecularPathologyObservation-6-p53\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation PatientKimMusterperson-MolecularPathologyObservation-6-p53</b></p><a name=\"PatientKimMusterperson-MolecularPathologyObservation-6-p53\"> </a><a name=\"hcPatientKimMusterperson-MolecularPathologyObservation-6-p53\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-immunohistochemistry.html\">MII PR MTB Immunohistochemistry</a> version: 2026.0.1</p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs biomarker-category}\">A characterization of a given biomarker observation.</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 14229-9}, {http://snomed.info/sct 1234806008}\">P53 protein Ag [Presence] in Tissue by Immune stain</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>value</b>: <span title=\"Codes:{http://loinc.org LA6576-8}\">Kräftige nukleäre Überexpression von p53</span></p><p><b>specimen</b>: <a href=\"Specimen-PatientKimMusterperson-AscitesSpecimen-2.html\">Specimen: accessionIdentifier = Z230201/23; type = Ascitic fluid specimen (specimen)</a></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs",
          "code" : "biomarker-category"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "14229-9",
          "display" : "P53 protein Ag [Presence] in Tissue by Immune stain"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "1234806008",
          "display" : "Observation using immunohistochemistry (observable entity)"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "LA6576-8",
          "display" : "Positive"
        }],
        "text" : "Kräftige nukleäre Überexpression von p53"
      },
      "specimen" : {
        "reference" : "Specimen/PatientKimMusterperson-AscitesSpecimen-2"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/PatientKimMusterperson-MolecularPathologyObservation-6-p53"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/PatientKimMusterperson-MolecularPathologyObservation-7-p53",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "PatientKimMusterperson-MolecularPathologyObservation-7-p53",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry|2026.0.1"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_PatientKimMusterperson-MolecularPathologyObservation-7-p53\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation PatientKimMusterperson-MolecularPathologyObservation-7-p53</b></p><a name=\"PatientKimMusterperson-MolecularPathologyObservation-7-p53\"> </a><a name=\"hcPatientKimMusterperson-MolecularPathologyObservation-7-p53\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-immunohistochemistry.html\">MII PR MTB Immunohistochemistry</a> version: 2026.0.1</p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs biomarker-category}\">A characterization of a given biomarker observation.</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 14229-9}, {http://snomed.info/sct 1234806008}\">P53 protein Ag [Presence] in Tissue by Immune stain</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>value</b>: <span title=\"Codes:{http://loinc.org LA6576-8}\">Kräftige nukleäre Überexpression von p53</span></p><p><b>specimen</b>: <a href=\"Specimen-PatientKimMusterperson-AscitesSpecimen-2.html\">Specimen: accessionIdentifier = Z230201/23; type = Ascitic fluid specimen (specimen)</a></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs",
          "code" : "biomarker-category"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "14229-9",
          "display" : "P53 protein Ag [Presence] in Tissue by Immune stain"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "1234806008",
          "display" : "Observation using immunohistochemistry (observable entity)"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "LA6576-8",
          "display" : "Positive"
        }],
        "text" : "Kräftige nukleäre Überexpression von p53"
      },
      "specimen" : {
        "reference" : "Specimen/PatientKimMusterperson-AscitesSpecimen-2"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/PatientKimMusterperson-MolecularPathologyObservation-7-p53"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Procedure/PatientKimMusterperson-Procedure-1",
    "resource" : {
      "resourceType" : "Procedure",
      "id" : "PatientKimMusterperson-Procedure-1",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Procedure_PatientKimMusterperson-Procedure-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Procedure PatientKimMusterperson-Procedure-1</b></p><a name=\"PatientKimMusterperson-Procedure-1\"> </a><a name=\"hcPatientKimMusterperson-Procedure-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.base@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure\">MII PR Prozedur Procedure</a></p></div><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 363680008}\">Radiographic imaging procedure</span></p><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/ops 3-20}\">Computertomographie [CT], nativ</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>performed</b>: 2022-04-20</p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 818983003}\">Abdomen</span>, <span title=\"Codes:{http://snomed.info/sct 51185008}\">Thoracic structure</span></p></div>"
      },
      "status" : "completed",
      "category" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "363680008",
          "display" : "Radiographic imaging procedure"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/ops",
          "version" : "2025",
          "code" : "3-20",
          "display" : "Computertomographie [CT], nativ"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "performedDateTime" : "2022-04-20",
      "bodySite" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "818983003",
          "display" : "Abdomen"
        }]
      },
      {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "51185008",
          "display" : "Thoracic structure"
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Procedure/PatientKimMusterperson-Procedure-1"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Procedure/PatientKimMusterperson-Procedure-2",
    "resource" : {
      "resourceType" : "Procedure",
      "id" : "PatientKimMusterperson-Procedure-2",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Procedure_PatientKimMusterperson-Procedure-2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Procedure PatientKimMusterperson-Procedure-2</b></p><a name=\"PatientKimMusterperson-Procedure-2\"> </a><a name=\"hcPatientKimMusterperson-Procedure-2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.base@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure\">MII PR Prozedur Procedure</a></p></div><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 363680008}\">Radiographic imaging procedure</span></p><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/ops 3-20}\">Computertomographie [CT], nativ</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>performed</b>: 2022-07-15</p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 818983003}\">Abdomen</span>, <span title=\"Codes:{http://snomed.info/sct 51185008}\">Thoracic structure</span></p></div>"
      },
      "status" : "completed",
      "category" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "363680008",
          "display" : "Radiographic imaging procedure"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/ops",
          "version" : "2025",
          "code" : "3-20",
          "display" : "Computertomographie [CT], nativ"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "performedDateTime" : "2022-07-15",
      "bodySite" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "818983003",
          "display" : "Abdomen"
        }]
      },
      {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "51185008",
          "display" : "Thoracic structure"
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Procedure/PatientKimMusterperson-Procedure-2"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Procedure/PatientKimMusterperson-Procedure-3",
    "resource" : {
      "resourceType" : "Procedure",
      "id" : "PatientKimMusterperson-Procedure-3",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Procedure_PatientKimMusterperson-Procedure-3\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Procedure PatientKimMusterperson-Procedure-3</b></p><a name=\"PatientKimMusterperson-Procedure-3\"> </a><a name=\"hcPatientKimMusterperson-Procedure-3\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.base@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure\">MII PR Prozedur Procedure</a></p></div><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 363680008}\">Radiographic imaging procedure</span></p><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/ops 3-20}\">Computertomographie [CT], nativ</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>performed</b>: 2022-10-22</p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 818983003}\">Abdomen</span>, <span title=\"Codes:{http://snomed.info/sct 51185008}\">Thoracic structure</span></p></div>"
      },
      "status" : "completed",
      "category" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "363680008",
          "display" : "Radiographic imaging procedure"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/ops",
          "version" : "2025",
          "code" : "3-20",
          "display" : "Computertomographie [CT], nativ"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "performedDateTime" : "2022-10-22",
      "bodySite" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "818983003",
          "display" : "Abdomen"
        }]
      },
      {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "51185008",
          "display" : "Thoracic structure"
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Procedure/PatientKimMusterperson-Procedure-3"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Procedure/PatientKimMusterperson-Procedure-4",
    "resource" : {
      "resourceType" : "Procedure",
      "id" : "PatientKimMusterperson-Procedure-4",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Procedure_PatientKimMusterperson-Procedure-4\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Procedure PatientKimMusterperson-Procedure-4</b></p><a name=\"PatientKimMusterperson-Procedure-4\"> </a><a name=\"hcPatientKimMusterperson-Procedure-4\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.base@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure\">MII PR Prozedur Procedure</a></p></div><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 363680008}\">Radiographic imaging procedure</span></p><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/ops 3-20}\">Computertomographie [CT], nativ</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>performed</b>: 2022-12-19</p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 818983003}\">Abdomen</span>, <span title=\"Codes:{http://snomed.info/sct 51185008}\">Thoracic structure</span></p></div>"
      },
      "status" : "completed",
      "category" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "363680008",
          "display" : "Radiographic imaging procedure"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/ops",
          "version" : "2025",
          "code" : "3-20",
          "display" : "Computertomographie [CT], nativ"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "performedDateTime" : "2022-12-19",
      "bodySite" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "818983003",
          "display" : "Abdomen"
        }]
      },
      {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "51185008",
          "display" : "Thoracic structure"
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Procedure/PatientKimMusterperson-Procedure-4"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Procedure/PatientKimMusterperson-Procedure-5",
    "resource" : {
      "resourceType" : "Procedure",
      "id" : "PatientKimMusterperson-Procedure-5",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Procedure_PatientKimMusterperson-Procedure-5\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Procedure PatientKimMusterperson-Procedure-5</b></p><a name=\"PatientKimMusterperson-Procedure-5\"> </a><a name=\"hcPatientKimMusterperson-Procedure-5\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.base@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure\">MII PR Prozedur Procedure</a></p></div><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 363680008}\">Radiographic imaging procedure</span></p><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/ops 3-20}\">Computertomographie [CT], nativ</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>performed</b>: 2023-03-20</p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 818983003}\">Abdomen</span>, <span title=\"Codes:{http://snomed.info/sct 51185008}\">Thoracic structure</span></p></div>"
      },
      "status" : "completed",
      "category" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "363680008",
          "display" : "Radiographic imaging procedure"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/ops",
          "version" : "2025",
          "code" : "3-20",
          "display" : "Computertomographie [CT], nativ"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "performedDateTime" : "2023-03-20",
      "bodySite" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "818983003",
          "display" : "Abdomen"
        }]
      },
      {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "51185008",
          "display" : "Thoracic structure"
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Procedure/PatientKimMusterperson-Procedure-5"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Procedure/PatientKimMusterperson-Procedure-6",
    "resource" : {
      "resourceType" : "Procedure",
      "id" : "PatientKimMusterperson-Procedure-6",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Procedure_PatientKimMusterperson-Procedure-6\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Procedure PatientKimMusterperson-Procedure-6</b></p><a name=\"PatientKimMusterperson-Procedure-6\"> </a><a name=\"hcPatientKimMusterperson-Procedure-6\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.base@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure\">MII PR Prozedur Procedure</a></p></div><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 363680008}\">Radiographic imaging procedure</span></p><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/ops 3-20}\">Computertomographie [CT], nativ</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>performed</b>: 2023-08-20</p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 818983003}\">Abdomen</span>, <span title=\"Codes:{http://snomed.info/sct 51185008}\">Thoracic structure</span></p></div>"
      },
      "status" : "completed",
      "category" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "363680008",
          "display" : "Radiographic imaging procedure"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/ops",
          "version" : "2025",
          "code" : "3-20",
          "display" : "Computertomographie [CT], nativ"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "performedDateTime" : "2023-08-20",
      "bodySite" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "818983003",
          "display" : "Abdomen"
        }]
      },
      {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "51185008",
          "display" : "Thoracic structure"
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Procedure/PatientKimMusterperson-Procedure-6"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Procedure/PatientKimMusterperson-Procedure-7",
    "resource" : {
      "resourceType" : "Procedure",
      "id" : "PatientKimMusterperson-Procedure-7",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Procedure_PatientKimMusterperson-Procedure-7\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Procedure PatientKimMusterperson-Procedure-7</b></p><a name=\"PatientKimMusterperson-Procedure-7\"> </a><a name=\"hcPatientKimMusterperson-Procedure-7\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.base@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure\">MII PR Prozedur Procedure</a></p></div><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 363680008}\">Radiographic imaging procedure</span></p><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/ops 3-20}\">Computertomographie [CT], nativ</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>performed</b>: 2023-10-22</p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 818983003}\">Abdomen</span>, <span title=\"Codes:{http://snomed.info/sct 51185008}\">Thoracic structure</span></p></div>"
      },
      "status" : "completed",
      "category" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "363680008",
          "display" : "Radiographic imaging procedure"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/ops",
          "version" : "2025",
          "code" : "3-20",
          "display" : "Computertomographie [CT], nativ"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "performedDateTime" : "2023-10-22",
      "bodySite" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "818983003",
          "display" : "Abdomen"
        }]
      },
      {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "51185008",
          "display" : "Thoracic structure"
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Procedure/PatientKimMusterperson-Procedure-7"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/PatientKimMusterperson-Observation-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "PatientKimMusterperson-Observation-1",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_PatientKimMusterperson-Observation-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation PatientKimMusterperson-Observation-1</b></p><a name=\"PatientKimMusterperson-Observation-1\"> </a><a name=\"hcPatientKimMusterperson-Observation-1\"> </a><p><b>partOf</b>: <a href=\"Procedure-PatientKimMusterperson-Procedure-1.html\">Procedure Computertomographie [CT], nativ</a></p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 128462008}\">Metastatic malignant neoplasm (disorder)</span></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 41647002}\">kein Hinweis auf thorakale Metastasierung</span></p></div>"
      },
      "partOf" : [{
        "reference" : "Procedure/PatientKimMusterperson-Procedure-1"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "128462008",
          "display" : "Metastatic malignant neoplasm (disorder)"
        }]
      },
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "41647002",
          "display" : "No evidence of (contextual qualifier) (qualifier value)"
        }],
        "text" : "kein Hinweis auf thorakale Metastasierung"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/PatientKimMusterperson-Observation-1"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/PatientKimMusterperson-Observation-2",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "PatientKimMusterperson-Observation-2",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_PatientKimMusterperson-Observation-2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation PatientKimMusterperson-Observation-2</b></p><a name=\"PatientKimMusterperson-Observation-2\"> </a><a name=\"hcPatientKimMusterperson-Observation-2\"> </a><p><b>partOf</b>: <a href=\"Procedure-PatientKimMusterperson-Procedure-1.html\">Procedure Computertomographie [CT], nativ</a></p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 255227004}\">Recurrent</span></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 41647002}\">kein Hinweis auf Lokalrezidiv</span></p></div>"
      },
      "partOf" : [{
        "reference" : "Procedure/PatientKimMusterperson-Procedure-1"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "255227004",
          "display" : "Recurrent"
        }]
      },
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "41647002",
          "display" : "No evidence of (contextual qualifier) (qualifier value)"
        }],
        "text" : "kein Hinweis auf Lokalrezidiv"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/PatientKimMusterperson-Observation-2"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/PatientKimMusterperson-Observation-3",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "PatientKimMusterperson-Observation-3",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_PatientKimMusterperson-Observation-3\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation PatientKimMusterperson-Observation-3</b></p><a name=\"PatientKimMusterperson-Observation-3\"> </a><a name=\"hcPatientKimMusterperson-Observation-3\"> </a><p><b>partOf</b>: <a href=\"Procedure-PatientKimMusterperson-Procedure-1.html\">Procedure Computertomographie [CT], nativ</a></p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 389026000}\">Ascites</span></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 860638000}\">kein Aszites</span></p></div>"
      },
      "partOf" : [{
        "reference" : "Procedure/PatientKimMusterperson-Procedure-1"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "389026000",
          "display" : "Ascites"
        }]
      },
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "860638000",
          "display" : "No ascites"
        }],
        "text" : "kein Aszites"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/PatientKimMusterperson-Observation-3"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/PatientKimMusterperson-Observation-4",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "PatientKimMusterperson-Observation-4",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_PatientKimMusterperson-Observation-4\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation PatientKimMusterperson-Observation-4</b></p><a name=\"PatientKimMusterperson-Observation-4\"> </a><a name=\"hcPatientKimMusterperson-Observation-4\"> </a><p><b>partOf</b>: <a href=\"Procedure-PatientKimMusterperson-Procedure-1.html\">Procedure Computertomographie [CT], nativ</a></p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 237679004}, {http://snomed.info/sct 112231000}, {http://snomed.info/sct 174430004}\">Status post (contextual qualifier) (qualifier value)</span></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 309201001}, {http://snomed.info/sct 262061000}\">Flüssigkeitskollektion angrenzend DD postoperativ</span></p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 181247007}\">Entire duodenum</span></p></div>"
      },
      "partOf" : [{
        "reference" : "Procedure/PatientKimMusterperson-Procedure-1"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "237679004",
          "display" : "Status post (contextual qualifier) (qualifier value)"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "112231000",
          "display" : "Atypical (qualifier value)"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "174430004",
          "display" : "Resection of segment of liver (procedure)"
        }]
      },
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "309201001",
          "display" : "Ascitic fluid specimen"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "262061000",
          "display" : "After surgery"
        }],
        "text" : "Flüssigkeitskollektion angrenzend DD postoperativ"
      },
      "bodySite" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "181247007",
          "display" : "Entire duodenum"
        }]
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/PatientKimMusterperson-Observation-4"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/PatientKimMusterperson-Observation-5",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "PatientKimMusterperson-Observation-5",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_PatientKimMusterperson-Observation-5\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation PatientKimMusterperson-Observation-5</b></p><a name=\"PatientKimMusterperson-Observation-5\"> </a><a name=\"hcPatientKimMusterperson-Observation-5\"> </a><p><b>partOf</b>: <a href=\"Procedure-PatientKimMusterperson-Procedure-2.html\">Procedure Computertomographie [CT], nativ</a></p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 237679004}, {http://snomed.info/sct 112231000}, {http://snomed.info/sct 174430004}\">Status post (contextual qualifier) (qualifier value)</span></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 420341009}, {http://snomed.info/sct 309201001}\">konstante Flüssigkeitskollektion angrenzend</span></p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 181247007}\">Entire duodenum</span></p></div>"
      },
      "partOf" : [{
        "reference" : "Procedure/PatientKimMusterperson-Procedure-2"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "237679004",
          "display" : "Status post (contextual qualifier) (qualifier value)"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "112231000",
          "display" : "Atypical"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "174430004",
          "display" : "Resection of segment of liver (procedure)"
        }]
      },
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "420341009",
          "display" : "Constant"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "309201001",
          "display" : "Ascitic fluid specimen"
        }],
        "text" : "konstante Flüssigkeitskollektion angrenzend"
      },
      "bodySite" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "181247007",
          "display" : "Entire duodenum"
        }]
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/PatientKimMusterperson-Observation-5"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/PatientKimMusterperson-Observation-6",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "PatientKimMusterperson-Observation-6",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_PatientKimMusterperson-Observation-6\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation PatientKimMusterperson-Observation-6</b></p><a name=\"PatientKimMusterperson-Observation-6\"> </a><a name=\"hcPatientKimMusterperson-Observation-6\"> </a><p><b>partOf</b>: <a href=\"Procedure-PatientKimMusterperson-Procedure-2.html\">Procedure Computertomographie [CT], nativ</a></p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 389026000}\">Ascites</span></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 860638000}\">kein Aszites</span></p></div>"
      },
      "partOf" : [{
        "reference" : "Procedure/PatientKimMusterperson-Procedure-2"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "389026000",
          "display" : "Ascites"
        }]
      },
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "860638000",
          "display" : "No ascites"
        }],
        "text" : "kein Aszites"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/PatientKimMusterperson-Observation-6"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/PatientKimMusterperson-Observation-7",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "PatientKimMusterperson-Observation-7",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_PatientKimMusterperson-Observation-7\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation PatientKimMusterperson-Observation-7</b></p><a name=\"PatientKimMusterperson-Observation-7\"> </a><a name=\"hcPatientKimMusterperson-Observation-7\"> </a><p><b>partOf</b>: <a href=\"Procedure-PatientKimMusterperson-Procedure-2.html\">Procedure Computertomographie [CT], nativ</a></p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 255227004}\">Recurrent</span></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 41647002}\">kein Hinweis auf Lokalrezidiv</span></p></div>"
      },
      "partOf" : [{
        "reference" : "Procedure/PatientKimMusterperson-Procedure-2"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "255227004",
          "display" : "Recurrent"
        }]
      },
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "41647002",
          "display" : "No evidence of (contextual qualifier) (qualifier value)"
        }],
        "text" : "kein Hinweis auf Lokalrezidiv"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/PatientKimMusterperson-Observation-7"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/PatientKimMusterperson-Observation-8",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "PatientKimMusterperson-Observation-8",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_PatientKimMusterperson-Observation-8\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation PatientKimMusterperson-Observation-8</b></p><a name=\"PatientKimMusterperson-Observation-8\"> </a><a name=\"hcPatientKimMusterperson-Observation-8\"> </a><p><b>partOf</b>: <a href=\"Procedure-PatientKimMusterperson-Procedure-2.html\">Procedure Computertomographie [CT], nativ</a></p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 112231000}, {http://snomed.info/sct 1217294009}, {http://snomed.info/sct 44714003}\">im linken Oberlappen der Lunge diskrete milchglasartige Trübung</span></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 41647002}, {http://snomed.info/sct 255058005}\">kein Hinweis auf thorakale Filiae</span></p></div>"
      },
      "partOf" : [{
        "reference" : "Procedure/PatientKimMusterperson-Procedure-2"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "112231000",
          "display" : "Atypical"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "1217294009",
          "display" : "Ground glass opacity"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "44714003",
          "display" : "Structure of upper lobe of left lung"
        }],
        "text" : "im linken Oberlappen der Lunge diskrete milchglasartige Trübung"
      },
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "41647002",
          "display" : "No evidence of (contextual qualifier) (qualifier value)"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "255058005",
          "display" : "Neoplasm of thorax"
        }],
        "text" : "kein Hinweis auf thorakale Filiae"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/PatientKimMusterperson-Observation-8"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/PatientKimMusterperson-Observation-9",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "PatientKimMusterperson-Observation-9",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_PatientKimMusterperson-Observation-9\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation PatientKimMusterperson-Observation-9</b></p><a name=\"PatientKimMusterperson-Observation-9\"> </a><a name=\"hcPatientKimMusterperson-Observation-9\"> </a><p><b>partOf</b>: <a href=\"Procedure-PatientKimMusterperson-Procedure-3.html\">Procedure Computertomographie [CT], nativ</a></p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 237679004}, {http://snomed.info/sct 112231000}, {http://snomed.info/sct 174430004}\">Status post (contextual qualifier) (qualifier value)</span></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 309201001}, {http://snomed.info/sct 249567002}\">regrediente Flüssigkeitskollektion am Leberrand</span></p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 181268008}\">Entire liver</span></p></div>"
      },
      "partOf" : [{
        "reference" : "Procedure/PatientKimMusterperson-Procedure-3"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "237679004",
          "display" : "Status post (contextual qualifier) (qualifier value)"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "112231000",
          "display" : "Atypical"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "174430004",
          "display" : "Resection of segment of liver (procedure)"
        }]
      },
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "309201001",
          "display" : "Ascitic fluid specimen"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "249567002",
          "display" : "Liver edge (finding)"
        }],
        "text" : "regrediente Flüssigkeitskollektion am Leberrand"
      },
      "bodySite" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "181268008",
          "display" : "Entire liver"
        }]
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/PatientKimMusterperson-Observation-9"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/PatientKimMusterperson-Observation-10",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "PatientKimMusterperson-Observation-10",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_PatientKimMusterperson-Observation-10\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation PatientKimMusterperson-Observation-10</b></p><a name=\"PatientKimMusterperson-Observation-10\"> </a><a name=\"hcPatientKimMusterperson-Observation-10\"> </a><p><b>partOf</b>: <a href=\"Procedure-PatientKimMusterperson-Procedure-3.html\">Procedure Computertomographie [CT], nativ</a></p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 237679004}, {http://snomed.info/sct 112231000}, {http://snomed.info/sct 174430004}\">Status post (contextual qualifier) (qualifier value)</span></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 94381002}, {http://snomed.info/sct 41647002}\">Darüberhinaus kein Hinweis auf Leberfilialisierung.</span></p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 181268008}\">Entire liver</span></p></div>"
      },
      "partOf" : [{
        "reference" : "Procedure/PatientKimMusterperson-Procedure-3"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "237679004",
          "display" : "Status post (contextual qualifier) (qualifier value)"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "112231000",
          "display" : "Atypical"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "174430004",
          "display" : "Resection of segment of liver (procedure)"
        }]
      },
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "94381002",
          "display" : "Metastatic malignant neoplasm to liver (disorder)"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "41647002",
          "display" : "No evidence of (contextual qualifier) (qualifier value)"
        }],
        "text" : "Darüberhinaus kein Hinweis auf Leberfilialisierung."
      },
      "bodySite" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "181268008",
          "display" : "Entire liver"
        }]
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/PatientKimMusterperson-Observation-10"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/PatientKimMusterperson-Observation-11",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "PatientKimMusterperson-Observation-11",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_PatientKimMusterperson-Observation-11\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation PatientKimMusterperson-Observation-11</b></p><a name=\"PatientKimMusterperson-Observation-11\"> </a><a name=\"hcPatientKimMusterperson-Observation-11\"> </a><p><b>partOf</b>: <a href=\"Procedure-PatientKimMusterperson-Procedure-3.html\">Procedure Computertomographie [CT], nativ</a></p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 389026000}\">Ascites</span></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 860638000}\">kein Aszites</span></p></div>"
      },
      "partOf" : [{
        "reference" : "Procedure/PatientKimMusterperson-Procedure-3"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "389026000",
          "display" : "Ascites"
        }]
      },
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "860638000",
          "display" : "No ascites"
        }],
        "text" : "kein Aszites"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/PatientKimMusterperson-Observation-11"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/PatientKimMusterperson-Observation-12",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "PatientKimMusterperson-Observation-12",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_PatientKimMusterperson-Observation-12\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation PatientKimMusterperson-Observation-12</b></p><a name=\"PatientKimMusterperson-Observation-12\"> </a><a name=\"hcPatientKimMusterperson-Observation-12\"> </a><p><b>partOf</b>: <a href=\"Procedure-PatientKimMusterperson-Procedure-3.html\">Procedure Computertomographie [CT], nativ</a></p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 255227004}\">Recurrent</span></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 41647002}\">kein Hinweis auf Lokalrezidiv</span></p></div>"
      },
      "partOf" : [{
        "reference" : "Procedure/PatientKimMusterperson-Procedure-3"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "255227004",
          "display" : "Recurrent"
        }]
      },
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "41647002",
          "display" : "No evidence of (contextual qualifier) (qualifier value)"
        }],
        "text" : "kein Hinweis auf Lokalrezidiv"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/PatientKimMusterperson-Observation-12"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/PatientKimMusterperson-Observation-13",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "PatientKimMusterperson-Observation-13",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_PatientKimMusterperson-Observation-13\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation PatientKimMusterperson-Observation-13</b></p><a name=\"PatientKimMusterperson-Observation-13\"> </a><a name=\"hcPatientKimMusterperson-Observation-13\"> </a><p><b>partOf</b>: <a href=\"Procedure-PatientKimMusterperson-Procedure-3.html\">Procedure Computertomographie [CT], nativ</a></p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 255227004}, {http://snomed.info/sct 1217294009}, {http://snomed.info/sct 44714003}\">regrediente Milchglasinfiltrate im linken Oberlappen</span></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 112231000}, {http://snomed.info/sct 257552002}\">a.e. atypisch entzündlich</span></p></div>"
      },
      "partOf" : [{
        "reference" : "Procedure/PatientKimMusterperson-Procedure-3"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "255227004",
          "display" : "Recurrent"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "1217294009",
          "display" : "Ground glass opacity"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "44714003",
          "display" : "Structure of upper lobe of left lung"
        }],
        "text" : "regrediente Milchglasinfiltrate im linken Oberlappen"
      },
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "112231000",
          "display" : "Atypical"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "257552002",
          "display" : "Inflammation"
        }],
        "text" : "a.e. atypisch entzündlich"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/PatientKimMusterperson-Observation-13"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/PatientKimMusterperson-Observation-14",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "PatientKimMusterperson-Observation-14",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_PatientKimMusterperson-Observation-14\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation PatientKimMusterperson-Observation-14</b></p><a name=\"PatientKimMusterperson-Observation-14\"> </a><a name=\"hcPatientKimMusterperson-Observation-14\"> </a><p><b>partOf</b>: <a href=\"Procedure-PatientKimMusterperson-Procedure-3.html\">Procedure Computertomographie [CT], nativ</a></p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 245276004}\">mediastinaler Lymphknoten</span></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 258283002}, {http://snomed.info/sct 373067005}, {http://snomed.info/sct 385420005}, {http://snomed.info/sct 151174005}\">vermehrter mediastinaler Lymphknotenbesatz ohne Kontrastmittelaufnahme</span></p></div>"
      },
      "partOf" : [{
        "reference" : "Procedure/PatientKimMusterperson-Procedure-3"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "245276004",
          "display" : "Mediastinal lymph node group"
        }],
        "text" : "mediastinaler Lymphknoten"
      },
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "258283002",
          "display" : "Lymphomatous nodal involvement"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "373067005",
          "display" : "No"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "385420005",
          "display" : "Contrast media"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "151174005",
          "display" : "Drug intake observed"
        }],
        "text" : "vermehrter mediastinaler Lymphknotenbesatz ohne Kontrastmittelaufnahme"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/PatientKimMusterperson-Observation-14"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/PatientKimMusterperson-Observation-15",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "PatientKimMusterperson-Observation-15",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_PatientKimMusterperson-Observation-15\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation PatientKimMusterperson-Observation-15</b></p><a name=\"PatientKimMusterperson-Observation-15\"> </a><a name=\"hcPatientKimMusterperson-Observation-15\"> </a><p><b>partOf</b>: <a href=\"Procedure-PatientKimMusterperson-Procedure-3.html\">Procedure Computertomographie [CT], nativ</a></p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 245276004}\">mediastinaler Lymphknoten</span></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 373067005}, {http://snomed.info/sct 15454001}\">ohne pathologische Vergrößerung</span></p></div>"
      },
      "partOf" : [{
        "reference" : "Procedure/PatientKimMusterperson-Procedure-3"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "245276004",
          "display" : "Mediastinal lymph node group"
        }],
        "text" : "mediastinaler Lymphknoten"
      },
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "373067005",
          "display" : "No"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "15454001",
          "display" : "Increased size"
        }],
        "text" : "ohne pathologische Vergrößerung"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/PatientKimMusterperson-Observation-15"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/PatientKimMusterperson-Observation-16",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "PatientKimMusterperson-Observation-16",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_PatientKimMusterperson-Observation-16\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation PatientKimMusterperson-Observation-16</b></p><a name=\"PatientKimMusterperson-Observation-16\"> </a><a name=\"hcPatientKimMusterperson-Observation-16\"> </a><p><b>partOf</b>: <a href=\"Procedure-PatientKimMusterperson-Procedure-4.html\">Procedure Computertomographie [CT], nativ</a></p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 255314001}\">Progredienter Aszites</span></p><p><b>value</b>: 700 ml<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemL = 'mL')</span></p></div>"
      },
      "partOf" : [{
        "reference" : "Procedure/PatientKimMusterperson-Procedure-4"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "255314001",
          "display" : "Progressive"
        }],
        "text" : "Progredienter Aszites"
      },
      "valueQuantity" : {
        "value" : 700,
        "unit" : "ml",
        "system" : "http://unitsofmeasure.org",
        "code" : "mL"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/PatientKimMusterperson-Observation-16"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/PatientKimMusterperson-Observation-17",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "PatientKimMusterperson-Observation-17",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_PatientKimMusterperson-Observation-17\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation PatientKimMusterperson-Observation-17</b></p><a name=\"PatientKimMusterperson-Observation-17\"> </a><a name=\"hcPatientKimMusterperson-Observation-17\"> </a><p><b>partOf</b>: <a href=\"Procedure-PatientKimMusterperson-Procedure-4.html\">Procedure Computertomographie [CT], nativ</a></p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 362700006}\">Peritonealblatt</span></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 385420005}, {http://snomed.info/sct 49608001}, {http://snomed.info/sct 260366006}, {http://snomed.info/sct 151174005}\">Peritonealblatt mit zunehmender, unregelmäßiger KM-Aufnahme</span></p></div>"
      },
      "partOf" : [{
        "reference" : "Procedure/PatientKimMusterperson-Procedure-4"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "362700006",
          "display" : "Entire peritoneal serous membrane of peritoneum"
        }],
        "text" : "Peritonealblatt"
      },
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "385420005",
          "display" : "Contrast media"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "49608001",
          "display" : "Irregular"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "260366006",
          "display" : "Increase"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "151174005",
          "display" : "Drug intake observed"
        }],
        "text" : "Peritonealblatt mit zunehmender, unregelmäßiger KM-Aufnahme"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/PatientKimMusterperson-Observation-17"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/PatientKimMusterperson-Observation-18",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "PatientKimMusterperson-Observation-18",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_PatientKimMusterperson-Observation-18\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation PatientKimMusterperson-Observation-18</b></p><a name=\"PatientKimMusterperson-Observation-18\"> </a><a name=\"hcPatientKimMusterperson-Observation-18\"> </a><p><b>partOf</b>: <a href=\"Procedure-PatientKimMusterperson-Procedure-4.html\">Procedure Computertomographie [CT], nativ</a></p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 836274002}\">Peritonealkarzinose</span></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 255314001}\">Progress</span></p></div>"
      },
      "partOf" : [{
        "reference" : "Procedure/PatientKimMusterperson-Procedure-4"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "836274002",
          "display" : "Carcinomatosis of peritoneum"
        }],
        "text" : "Peritonealkarzinose"
      },
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "255314001",
          "display" : "Progressive"
        }],
        "text" : "Progress"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/PatientKimMusterperson-Observation-18"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/PatientKimMusterperson-Observation-19",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "PatientKimMusterperson-Observation-19",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_PatientKimMusterperson-Observation-19\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation PatientKimMusterperson-Observation-19</b></p><a name=\"PatientKimMusterperson-Observation-19\"> </a><a name=\"hcPatientKimMusterperson-Observation-19\"> </a><p><b>partOf</b>: <a href=\"Procedure-PatientKimMusterperson-Procedure-4.html\">Procedure Computertomographie [CT], nativ</a></p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 80266002}\">kleinen Becken</span></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 255227004}\">Lokalrezidiv bei kontrastmittelaufnehmender Raumforderung</span></p></div>"
      },
      "partOf" : [{
        "reference" : "Procedure/PatientKimMusterperson-Procedure-4"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "80266002",
          "display" : "True pelvis"
        }],
        "text" : "kleinen Becken"
      },
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "255227004",
          "display" : "Recurrent"
        }],
        "text" : "Lokalrezidiv bei kontrastmittelaufnehmender Raumforderung"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/PatientKimMusterperson-Observation-19"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/PatientKimMusterperson-Observation-20",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "PatientKimMusterperson-Observation-20",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_PatientKimMusterperson-Observation-20\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation PatientKimMusterperson-Observation-20</b></p><a name=\"PatientKimMusterperson-Observation-20\"> </a><a name=\"hcPatientKimMusterperson-Observation-20\"> </a><p><b>partOf</b>: <a href=\"Procedure-PatientKimMusterperson-Procedure-5.html\">Procedure Computertomographie [CT], nativ</a></p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 389026000}\">Aszites</span></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 37865006}\">Regredient</span></p></div>"
      },
      "partOf" : [{
        "reference" : "Procedure/PatientKimMusterperson-Procedure-5"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "389026000",
          "display" : "Ascites"
        }],
        "text" : "Aszites"
      },
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "37865006",
          "display" : "Regressive"
        }],
        "text" : "Regredient"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/PatientKimMusterperson-Observation-20"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/PatientKimMusterperson-Observation-21",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "PatientKimMusterperson-Observation-21",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_PatientKimMusterperson-Observation-21\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation PatientKimMusterperson-Observation-21</b></p><a name=\"PatientKimMusterperson-Observation-21\"> </a><a name=\"hcPatientKimMusterperson-Observation-21\"> </a><p><b>partOf</b>: <a href=\"Procedure-PatientKimMusterperson-Procedure-5.html\">Procedure Computertomographie [CT], nativ</a></p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 80266002}\">im kleinen Becken</span></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 37865006}, {http://snomed.info/sct 385420005}\">rückläufige KM-Aufnahme der lokalrezidivsuspekten Raumforderung</span></p></div>"
      },
      "partOf" : [{
        "reference" : "Procedure/PatientKimMusterperson-Procedure-5"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "80266002",
          "display" : "True pelvis"
        }],
        "text" : "im kleinen Becken"
      },
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "37865006",
          "display" : "Regressive"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "385420005",
          "display" : "Contrast media"
        }],
        "text" : "rückläufige KM-Aufnahme der lokalrezidivsuspekten Raumforderung"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/PatientKimMusterperson-Observation-21"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/PatientKimMusterperson-Observation-22",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "PatientKimMusterperson-Observation-22",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_PatientKimMusterperson-Observation-22\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation PatientKimMusterperson-Observation-22</b></p><a name=\"PatientKimMusterperson-Observation-22\"> </a><a name=\"hcPatientKimMusterperson-Observation-22\"> </a><p><b>partOf</b>: <a href=\"Procedure-PatientKimMusterperson-Procedure-5.html\">Procedure Computertomographie [CT], nativ</a></p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 274744005}\">zahlenmäßig vermehrten LK im Mediastinum</span></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 37865006}, {http://snomed.info/sct 385420005}\">noch flaue, aber insgesamt regrediente KM-Aufnhame</span></p></div>"
      },
      "partOf" : [{
        "reference" : "Procedure/PatientKimMusterperson-Procedure-5"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "274744005",
          "display" : "Localized enlarged lymph nodes"
        }],
        "text" : "zahlenmäßig vermehrten LK im Mediastinum"
      },
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "37865006",
          "display" : "Regressive"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "385420005",
          "display" : "Contrast media"
        }],
        "text" : "noch flaue, aber insgesamt regrediente KM-Aufnhame"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/PatientKimMusterperson-Observation-22"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/PatientKimMusterperson-Observation-23",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "PatientKimMusterperson-Observation-23",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_PatientKimMusterperson-Observation-23\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation PatientKimMusterperson-Observation-23</b></p><a name=\"PatientKimMusterperson-Observation-23\"> </a><a name=\"hcPatientKimMusterperson-Observation-23\"> </a><p><b>partOf</b>: <a href=\"Procedure-PatientKimMusterperson-Procedure-5.html\">Procedure Computertomographie [CT], nativ</a></p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 52988006}\">Läsion</span></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 373067005}\">keine neue</span></p></div>"
      },
      "partOf" : [{
        "reference" : "Procedure/PatientKimMusterperson-Procedure-5"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "52988006",
          "display" : "Lesion"
        }],
        "text" : "Läsion"
      },
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "373067005",
          "display" : "No"
        }],
        "text" : "keine neue"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/PatientKimMusterperson-Observation-23"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/PatientKimMusterperson-Observation-24",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "PatientKimMusterperson-Observation-24",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_PatientKimMusterperson-Observation-24\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation PatientKimMusterperson-Observation-24</b></p><a name=\"PatientKimMusterperson-Observation-24\"> </a><a name=\"hcPatientKimMusterperson-Observation-24\"> </a><p><b>partOf</b>: <a href=\"Procedure-PatientKimMusterperson-Procedure-6.html\">Procedure Computertomographie [CT], nativ</a></p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 389026000}\">Ascites</span></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 860638000}\">kein Aszites</span></p></div>"
      },
      "partOf" : [{
        "reference" : "Procedure/PatientKimMusterperson-Procedure-6"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "389026000",
          "display" : "Ascites"
        }]
      },
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "860638000",
          "display" : "No ascites"
        }],
        "text" : "kein Aszites"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/PatientKimMusterperson-Observation-24"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/PatientKimMusterperson-Observation-25",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "PatientKimMusterperson-Observation-25",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_PatientKimMusterperson-Observation-25\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation PatientKimMusterperson-Observation-25</b></p><a name=\"PatientKimMusterperson-Observation-25\"> </a><a name=\"hcPatientKimMusterperson-Observation-25\"> </a><p><b>partOf</b>: <a href=\"Procedure-PatientKimMusterperson-Procedure-6.html\">Procedure Computertomographie [CT], nativ</a></p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 255227004}\">Lokalrezidiv</span></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 37865006}, {http://snomed.info/sct 373067005}, {http://snomed.info/sct 385420005}, {http://snomed.info/sct 151174005}\">regredientes Lokalrezidiv ohne KM-Aufnahme im kleinen Becken</span></p></div>"
      },
      "partOf" : [{
        "reference" : "Procedure/PatientKimMusterperson-Procedure-6"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "255227004",
          "display" : "Recurrent"
        }],
        "text" : "Lokalrezidiv"
      },
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "37865006",
          "display" : "Regressive"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "373067005",
          "display" : "No"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "385420005",
          "display" : "Contrast media"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "151174005",
          "display" : "Drug intake observed"
        }],
        "text" : "regredientes Lokalrezidiv ohne KM-Aufnahme im kleinen Becken"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/PatientKimMusterperson-Observation-25"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/PatientKimMusterperson-Observation-26",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "PatientKimMusterperson-Observation-26",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_PatientKimMusterperson-Observation-26\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation PatientKimMusterperson-Observation-26</b></p><a name=\"PatientKimMusterperson-Observation-26\"> </a><a name=\"hcPatientKimMusterperson-Observation-26\"> </a><p><b>partOf</b>: <a href=\"Procedure-PatientKimMusterperson-Procedure-7.html\">Procedure Computertomographie [CT], nativ</a></p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 80266002}\">kleinen Becken</span></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 255606000}, {http://snomed.info/sct 389026000}\">geringer Aszites</span></p></div>"
      },
      "partOf" : [{
        "reference" : "Procedure/PatientKimMusterperson-Procedure-7"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "80266002",
          "display" : "True pelvis"
        }],
        "text" : "kleinen Becken"
      },
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "255606000",
          "display" : "Minor"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "389026000",
          "display" : "Ascites"
        }],
        "text" : "geringer Aszites"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/PatientKimMusterperson-Observation-26"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/PatientKimMusterperson-Observation-27",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "PatientKimMusterperson-Observation-27",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_PatientKimMusterperson-Observation-27\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation PatientKimMusterperson-Observation-27</b></p><a name=\"PatientKimMusterperson-Observation-27\"> </a><a name=\"hcPatientKimMusterperson-Observation-27\"> </a><p><b>partOf</b>: <a href=\"Procedure-PatientKimMusterperson-Procedure-7.html\">Procedure Computertomographie [CT], nativ</a></p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 237679004}, {http://snomed.info/sct 246455001}\">vormals KM-aufnehmendes Lokalrezidiv im kleinen Becken</span></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 246455001}, {http://snomed.info/sct 263920009}\">aktuell metrisch nur noch schwer fassbar</span></p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 80266002}\">True pelvis</span></p></div>"
      },
      "partOf" : [{
        "reference" : "Procedure/PatientKimMusterperson-Procedure-7"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "237679004",
          "display" : "Status post (contextual qualifier) (qualifier value)"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "246455001",
          "display" : "Recurrence"
        }],
        "text" : "vormals KM-aufnehmendes Lokalrezidiv im kleinen Becken"
      },
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "246455001",
          "display" : "Recurrence"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "263920009",
          "display" : "Unrecordable"
        }],
        "text" : "aktuell metrisch nur noch schwer fassbar"
      },
      "bodySite" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "80266002",
          "display" : "True pelvis"
        }]
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/PatientKimMusterperson-Observation-27"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/PatientKimMusterperson-Observation-29",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "PatientKimMusterperson-Observation-29",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_PatientKimMusterperson-Observation-29\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation PatientKimMusterperson-Observation-29</b></p><a name=\"PatientKimMusterperson-Observation-29\"> </a><a name=\"hcPatientKimMusterperson-Observation-29\"> </a><p><b>partOf</b>: <a href=\"Procedure-PatientKimMusterperson-Procedure-7.html\">Procedure Computertomographie [CT], nativ</a></p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 245276004}\">mediastinale Lymphknoten</span></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 35105006}\">formal noch vermehrte</span></p></div>"
      },
      "partOf" : [{
        "reference" : "Procedure/PatientKimMusterperson-Procedure-7"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "245276004",
          "display" : "Mediastinal lymph node group"
        }],
        "text" : "mediastinale Lymphknoten"
      },
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "35105006",
          "display" : "Increased"
        }],
        "text" : "formal noch vermehrte"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/PatientKimMusterperson-Observation-29"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/PatientKimMusterperson-Observation-30",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "PatientKimMusterperson-Observation-30",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_PatientKimMusterperson-Observation-30\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation PatientKimMusterperson-Observation-30</b></p><a name=\"PatientKimMusterperson-Observation-30\"> </a><a name=\"hcPatientKimMusterperson-Observation-30\"> </a><p><b>partOf</b>: <a href=\"Procedure-PatientKimMusterperson-Procedure-7.html\">Procedure Computertomographie [CT], nativ</a></p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 245276004}\">mediastinale Lymphknoten</span></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 373067005}, {http://snomed.info/sct 385420005}, {http://snomed.info/sct 151174005}\">nicht mehr KM-aufnehmende</span></p></div>"
      },
      "partOf" : [{
        "reference" : "Procedure/PatientKimMusterperson-Procedure-7"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "245276004",
          "display" : "Mediastinal lymph node group"
        }],
        "text" : "mediastinale Lymphknoten"
      },
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "373067005",
          "display" : "No"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "385420005",
          "display" : "Contrast media"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "151174005",
          "display" : "Drug intake observed"
        }],
        "text" : "nicht mehr KM-aufnehmende"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/PatientKimMusterperson-Observation-30"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/ClinicalImpression/MII-EXA-MTB-Follow-Up-ClinicalImpression-1",
    "resource" : {
      "resourceType" : "ClinicalImpression",
      "id" : "MII-EXA-MTB-Follow-Up-ClinicalImpression-1",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-follow-up-clinicalimpression|2026.0.1"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ClinicalImpression_MII-EXA-MTB-Follow-Up-ClinicalImpression-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: ClinicalImpression MII-EXA-MTB-Follow-Up-ClinicalImpression-1</b></p><a name=\"MII-EXA-MTB-Follow-Up-ClinicalImpression-1\"> </a><a name=\"hcMII-EXA-MTB-Follow-Up-ClinicalImpression-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-follow-up-clinicalimpression.html\">MII PR MTB Clinical Impresssion</a> version: 2026.0.1</p></div><p><b>status</b>: Completed</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 390906007}\">Follow-up encounter (procedure)</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>effective</b>: 2023-10-22</p><p><b>previous</b>: <a href=\"ClinicalImpression-mii-exa-mtb-kim-musterperson-behandlungsepisode.html\">ClinicalImpression: status = completed; effective[x] = 2023-01-20 --&gt; 2023-03-28</a></p><h3>Investigations</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Code</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-follow-up-status completed}\">completed</span></td></tr></table><p><b>supportingInfo</b>: </p><ul><li><a href=\"Procedure-MII-EXA-MTB-Systemische-Therapie-1.html\">Procedure Zytostatische Chemotherapie, Immuntherapie und antiretrovirale Therapie</a></li><li><a href=\"Claim-MII-EXA-MTB-Antrag-Kostenuebernahme-1.html\">Claim: status = active; type = institutional; use = claim; created = 2023-03-10; priority = Normal</a></li><li><a href=\"ClaimResponse-MII-EXA-MTB-Antwort-Kostenuebernahme-1.html\">ClaimResponse: status = active; type = institutional; use = claim; created = 2023-05-01; outcome = complete</a></li></ul></div>"
      },
      "status" : "completed",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "390906007",
          "display" : "Follow-up encounter (procedure)"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "effectiveDateTime" : "2023-10-22",
      "previous" : {
        "reference" : "ClinicalImpression/mii-exa-mtb-kim-musterperson-behandlungsepisode"
      },
      "investigation" : [{
        "code" : {
          "coding" : [{
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-follow-up-status",
            "code" : "completed"
          }]
        }
      }],
      "supportingInfo" : [{
        "reference" : "Procedure/MII-EXA-MTB-Systemische-Therapie-1"
      },
      {
        "reference" : "Claim/MII-EXA-MTB-Antrag-Kostenuebernahme-1"
      },
      {
        "reference" : "ClaimResponse/MII-EXA-MTB-Antwort-Kostenuebernahme-1"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "ClinicalImpression/MII-EXA-MTB-Follow-Up-ClinicalImpression-1"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Procedure/MII-EXA-MTB-Systemische-Therapie-1",
    "resource" : {
      "resourceType" : "Procedure",
      "id" : "MII-EXA-MTB-Systemische-Therapie-1",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-therapie|2026.0.1"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Procedure_MII-EXA-MTB-Systemische-Therapie-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Procedure MII-EXA-MTB-Systemische-Therapie-1</b></p><a name=\"MII-EXA-MTB-Systemische-Therapie-1\"> </a><a name=\"hcMII-EXA-MTB-Systemische-Therapie-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-systemische-therapie.html\">MII PR MTB Systemische Therapie</a> version: 2026.0.1</p></div><p><b>MII EX Onko Systemische Therapie Intention</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention K}\">kurativ</span></p><p><b>basedOn</b>: <a href=\"CarePlan-mii-exa-mtb-kim-musterperson-therapieplan.html\">CarePlan: status = active; intent = plan; category = prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie); created = 2023-03-28</a></p><p><b>status</b>: Completed</p><p><b>statusReason</b>: <span title=\"Codes:\">regular-completion</span></p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 367336001}\">Chemotherapy (procedure)</span></p><p><b>code</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ CH}, {http://fhir.de/CodeSystem/bfarm/ops 8-54}\">Zytostatische Chemotherapie, Immuntherapie und antiretrovirale Therapie</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>performed</b>: 2023-06-24 --&gt; 2023-10-12</p></div>"
      },
      "extension" : [{
        "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-systemische-therapie-intention",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention",
            "code" : "K"
          }]
        }
      }],
      "basedOn" : [{
        "reference" : "CarePlan/mii-exa-mtb-kim-musterperson-therapieplan"
      }],
      "status" : "completed",
      "statusReason" : {
        "coding" : [{
          "code" : "regular-completion"
        }]
      },
      "category" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "367336001",
          "display" : "Chemotherapy (procedure)"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ",
          "code" : "CH"
        },
        {
          "system" : "http://fhir.de/CodeSystem/bfarm/ops",
          "version" : "2023",
          "code" : "8-54",
          "display" : "Zytostatische Chemotherapie, Immuntherapie und antiretrovirale Therapie"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "performedPeriod" : {
        "start" : "2023-06-24",
        "end" : "2023-10-12"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Procedure/MII-EXA-MTB-Systemische-Therapie-1"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-1",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "MII-EXA-MTB-Systemische-Therapie-Medication-1",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemtherapie-medication-statement",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-therapie-medication-statement|2026.0.1"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_MII-EXA-MTB-Systemische-Therapie-Medication-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement MII-EXA-MTB-Systemische-Therapie-Medication-1</b></p><a name=\"MII-EXA-MTB-Systemische-Therapie-Medication-1\"> </a><a name=\"hcMII-EXA-MTB-Systemische-Therapie-Medication-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profiles: <a href=\"StructureDefinition-mii-pr-mtb-systemtherapie-medication-statement.html\">MII PR MTB Systemtherapie Medication Statement</a>, <a href=\"https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-therapie-medication-statement|2026.0.1\">https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-therapie-medication-statement|2026.0.1</a></p></div><p><b>basedOn</b>: <a href=\"MedicationRequest-mii-exa-mtb-medication-request-mirvetuximab.html\">MedicationRequest: extension = 1,m1A,http://doi.org#10.1200/JCO.2022.40.16_suppl.5512,http://www.ncbi.nlm.nih.gov/pubmed#38055253; status = completed; intent = proposal; medication[x] = MIRVETUXIMAB SORAVTANSINE; authoredOn = 2023-03-28</a></p><p><b>partOf</b>: <a href=\"Procedure-MII-EXA-MTB-Systemische-Therapie-1.html\">Procedure Zytostatische Chemotherapie, Immuntherapie und antiretrovirale Therapie</a></p><p><b>status</b>: Completed</p><p><b>medication</b>: <span title=\"Codes:{http://fdasis.nlm.nih.gov 98DE7VN88D}, {http://fhir.de/CodeSystem/bfarm/atc L01FX26}\">MIRVETUXIMAB SORAVTANSINE</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>effective</b>: 2023-06-24 --&gt; 2023-06-24</p><p><b>note</b>: </p><blockquote><div><p>24.06.2023 Z1 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22</p>\n</div></blockquote><blockquote><p><b>dosage</b></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>6 mg/kg KG<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg/kg{KG} = 'mg/kg{KG}')</span></td></tr></table></blockquote></div>"
      },
      "basedOn" : [{
        "reference" : "MedicationRequest/mii-exa-mtb-medication-request-mirvetuximab"
      }],
      "partOf" : [{
        "reference" : "Procedure/MII-EXA-MTB-Systemische-Therapie-1"
      }],
      "status" : "completed",
      "medicationCodeableConcept" : {
        "coding" : [{
          "system" : "http://fdasis.nlm.nih.gov",
          "code" : "98DE7VN88D",
          "display" : "MIRVETUXIMAB SORAVTANSINE"
        },
        {
          "system" : "http://fhir.de/CodeSystem/bfarm/atc",
          "version" : "2025",
          "code" : "L01FX26",
          "display" : "Mirvetuximab soravtansin"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "effectivePeriod" : {
        "start" : "2023-06-24",
        "end" : "2023-06-24"
      },
      "note" : [{
        "text" : "24.06.2023 Z1 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
      }],
      "dosage" : [{
        "doseAndRate" : [{
          "doseQuantity" : {
            "value" : 6,
            "unit" : "mg/kg KG",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg/kg{KG}"
          }
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-1"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-2",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "MII-EXA-MTB-Systemische-Therapie-Medication-2",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemtherapie-medication-statement",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-therapie-medication-statement|2026.0.1"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_MII-EXA-MTB-Systemische-Therapie-Medication-2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement MII-EXA-MTB-Systemische-Therapie-Medication-2</b></p><a name=\"MII-EXA-MTB-Systemische-Therapie-Medication-2\"> </a><a name=\"hcMII-EXA-MTB-Systemische-Therapie-Medication-2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profiles: <a href=\"StructureDefinition-mii-pr-mtb-systemtherapie-medication-statement.html\">MII PR MTB Systemtherapie Medication Statement</a>, <a href=\"https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-therapie-medication-statement|2026.0.1\">https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-therapie-medication-statement|2026.0.1</a></p></div><p><b>basedOn</b>: <a href=\"MedicationRequest-mii-exa-mtb-medication-request-mirvetuximab.html\">MedicationRequest: extension = 1,m1A,http://doi.org#10.1200/JCO.2022.40.16_suppl.5512,http://www.ncbi.nlm.nih.gov/pubmed#38055253; status = completed; intent = proposal; medication[x] = MIRVETUXIMAB SORAVTANSINE; authoredOn = 2023-03-28</a></p><p><b>partOf</b>: <a href=\"Procedure-MII-EXA-MTB-Systemische-Therapie-1.html\">Procedure Zytostatische Chemotherapie, Immuntherapie und antiretrovirale Therapie</a></p><p><b>status</b>: Completed</p><p><b>statusReason</b>: <span title=\"Codes:\">E</span></p><p><b>medication</b>: <span title=\"Codes:{http://fdasis.nlm.nih.gov 98DE7VN88D}, {http://fhir.de/CodeSystem/bfarm/atc L01FX26}\">MIRVETUXIMAB SORAVTANSINE</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>effective</b>: 2023-07-16 --&gt; 2023-07-16</p><p><b>note</b>: </p><blockquote><div><p>16.07.2023 Z2 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22</p>\n</div></blockquote><blockquote><p><b>dosage</b></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>6 mg/kg KG<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg/kg{KG} = 'mg/kg{KG}')</span></td></tr></table></blockquote></div>"
      },
      "basedOn" : [{
        "reference" : "MedicationRequest/mii-exa-mtb-medication-request-mirvetuximab"
      }],
      "partOf" : [{
        "reference" : "Procedure/MII-EXA-MTB-Systemische-Therapie-1"
      }],
      "status" : "completed",
      "statusReason" : [{
        "coding" : [{
          "code" : "E"
        }]
      }],
      "medicationCodeableConcept" : {
        "coding" : [{
          "system" : "http://fdasis.nlm.nih.gov",
          "code" : "98DE7VN88D",
          "display" : "MIRVETUXIMAB SORAVTANSINE"
        },
        {
          "system" : "http://fhir.de/CodeSystem/bfarm/atc",
          "version" : "2025",
          "code" : "L01FX26",
          "display" : "Mirvetuximab soravtansin"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "effectivePeriod" : {
        "start" : "2023-07-16",
        "end" : "2023-07-16"
      },
      "note" : [{
        "text" : "16.07.2023 Z2 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
      }],
      "dosage" : [{
        "doseAndRate" : [{
          "doseQuantity" : {
            "value" : 6,
            "unit" : "mg/kg KG",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg/kg{KG}"
          }
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-2"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-3",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "MII-EXA-MTB-Systemische-Therapie-Medication-3",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemtherapie-medication-statement",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-therapie-medication-statement|2026.0.1"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_MII-EXA-MTB-Systemische-Therapie-Medication-3\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement MII-EXA-MTB-Systemische-Therapie-Medication-3</b></p><a name=\"MII-EXA-MTB-Systemische-Therapie-Medication-3\"> </a><a name=\"hcMII-EXA-MTB-Systemische-Therapie-Medication-3\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profiles: <a href=\"StructureDefinition-mii-pr-mtb-systemtherapie-medication-statement.html\">MII PR MTB Systemtherapie Medication Statement</a>, <a href=\"https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-therapie-medication-statement|2026.0.1\">https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-therapie-medication-statement|2026.0.1</a></p></div><p><b>basedOn</b>: <a href=\"MedicationRequest-mii-exa-mtb-medication-request-mirvetuximab.html\">MedicationRequest: extension = 1,m1A,http://doi.org#10.1200/JCO.2022.40.16_suppl.5512,http://www.ncbi.nlm.nih.gov/pubmed#38055253; status = completed; intent = proposal; medication[x] = MIRVETUXIMAB SORAVTANSINE; authoredOn = 2023-03-28</a></p><p><b>partOf</b>: <a href=\"Procedure-MII-EXA-MTB-Systemische-Therapie-1.html\">Procedure Zytostatische Chemotherapie, Immuntherapie und antiretrovirale Therapie</a></p><p><b>status</b>: Completed</p><p><b>statusReason</b>: <span title=\"Codes:\">E</span></p><p><b>medication</b>: <span title=\"Codes:{http://fdasis.nlm.nih.gov 98DE7VN88D}, {http://fhir.de/CodeSystem/bfarm/atc L01FX26}\">MIRVETUXIMAB SORAVTANSINE</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>effective</b>: 2023-08-07 --&gt; 2023-08-07</p><p><b>note</b>: </p><blockquote><div><p>07.08.2023 Z3 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22</p>\n</div></blockquote><blockquote><p><b>dosage</b></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>6 mg/kg KG<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg/kg{KG} = 'mg/kg{KG}')</span></td></tr></table></blockquote></div>"
      },
      "basedOn" : [{
        "reference" : "MedicationRequest/mii-exa-mtb-medication-request-mirvetuximab"
      }],
      "partOf" : [{
        "reference" : "Procedure/MII-EXA-MTB-Systemische-Therapie-1"
      }],
      "status" : "completed",
      "statusReason" : [{
        "coding" : [{
          "code" : "E"
        }]
      }],
      "medicationCodeableConcept" : {
        "coding" : [{
          "system" : "http://fdasis.nlm.nih.gov",
          "code" : "98DE7VN88D",
          "display" : "MIRVETUXIMAB SORAVTANSINE"
        },
        {
          "system" : "http://fhir.de/CodeSystem/bfarm/atc",
          "version" : "2025",
          "code" : "L01FX26",
          "display" : "Mirvetuximab soravtansin"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "effectivePeriod" : {
        "start" : "2023-08-07",
        "end" : "2023-08-07"
      },
      "note" : [{
        "text" : "07.08.2023 Z3 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
      }],
      "dosage" : [{
        "doseAndRate" : [{
          "doseQuantity" : {
            "value" : 6,
            "unit" : "mg/kg KG",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg/kg{KG}"
          }
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-3"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-4",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "MII-EXA-MTB-Systemische-Therapie-Medication-4",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemtherapie-medication-statement",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-therapie-medication-statement|2026.0.1"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_MII-EXA-MTB-Systemische-Therapie-Medication-4\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement MII-EXA-MTB-Systemische-Therapie-Medication-4</b></p><a name=\"MII-EXA-MTB-Systemische-Therapie-Medication-4\"> </a><a name=\"hcMII-EXA-MTB-Systemische-Therapie-Medication-4\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profiles: <a href=\"StructureDefinition-mii-pr-mtb-systemtherapie-medication-statement.html\">MII PR MTB Systemtherapie Medication Statement</a>, <a href=\"https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-therapie-medication-statement|2026.0.1\">https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-therapie-medication-statement|2026.0.1</a></p></div><p><b>basedOn</b>: <a href=\"MedicationRequest-mii-exa-mtb-medication-request-mirvetuximab.html\">MedicationRequest: extension = 1,m1A,http://doi.org#10.1200/JCO.2022.40.16_suppl.5512,http://www.ncbi.nlm.nih.gov/pubmed#38055253; status = completed; intent = proposal; medication[x] = MIRVETUXIMAB SORAVTANSINE; authoredOn = 2023-03-28</a></p><p><b>partOf</b>: <a href=\"Procedure-MII-EXA-MTB-Systemische-Therapie-1.html\">Procedure Zytostatische Chemotherapie, Immuntherapie und antiretrovirale Therapie</a></p><p><b>status</b>: Completed</p><p><b>medication</b>: <span title=\"Codes:{http://fdasis.nlm.nih.gov 98DE7VN88D}, {http://fhir.de/CodeSystem/bfarm/atc L01FX26}\">MIRVETUXIMAB SORAVTANSINE</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>effective</b>: 2023-08-29 --&gt; 2023-08-29</p><p><b>note</b>: </p><blockquote><div><p>29.08.2023 Z4 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22</p>\n</div></blockquote><blockquote><p><b>dosage</b></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>6 mg/kg KG<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg/kg{KG} = 'mg/kg{KG}')</span></td></tr></table></blockquote></div>"
      },
      "basedOn" : [{
        "reference" : "MedicationRequest/mii-exa-mtb-medication-request-mirvetuximab"
      }],
      "partOf" : [{
        "reference" : "Procedure/MII-EXA-MTB-Systemische-Therapie-1"
      }],
      "status" : "completed",
      "medicationCodeableConcept" : {
        "coding" : [{
          "system" : "http://fdasis.nlm.nih.gov",
          "code" : "98DE7VN88D",
          "display" : "MIRVETUXIMAB SORAVTANSINE"
        },
        {
          "system" : "http://fhir.de/CodeSystem/bfarm/atc",
          "version" : "2025",
          "code" : "L01FX26",
          "display" : "Mirvetuximab soravtansin"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "effectivePeriod" : {
        "start" : "2023-08-29",
        "end" : "2023-08-29"
      },
      "note" : [{
        "text" : "29.08.2023 Z4 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
      }],
      "dosage" : [{
        "doseAndRate" : [{
          "doseQuantity" : {
            "value" : 6,
            "unit" : "mg/kg KG",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg/kg{KG}"
          }
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-4"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-5",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "MII-EXA-MTB-Systemische-Therapie-Medication-5",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemtherapie-medication-statement",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-therapie-medication-statement|2026.0.1"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_MII-EXA-MTB-Systemische-Therapie-Medication-5\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement MII-EXA-MTB-Systemische-Therapie-Medication-5</b></p><a name=\"MII-EXA-MTB-Systemische-Therapie-Medication-5\"> </a><a name=\"hcMII-EXA-MTB-Systemische-Therapie-Medication-5\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profiles: <a href=\"StructureDefinition-mii-pr-mtb-systemtherapie-medication-statement.html\">MII PR MTB Systemtherapie Medication Statement</a>, <a href=\"https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-therapie-medication-statement|2026.0.1\">https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-therapie-medication-statement|2026.0.1</a></p></div><p><b>basedOn</b>: <a href=\"MedicationRequest-mii-exa-mtb-medication-request-mirvetuximab.html\">MedicationRequest: extension = 1,m1A,http://doi.org#10.1200/JCO.2022.40.16_suppl.5512,http://www.ncbi.nlm.nih.gov/pubmed#38055253; status = completed; intent = proposal; medication[x] = MIRVETUXIMAB SORAVTANSINE; authoredOn = 2023-03-28</a></p><p><b>partOf</b>: <a href=\"Procedure-MII-EXA-MTB-Systemische-Therapie-1.html\">Procedure Zytostatische Chemotherapie, Immuntherapie und antiretrovirale Therapie</a></p><p><b>status</b>: Completed</p><p><b>statusReason</b>: <span title=\"Codes:\">E</span></p><p><b>medication</b>: <span title=\"Codes:{http://fdasis.nlm.nih.gov 98DE7VN88D}, {http://fhir.de/CodeSystem/bfarm/atc L01FX26}\">MIRVETUXIMAB SORAVTANSINE</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>effective</b>: 2023-09-20 --&gt; 2023-09-20</p><p><b>note</b>: </p><blockquote><div><p>20.09.2023 Z2 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22</p>\n</div></blockquote><blockquote><p><b>dosage</b></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>6 mg/kg KG<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg/kg{KG} = 'mg/kg{KG}')</span></td></tr></table></blockquote></div>"
      },
      "basedOn" : [{
        "reference" : "MedicationRequest/mii-exa-mtb-medication-request-mirvetuximab"
      }],
      "partOf" : [{
        "reference" : "Procedure/MII-EXA-MTB-Systemische-Therapie-1"
      }],
      "status" : "completed",
      "statusReason" : [{
        "coding" : [{
          "code" : "E"
        }]
      }],
      "medicationCodeableConcept" : {
        "coding" : [{
          "system" : "http://fdasis.nlm.nih.gov",
          "code" : "98DE7VN88D",
          "display" : "MIRVETUXIMAB SORAVTANSINE"
        },
        {
          "system" : "http://fhir.de/CodeSystem/bfarm/atc",
          "version" : "2025",
          "code" : "L01FX26",
          "display" : "Mirvetuximab soravtansin"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "effectivePeriod" : {
        "start" : "2023-09-20",
        "end" : "2023-09-20"
      },
      "note" : [{
        "text" : "20.09.2023 Z2 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
      }],
      "dosage" : [{
        "doseAndRate" : [{
          "doseQuantity" : {
            "value" : 6,
            "unit" : "mg/kg KG",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg/kg{KG}"
          }
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-5"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-6",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "MII-EXA-MTB-Systemische-Therapie-Medication-6",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemtherapie-medication-statement",
        "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-therapie-medication-statement|2026.0.1"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_MII-EXA-MTB-Systemische-Therapie-Medication-6\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement MII-EXA-MTB-Systemische-Therapie-Medication-6</b></p><a name=\"MII-EXA-MTB-Systemische-Therapie-Medication-6\"> </a><a name=\"hcMII-EXA-MTB-Systemische-Therapie-Medication-6\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profiles: <a href=\"StructureDefinition-mii-pr-mtb-systemtherapie-medication-statement.html\">MII PR MTB Systemtherapie Medication Statement</a>, <a href=\"https://simplifier.net/resolve?scope=de.basisprofil.r4@1.5.4&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-therapie-medication-statement|2026.0.1\">https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-therapie-medication-statement|2026.0.1</a></p></div><p><b>basedOn</b>: <a href=\"MedicationRequest-mii-exa-mtb-medication-request-mirvetuximab.html\">MedicationRequest: extension = 1,m1A,http://doi.org#10.1200/JCO.2022.40.16_suppl.5512,http://www.ncbi.nlm.nih.gov/pubmed#38055253; status = completed; intent = proposal; medication[x] = MIRVETUXIMAB SORAVTANSINE; authoredOn = 2023-03-28</a></p><p><b>partOf</b>: <a href=\"Procedure-MII-EXA-MTB-Systemische-Therapie-1.html\">Procedure Zytostatische Chemotherapie, Immuntherapie und antiretrovirale Therapie</a></p><p><b>status</b>: Completed</p><p><b>medication</b>: <span title=\"Codes:{http://fdasis.nlm.nih.gov 98DE7VN88D}, {http://fhir.de/CodeSystem/bfarm/atc L01FX26}\">MIRVETUXIMAB SORAVTANSINE</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>effective</b>: 2023-10-12 --&gt; 2023-10-12</p><p><b>note</b>: </p><blockquote><div><p>12.10.2023 Z3 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22</p>\n</div></blockquote><blockquote><p><b>dosage</b></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>6 mg/kg KG<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg/kg{KG} = 'mg/kg{KG}')</span></td></tr></table></blockquote></div>"
      },
      "basedOn" : [{
        "reference" : "MedicationRequest/mii-exa-mtb-medication-request-mirvetuximab"
      }],
      "partOf" : [{
        "reference" : "Procedure/MII-EXA-MTB-Systemische-Therapie-1"
      }],
      "status" : "completed",
      "medicationCodeableConcept" : {
        "coding" : [{
          "system" : "http://fdasis.nlm.nih.gov",
          "code" : "98DE7VN88D",
          "display" : "MIRVETUXIMAB SORAVTANSINE"
        },
        {
          "system" : "http://fhir.de/CodeSystem/bfarm/atc",
          "version" : "2025",
          "code" : "L01FX26",
          "display" : "Mirvetuximab soravtansin"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "effectivePeriod" : {
        "start" : "2023-10-12",
        "end" : "2023-10-12"
      },
      "note" : [{
        "text" : "12.10.2023 Z3 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
      }],
      "dosage" : [{
        "doseAndRate" : [{
          "doseQuantity" : {
            "value" : 6,
            "unit" : "mg/kg KG",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg/kg{KG}"
          }
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-6"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/MII-EXA-MTB-Response-Befund-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "MII-EXA-MTB-Response-Befund-1",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-response-befund|2026.0.1"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_MII-EXA-MTB-Response-Befund-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation MII-EXA-MTB-Response-Befund-1</b></p><a name=\"MII-EXA-MTB-Response-Befund-1\"> </a><a name=\"hcMII-EXA-MTB-Response-Befund-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-response-befund.html\">MII PR MTB Response Befund</a> version: 2026.0.1</p></div><p><b>partOf</b>: <a href=\"Procedure-MII-EXA-MTB-Systemische-Therapie-1.html\">Procedure Zytostatische Chemotherapie, Immuntherapie und antiretrovirale Therapie</a></p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 396432002}\">Status of regression of tumor (observable entity)</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>focus</b>: <a href=\"Condition-PatientKimMusterperson-PrimaryDiagnosis-2.html\">Condition Bösartige Neubildung: Peritoneum, nicht näher bezeichnet</a></p><p><b>effective</b>: 2023-08-20</p><p><b>value</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-response-befund-beurteilung CR}\">Complete Response</span></p><p><b>method</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-response-befund-beurteilungsmethode RECIST}\">RECIST</span></p><h3>Components</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Code</b></td><td><b>Value[x]</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://snomed.info/sct 399656008}\">Presence of metastatic neoplasm in regional lymph node (observable entity)</span></td><td><span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-lymphknoten K}\">kein Lymphknotenbefall nachweisbar</span></td></tr></table></div>"
      },
      "partOf" : [{
        "reference" : "Procedure/MII-EXA-MTB-Systemische-Therapie-1"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "396432002",
          "display" : "Status of regression of tumor (observable entity)"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "focus" : [{
        "reference" : "Condition/PatientKimMusterperson-PrimaryDiagnosis-2"
      }],
      "effectiveDateTime" : "2023-08-20",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-response-befund-beurteilung",
          "code" : "CR",
          "display" : "Complete Response"
        }]
      },
      "method" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-response-befund-beurteilungsmethode",
          "code" : "RECIST",
          "display" : "RECIST"
        }]
      },
      "component" : [{
        "code" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "399656008",
            "display" : "Presence of metastatic neoplasm in regional lymph node (observable entity)"
          }]
        },
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-lymphknoten",
            "code" : "K",
            "display" : "kein Lymphknotenbefall nachweisbar"
          }]
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/MII-EXA-MTB-Response-Befund-1"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/MII-EXA-MTB-Response-Befund-2",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "MII-EXA-MTB-Response-Befund-2",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-response-befund|2026.0.1"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_MII-EXA-MTB-Response-Befund-2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation MII-EXA-MTB-Response-Befund-2</b></p><a name=\"MII-EXA-MTB-Response-Befund-2\"> </a><a name=\"hcMII-EXA-MTB-Response-Befund-2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-response-befund.html\">MII PR MTB Response Befund</a> version: 2026.0.1</p></div><p><b>partOf</b>: <a href=\"Procedure-MII-EXA-MTB-Systemische-Therapie-1.html\">Procedure Zytostatische Chemotherapie, Immuntherapie und antiretrovirale Therapie</a></p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 396432002}\">Status of regression of tumor (observable entity)</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>focus</b>: <a href=\"Condition-PatientKimMusterperson-PrimaryDiagnosis-2.html\">Condition Bösartige Neubildung: Peritoneum, nicht näher bezeichnet</a></p><p><b>effective</b>: 2023-10-22</p><p><b>value</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-response-befund-beurteilung PR}\">Partial Response</span></p><p><b>method</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-response-befund-beurteilungsmethode RECIST}\">RECIST</span></p><h3>Components</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Code</b></td><td><b>Value[x]</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://snomed.info/sct 399656008}\">Presence of metastatic neoplasm in regional lymph node (observable entity)</span></td><td><span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-lymphknoten K}\">kein Lymphknotenbefall nachweisbar</span></td></tr></table></div>"
      },
      "partOf" : [{
        "reference" : "Procedure/MII-EXA-MTB-Systemische-Therapie-1"
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "396432002",
          "display" : "Status of regression of tumor (observable entity)"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "focus" : [{
        "reference" : "Condition/PatientKimMusterperson-PrimaryDiagnosis-2"
      }],
      "effectiveDateTime" : "2023-10-22",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-response-befund-beurteilung",
          "code" : "PR",
          "display" : "Partial Response"
        }]
      },
      "method" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-response-befund-beurteilungsmethode",
          "code" : "RECIST",
          "display" : "RECIST"
        }]
      },
      "component" : [{
        "code" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "399656008",
            "display" : "Presence of metastatic neoplasm in regional lymph node (observable entity)"
          }]
        },
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-lymphknoten",
            "code" : "K",
            "display" : "kein Lymphknotenbefall nachweisbar"
          }]
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/MII-EXA-MTB-Response-Befund-2"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Claim/MII-EXA-MTB-Antrag-Kostenuebernahme-1",
    "resource" : {
      "resourceType" : "Claim",
      "id" : "MII-EXA-MTB-Antrag-Kostenuebernahme-1",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-antrag-kostenuebernahme|2026.0.1"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Claim_MII-EXA-MTB-Antrag-Kostenuebernahme-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Claim MII-EXA-MTB-Antrag-Kostenuebernahme-1</b></p><a name=\"MII-EXA-MTB-Antrag-Kostenuebernahme-1\"> </a><a name=\"hcMII-EXA-MTB-Antrag-Kostenuebernahme-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-antrag-kostenuebernahme.html\">MII PR MTB Antrag Kostenuebernahme</a> version: 2026.0.1</p></div><p><b>status</b>: Active</p><p><b>type</b>: <span title=\"Codes:\">institutional</span></p><p><b>use</b>: Claim</p><p><b>patient</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>created</b>: 2023-03-10</p><p><b>provider</b>: <a href=\"Organization-MyHospital.html\">Organization Example General Hospital</a></p><p><b>priority</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/processpriority normal}\">Normal</span></p><h3>Relateds</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Relationship</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:\">initial-claim</span></td></tr></table><p><b>prescription</b>: <a href=\"MedicationRequest-mii-exa-mtb-medication-request-mirvetuximab.html\">MedicationRequest: extension = 1,m1A,http://doi.org#10.1200/JCO.2022.40.16_suppl.5512,http://www.ncbi.nlm.nih.gov/pubmed#38055253; status = completed; intent = proposal; medication[x] = MIRVETUXIMAB SORAVTANSINE; authoredOn = 2023-03-28</a></p><h3>CareTeams</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Sequence</b></td><td><b>Provider</b></td><td><b>Responsible</b></td></tr><tr><td style=\"display: none\">*</td><td>1</td><td><a href=\"Organization-MyInsurer.html\">Organization Example Health Insurance Co.</a></td><td>true</td></tr></table><h3>Insurances</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Sequence</b></td><td><b>Focal</b></td><td><b>Coverage</b></td><td><b>ClaimResponse</b></td></tr><tr><td style=\"display: none\">*</td><td>1</td><td>true</td><td><a href=\"Coverage-MyCoverage.html\">Coverage: status = active; type = extended healthcare; period = 2023-01-01 --&gt; 2025-12-31</a></td><td><a href=\"ClaimResponse-MII-EXA-MTB-Antwort-Kostenuebernahme-1.html\">ClaimResponse: status = active; type = institutional; use = claim; created = 2023-05-01; outcome = complete</a></td></tr></table></div>"
      },
      "status" : "active",
      "type" : {
        "coding" : [{
          "code" : "institutional"
        }]
      },
      "use" : "claim",
      "patient" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "created" : "2023-03-10",
      "provider" : {
        "reference" : "Organization/MyHospital"
      },
      "priority" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/processpriority",
          "code" : "normal"
        }]
      },
      "related" : [{
        "relationship" : {
          "coding" : [{
            "code" : "initial-claim"
          }]
        }
      }],
      "prescription" : {
        "reference" : "MedicationRequest/mii-exa-mtb-medication-request-mirvetuximab"
      },
      "careTeam" : [{
        "sequence" : 1,
        "provider" : {
          "reference" : "Organization/MyInsurer"
        },
        "responsible" : true
      }],
      "insurance" : [{
        "sequence" : 1,
        "focal" : true,
        "coverage" : {
          "reference" : "Coverage/MyCoverage"
        },
        "claimResponse" : {
          "reference" : "ClaimResponse/MII-EXA-MTB-Antwort-Kostenuebernahme-1"
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Claim/MII-EXA-MTB-Antrag-Kostenuebernahme-1"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/ClaimResponse/MII-EXA-MTB-Antwort-Kostenuebernahme-1",
    "resource" : {
      "resourceType" : "ClaimResponse",
      "id" : "MII-EXA-MTB-Antwort-Kostenuebernahme-1",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-antwort-kostenuebernahme|2026.0.1"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ClaimResponse_MII-EXA-MTB-Antwort-Kostenuebernahme-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: ClaimResponse MII-EXA-MTB-Antwort-Kostenuebernahme-1</b></p><a name=\"MII-EXA-MTB-Antwort-Kostenuebernahme-1\"> </a><a name=\"hcMII-EXA-MTB-Antwort-Kostenuebernahme-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-antwort-kostenuebernahme.html\">MII PR MTB Anwort Kostenuebernahme</a> version: 2026.0.1</p></div><p><b>status</b>: Active</p><p><b>type</b>: <span title=\"Codes:\">institutional</span></p><p><b>use</b>: Claim</p><p><b>patient</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>created</b>: 2023-05-01</p><p><b>insurer</b>: <a href=\"Organization-MyHospital.html\">Organization Example General Hospital</a></p><p><b>request</b>: <a href=\"Claim-MII-EXA-MTB-Antrag-Kostenuebernahme-1.html\">Claim: status = active; type = institutional; use = claim; created = 2023-03-10; priority = Normal</a></p><p><b>outcome</b>: Processing Complete</p></div>"
      },
      "status" : "active",
      "type" : {
        "coding" : [{
          "code" : "institutional"
        }]
      },
      "use" : "claim",
      "patient" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "created" : "2023-05-01",
      "insurer" : {
        "reference" : "Organization/MyHospital"
      },
      "request" : {
        "reference" : "Claim/MII-EXA-MTB-Antrag-Kostenuebernahme-1"
      },
      "outcome" : "complete"
    },
    "request" : {
      "method" : "PUT",
      "url" : "ClaimResponse/MII-EXA-MTB-Antwort-Kostenuebernahme-1"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Specimen/PatientKimMusterperson-Specimen-1",
    "resource" : {
      "resourceType" : "Specimen",
      "id" : "PatientKimMusterperson-Specimen-1",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Specimen_PatientKimMusterperson-Specimen-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Specimen PatientKimMusterperson-Specimen-1</b></p><a name=\"PatientKimMusterperson-Specimen-1\"> </a><a name=\"hcPatientKimMusterperson-Specimen-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.patho@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-patho/StructureDefinition/mii-pr-patho-specimen\">MII PR Patho Specimen</a></p></div><p><b>identifier</b>: Z 230201/23</p><p><b>accessionIdentifier</b>: Z 230201/23</p><p><b>status</b>: Available</p><p><b>type</b>: <span title=\"Codes:{http://snomed.info/sct 309201001}\">Ascitic fluid specimen</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><h3>Collections</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Collected[x]</b></td><td><b>Quantity</b></td><td><b>Method</b></td></tr><tr><td style=\"display: none\">*</td><td>2023-01-02</td><td>20 mL<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemL = 'mL')</span></td><td><span title=\"Codes:{http://snomed.info/sct 178012008}\">Percutaneous drainage of ascites</span></td></tr></table></div>"
      },
      "identifier" : [{
        "value" : "Z 230201/23"
      }],
      "accessionIdentifier" : {
        "value" : "Z 230201/23"
      },
      "status" : "available",
      "type" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "309201001",
          "display" : "Ascitic fluid specimen"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "collection" : {
        "collectedDateTime" : "2023-01-02",
        "quantity" : {
          "value" : 20,
          "unit" : "mL",
          "system" : "http://unitsofmeasure.org",
          "code" : "mL"
        },
        "method" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "178012008"
          }]
        }
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Specimen/PatientKimMusterperson-Specimen-1"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Procedure/MTBChemo1Procedure",
    "resource" : {
      "resourceType" : "Procedure",
      "id" : "MTBChemo1Procedure",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-vortherapie|2026.0.1"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Procedure_MTBChemo1Procedure\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Procedure MTBChemo1Procedure</b></p><a name=\"MTBChemo1Procedure\"> </a><a name=\"hcMTBChemo1Procedure\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-systemische-vortherapie.html\">MII PR MTB Systemische Vortherapie</a> version: 2026.0.1</p></div><p><b>MII EX Onko Systemische Therapie Intention</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention K}\">kurativ</span></p><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 277132007}\">Therapeutic procedure</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 367336001}, {https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ CH}\">Chemotherapy</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>performed</b>: 2023-01-04 --&gt; 2023-05-24</p><p><b>outcome</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-ende-grund W}\">Reguläres Ende mit Substanzwechsel</span></p></div>"
      },
      "extension" : [{
        "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-systemische-therapie-intention",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention",
            "code" : "K"
          }]
        }
      }],
      "status" : "completed",
      "category" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "277132007"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "367336001"
        },
        {
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ",
          "code" : "CH"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "performedPeriod" : {
        "start" : "2023-01-04",
        "end" : "2023-05-24"
      },
      "outcome" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-ende-grund",
          "code" : "W"
        }],
        "text" : "Reguläres Ende mit Substanzwechsel"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Procedure/MTBChemo1Procedure"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/MedicationStatement/MTBChemo1MedicationStatement1",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "MTBChemo1MedicationStatement1",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_MTBChemo1MedicationStatement1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement MTBChemo1MedicationStatement1</b></p><a name=\"MTBChemo1MedicationStatement1\"> </a><a name=\"hcMTBChemo1MedicationStatement1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.medikation@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement\">MII PR Medikation MedicationStatement</a></p></div><p><b>partOf</b>: <a href=\"Procedure-MTBChemo1Procedure.html\">Procedure Chemotherapy</a></p><p><b>status</b>: Completed</p><p><b>medication</b>: <span title=\"Codes:\">Z1 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2, d1</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>effective</b>: 2023-01-04</p></div>"
      },
      "partOf" : [{
        "reference" : "Procedure/MTBChemo1Procedure"
      }],
      "status" : "completed",
      "medicationCodeableConcept" : {
        "text" : "Z1 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2, d1"
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "effectiveDateTime" : "2023-01-04"
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationStatement/MTBChemo1MedicationStatement1"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/MedicationStatement/MTBChemo1MedicationStatement1-1",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "MTBChemo1MedicationStatement1-1",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_MTBChemo1MedicationStatement1-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement MTBChemo1MedicationStatement1-1</b></p><a name=\"MTBChemo1MedicationStatement1-1\"> </a><a name=\"hcMTBChemo1MedicationStatement1-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation\">MII PR Onkologie Systemische Therapie Medikation</a></p></div><p><b>partOf</b>: </p><ul><li><a href=\"Procedure-MTBChemo1Procedure.html\">Procedure Chemotherapy</a></li><li><a href=\"MedicationStatement-MTBChemo1MedicationStatement1.html\">MedicationStatement: status = completed; medication[x] = ; effective[x] = 2023-01-04</a></li></ul><p><b>status</b>: Completed</p><p><b>medication</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/atc L01XA02}\">Carboplatin</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>effective</b>: 2023-01-04</p><p><b>note</b>: </p><blockquote><div><p>Z1 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2 d1</p>\n</div></blockquote><blockquote><p><b>dosage</b></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>5 AUC<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg.min/ml = 'mg.min/ml')</span></td></tr></table></blockquote></div>"
      },
      "partOf" : [{
        "reference" : "Procedure/MTBChemo1Procedure"
      },
      {
        "reference" : "MedicationStatement/MTBChemo1MedicationStatement1"
      }],
      "status" : "completed",
      "medicationCodeableConcept" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/atc",
          "code" : "L01XA02"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "effectiveDateTime" : "2023-01-04",
      "note" : [{
        "text" : "Z1 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2 d1"
      }],
      "dosage" : [{
        "doseAndRate" : [{
          "doseQuantity" : {
            "value" : 5,
            "unit" : "AUC",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg.min/ml"
          }
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationStatement/MTBChemo1MedicationStatement1-1"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/MedicationStatement/MTBChemo1MedicationStatement1-2",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "MTBChemo1MedicationStatement1-2",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_MTBChemo1MedicationStatement1-2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement MTBChemo1MedicationStatement1-2</b></p><a name=\"MTBChemo1MedicationStatement1-2\"> </a><a name=\"hcMTBChemo1MedicationStatement1-2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation\">MII PR Onkologie Systemische Therapie Medikation</a></p></div><p><b>partOf</b>: </p><ul><li><a href=\"Procedure-MTBChemo1Procedure.html\">Procedure Chemotherapy</a></li><li><a href=\"MedicationStatement-MTBChemo1MedicationStatement1.html\">MedicationStatement: status = completed; medication[x] = ; effective[x] = 2023-01-04</a></li></ul><p><b>status</b>: Completed</p><p><b>medication</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/atc L01DB01}\">Doxorubicin</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>effective</b>: 2023-01-04</p><p><b>note</b>: </p><blockquote><div><p>Z1 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2 d1</p>\n</div></blockquote><blockquote><p><b>dosage</b></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>30 mg/m2<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg/m2 = 'mg/m2')</span></td></tr></table></blockquote></div>"
      },
      "partOf" : [{
        "reference" : "Procedure/MTBChemo1Procedure"
      },
      {
        "reference" : "MedicationStatement/MTBChemo1MedicationStatement1"
      }],
      "status" : "completed",
      "medicationCodeableConcept" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/atc",
          "code" : "L01DB01"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "effectiveDateTime" : "2023-01-04",
      "note" : [{
        "text" : "Z1 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2 d1"
      }],
      "dosage" : [{
        "doseAndRate" : [{
          "doseQuantity" : {
            "value" : 30,
            "unit" : "mg/m2",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg/m2"
          }
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationStatement/MTBChemo1MedicationStatement1-2"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/MedicationStatement/MTBChemo1MedicationStatement2",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "MTBChemo1MedicationStatement2",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_MTBChemo1MedicationStatement2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement MTBChemo1MedicationStatement2</b></p><a name=\"MTBChemo1MedicationStatement2\"> </a><a name=\"hcMTBChemo1MedicationStatement2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.medikation@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement\">MII PR Medikation MedicationStatement</a></p></div><p><b>partOf</b>: <a href=\"Procedure-MTBChemo1Procedure.html\">Procedure Chemotherapy</a></p><p><b>status</b>: Completed</p><p><b>medication</b>: <span title=\"Codes:\">Z2 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2, d1</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>effective</b>: 2023-02-01</p></div>"
      },
      "partOf" : [{
        "reference" : "Procedure/MTBChemo1Procedure"
      }],
      "status" : "completed",
      "medicationCodeableConcept" : {
        "text" : "Z2 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2, d1"
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "effectiveDateTime" : "2023-02-01"
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationStatement/MTBChemo1MedicationStatement2"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/MedicationStatement/MTBChemo1MedicationStatement2-1",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "MTBChemo1MedicationStatement2-1",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_MTBChemo1MedicationStatement2-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement MTBChemo1MedicationStatement2-1</b></p><a name=\"MTBChemo1MedicationStatement2-1\"> </a><a name=\"hcMTBChemo1MedicationStatement2-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation\">MII PR Onkologie Systemische Therapie Medikation</a></p></div><p><b>partOf</b>: </p><ul><li><a href=\"Procedure-MTBChemo1Procedure.html\">Procedure Chemotherapy</a></li><li><a href=\"MedicationStatement-MTBChemo1MedicationStatement2.html\">MedicationStatement: status = completed; medication[x] = ; effective[x] = 2023-02-01</a></li></ul><p><b>status</b>: Completed</p><p><b>medication</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/atc L01XA02}\">Carboplatin</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>effective</b>: 2023-02-01</p><p><b>note</b>: </p><blockquote><div><p>Z2 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2 d1</p>\n</div></blockquote><blockquote><p><b>dosage</b></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>5 AUC<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg.min/ml = 'mg.min/ml')</span></td></tr></table></blockquote></div>"
      },
      "partOf" : [{
        "reference" : "Procedure/MTBChemo1Procedure"
      },
      {
        "reference" : "MedicationStatement/MTBChemo1MedicationStatement2"
      }],
      "status" : "completed",
      "medicationCodeableConcept" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/atc",
          "code" : "L01XA02"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "effectiveDateTime" : "2023-02-01",
      "note" : [{
        "text" : "Z2 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2 d1"
      }],
      "dosage" : [{
        "doseAndRate" : [{
          "doseQuantity" : {
            "value" : 5,
            "unit" : "AUC",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg.min/ml"
          }
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationStatement/MTBChemo1MedicationStatement2-1"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/MedicationStatement/MTBChemo1MedicationStatement2-2",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "MTBChemo1MedicationStatement2-2",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_MTBChemo1MedicationStatement2-2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement MTBChemo1MedicationStatement2-2</b></p><a name=\"MTBChemo1MedicationStatement2-2\"> </a><a name=\"hcMTBChemo1MedicationStatement2-2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation\">MII PR Onkologie Systemische Therapie Medikation</a></p></div><p><b>partOf</b>: </p><ul><li><a href=\"Procedure-MTBChemo1Procedure.html\">Procedure Chemotherapy</a></li><li><a href=\"MedicationStatement-MTBChemo1MedicationStatement2.html\">MedicationStatement: status = completed; medication[x] = ; effective[x] = 2023-02-01</a></li></ul><p><b>status</b>: Completed</p><p><b>medication</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/atc L01DB01}\">Doxorubicin</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>effective</b>: 2023-02-01</p><p><b>note</b>: </p><blockquote><div><p>Z2 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2 d1</p>\n</div></blockquote><blockquote><p><b>dosage</b></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>30 mg/m2<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg/m2 = 'mg/m2')</span></td></tr></table></blockquote></div>"
      },
      "partOf" : [{
        "reference" : "Procedure/MTBChemo1Procedure"
      },
      {
        "reference" : "MedicationStatement/MTBChemo1MedicationStatement2"
      }],
      "status" : "completed",
      "medicationCodeableConcept" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/atc",
          "code" : "L01DB01"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "effectiveDateTime" : "2023-02-01",
      "note" : [{
        "text" : "Z2 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2 d1"
      }],
      "dosage" : [{
        "doseAndRate" : [{
          "doseQuantity" : {
            "value" : 30,
            "unit" : "mg/m2",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg/m2"
          }
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationStatement/MTBChemo1MedicationStatement2-2"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/MedicationStatement/MTBChemo1MedicationStatement3",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "MTBChemo1MedicationStatement3",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_MTBChemo1MedicationStatement3\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement MTBChemo1MedicationStatement3</b></p><a name=\"MTBChemo1MedicationStatement3\"> </a><a name=\"hcMTBChemo1MedicationStatement3\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.medikation@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement\">MII PR Medikation MedicationStatement</a></p></div><p><b>partOf</b>: <a href=\"Procedure-MTBChemo1Procedure.html\">Procedure Chemotherapy</a></p><p><b>status</b>: Completed</p><p><b>medication</b>: <span title=\"Codes:\">Z3 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2, d1</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>effective</b>: 2023-03-01</p></div>"
      },
      "partOf" : [{
        "reference" : "Procedure/MTBChemo1Procedure"
      }],
      "status" : "completed",
      "medicationCodeableConcept" : {
        "text" : "Z3 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2, d1"
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "effectiveDateTime" : "2023-03-01"
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationStatement/MTBChemo1MedicationStatement3"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/MedicationStatement/MTBChemo1MedicationStatement3-1",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "MTBChemo1MedicationStatement3-1",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_MTBChemo1MedicationStatement3-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement MTBChemo1MedicationStatement3-1</b></p><a name=\"MTBChemo1MedicationStatement3-1\"> </a><a name=\"hcMTBChemo1MedicationStatement3-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation\">MII PR Onkologie Systemische Therapie Medikation</a></p></div><p><b>partOf</b>: </p><ul><li><a href=\"Procedure-MTBChemo1Procedure.html\">Procedure Chemotherapy</a></li><li><a href=\"MedicationStatement-MTBChemo1MedicationStatement3.html\">MedicationStatement: status = completed; medication[x] = ; effective[x] = 2023-03-01</a></li></ul><p><b>status</b>: Completed</p><p><b>medication</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/atc L01XA02}\">Carboplatin</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>effective</b>: 2023-03-01</p><p><b>note</b>: </p><blockquote><div><p>Z3 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2 d1</p>\n</div></blockquote><blockquote><p><b>dosage</b></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>5 AUC<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg.min/ml = 'mg.min/ml')</span></td></tr></table></blockquote></div>"
      },
      "partOf" : [{
        "reference" : "Procedure/MTBChemo1Procedure"
      },
      {
        "reference" : "MedicationStatement/MTBChemo1MedicationStatement3"
      }],
      "status" : "completed",
      "medicationCodeableConcept" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/atc",
          "code" : "L01XA02"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "effectiveDateTime" : "2023-03-01",
      "note" : [{
        "text" : "Z3 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2 d1"
      }],
      "dosage" : [{
        "doseAndRate" : [{
          "doseQuantity" : {
            "value" : 5,
            "unit" : "AUC",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg.min/ml"
          }
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationStatement/MTBChemo1MedicationStatement3-1"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/MedicationStatement/MTBChemo1MedicationStatement3-2",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "MTBChemo1MedicationStatement3-2",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_MTBChemo1MedicationStatement3-2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement MTBChemo1MedicationStatement3-2</b></p><a name=\"MTBChemo1MedicationStatement3-2\"> </a><a name=\"hcMTBChemo1MedicationStatement3-2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation\">MII PR Onkologie Systemische Therapie Medikation</a></p></div><p><b>partOf</b>: </p><ul><li><a href=\"Procedure-MTBChemo1Procedure.html\">Procedure Chemotherapy</a></li><li><a href=\"MedicationStatement-MTBChemo1MedicationStatement3.html\">MedicationStatement: status = completed; medication[x] = ; effective[x] = 2023-03-01</a></li></ul><p><b>status</b>: Completed</p><p><b>medication</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/atc L01DB01}\">Doxorubicin</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>effective</b>: 2023-03-01</p><p><b>note</b>: </p><blockquote><div><p>Z3 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2 d1</p>\n</div></blockquote><blockquote><p><b>dosage</b></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>30 mg/m2<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg/m2 = 'mg/m2')</span></td></tr></table></blockquote></div>"
      },
      "partOf" : [{
        "reference" : "Procedure/MTBChemo1Procedure"
      },
      {
        "reference" : "MedicationStatement/MTBChemo1MedicationStatement3"
      }],
      "status" : "completed",
      "medicationCodeableConcept" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/atc",
          "code" : "L01DB01"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "effectiveDateTime" : "2023-03-01",
      "note" : [{
        "text" : "Z3 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2 d1"
      }],
      "dosage" : [{
        "doseAndRate" : [{
          "doseQuantity" : {
            "value" : 30,
            "unit" : "mg/m2",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg/m2"
          }
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationStatement/MTBChemo1MedicationStatement3-2"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/MedicationStatement/MTBChemo1MedicationStatement4",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "MTBChemo1MedicationStatement4",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_MTBChemo1MedicationStatement4\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement MTBChemo1MedicationStatement4</b></p><a name=\"MTBChemo1MedicationStatement4\"> </a><a name=\"hcMTBChemo1MedicationStatement4\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.medikation@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement\">MII PR Medikation MedicationStatement</a></p></div><p><b>partOf</b>: <a href=\"Procedure-MTBChemo1Procedure.html\">Procedure Chemotherapy</a></p><p><b>status</b>: Completed</p><p><b>medication</b>: <span title=\"Codes:\">Z4 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2, d1</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>effective</b>: 2023-03-29</p></div>"
      },
      "partOf" : [{
        "reference" : "Procedure/MTBChemo1Procedure"
      }],
      "status" : "completed",
      "medicationCodeableConcept" : {
        "text" : "Z4 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2, d1"
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "effectiveDateTime" : "2023-03-29"
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationStatement/MTBChemo1MedicationStatement4"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/MedicationStatement/MTBChemo1MedicationStatement4-1",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "MTBChemo1MedicationStatement4-1",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_MTBChemo1MedicationStatement4-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement MTBChemo1MedicationStatement4-1</b></p><a name=\"MTBChemo1MedicationStatement4-1\"> </a><a name=\"hcMTBChemo1MedicationStatement4-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation\">MII PR Onkologie Systemische Therapie Medikation</a></p></div><p><b>partOf</b>: </p><ul><li><a href=\"Procedure-MTBChemo1Procedure.html\">Procedure Chemotherapy</a></li><li><a href=\"MedicationStatement-MTBChemo1MedicationStatement4.html\">MedicationStatement: status = completed; medication[x] = ; effective[x] = 2023-03-29</a></li></ul><p><b>status</b>: Completed</p><p><b>medication</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/atc L01XA02}\">Carboplatin</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>effective</b>: 2023-03-29</p><p><b>note</b>: </p><blockquote><div><p>Z4 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2 d1</p>\n</div></blockquote><blockquote><p><b>dosage</b></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>5 AUC<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg.min/ml = 'mg.min/ml')</span></td></tr></table></blockquote></div>"
      },
      "partOf" : [{
        "reference" : "Procedure/MTBChemo1Procedure"
      },
      {
        "reference" : "MedicationStatement/MTBChemo1MedicationStatement4"
      }],
      "status" : "completed",
      "medicationCodeableConcept" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/atc",
          "code" : "L01XA02"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "effectiveDateTime" : "2023-03-29",
      "note" : [{
        "text" : "Z4 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2 d1"
      }],
      "dosage" : [{
        "doseAndRate" : [{
          "doseQuantity" : {
            "value" : 5,
            "unit" : "AUC",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg.min/ml"
          }
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationStatement/MTBChemo1MedicationStatement4-1"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/MedicationStatement/MTBChemo1MedicationStatement4-2",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "MTBChemo1MedicationStatement4-2",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_MTBChemo1MedicationStatement4-2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement MTBChemo1MedicationStatement4-2</b></p><a name=\"MTBChemo1MedicationStatement4-2\"> </a><a name=\"hcMTBChemo1MedicationStatement4-2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation\">MII PR Onkologie Systemische Therapie Medikation</a></p></div><p><b>partOf</b>: </p><ul><li><a href=\"Procedure-MTBChemo1Procedure.html\">Procedure Chemotherapy</a></li><li><a href=\"MedicationStatement-MTBChemo1MedicationStatement4.html\">MedicationStatement: status = completed; medication[x] = ; effective[x] = 2023-03-29</a></li></ul><p><b>status</b>: Completed</p><p><b>medication</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/atc L01DB01}\">Doxorubicin</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>effective</b>: 2023-03-29</p><p><b>note</b>: </p><blockquote><div><p>Z4 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2 d1</p>\n</div></blockquote><blockquote><p><b>dosage</b></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>30 mg/m2<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg/m2 = 'mg/m2')</span></td></tr></table></blockquote></div>"
      },
      "partOf" : [{
        "reference" : "Procedure/MTBChemo1Procedure"
      },
      {
        "reference" : "MedicationStatement/MTBChemo1MedicationStatement4"
      }],
      "status" : "completed",
      "medicationCodeableConcept" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/atc",
          "code" : "L01DB01"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "effectiveDateTime" : "2023-03-29",
      "note" : [{
        "text" : "Z4 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2 d1"
      }],
      "dosage" : [{
        "doseAndRate" : [{
          "doseQuantity" : {
            "value" : 30,
            "unit" : "mg/m2",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg/m2"
          }
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationStatement/MTBChemo1MedicationStatement4-2"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/MedicationStatement/MTBChemo1MedicationStatement5",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "MTBChemo1MedicationStatement5",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_MTBChemo1MedicationStatement5\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement MTBChemo1MedicationStatement5</b></p><a name=\"MTBChemo1MedicationStatement5\"> </a><a name=\"hcMTBChemo1MedicationStatement5\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.medikation@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement\">MII PR Medikation MedicationStatement</a></p></div><p><b>partOf</b>: <a href=\"Procedure-MTBChemo1Procedure.html\">Procedure Chemotherapy</a></p><p><b>status</b>: Completed</p><p><b>medication</b>: <span title=\"Codes:\">Z5 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2, d1</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>effective</b>: 2023-04-26</p></div>"
      },
      "partOf" : [{
        "reference" : "Procedure/MTBChemo1Procedure"
      }],
      "status" : "completed",
      "medicationCodeableConcept" : {
        "text" : "Z5 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2, d1"
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "effectiveDateTime" : "2023-04-26"
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationStatement/MTBChemo1MedicationStatement5"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/MedicationStatement/MTBChemo1MedicationStatement5-1",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "MTBChemo1MedicationStatement5-1",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_MTBChemo1MedicationStatement5-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement MTBChemo1MedicationStatement5-1</b></p><a name=\"MTBChemo1MedicationStatement5-1\"> </a><a name=\"hcMTBChemo1MedicationStatement5-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation\">MII PR Onkologie Systemische Therapie Medikation</a></p></div><p><b>partOf</b>: </p><ul><li><a href=\"Procedure-MTBChemo1Procedure.html\">Procedure Chemotherapy</a></li><li><a href=\"MedicationStatement-MTBChemo1MedicationStatement5.html\">MedicationStatement: status = completed; medication[x] = ; effective[x] = 2023-04-26</a></li></ul><p><b>status</b>: Completed</p><p><b>medication</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/atc L01XA02}\">Carboplatin</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>effective</b>: 2023-04-26</p><p><b>note</b>: </p><blockquote><div><p>Z5 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2 d1</p>\n</div></blockquote><blockquote><p><b>dosage</b></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>5 AUC<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg.min/ml = 'mg.min/ml')</span></td></tr></table></blockquote></div>"
      },
      "partOf" : [{
        "reference" : "Procedure/MTBChemo1Procedure"
      },
      {
        "reference" : "MedicationStatement/MTBChemo1MedicationStatement5"
      }],
      "status" : "completed",
      "medicationCodeableConcept" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/atc",
          "code" : "L01XA02"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "effectiveDateTime" : "2023-04-26",
      "note" : [{
        "text" : "Z5 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2 d1"
      }],
      "dosage" : [{
        "doseAndRate" : [{
          "doseQuantity" : {
            "value" : 5,
            "unit" : "AUC",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg.min/ml"
          }
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationStatement/MTBChemo1MedicationStatement5-1"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/MedicationStatement/MTBChemo1MedicationStatement5-2",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "MTBChemo1MedicationStatement5-2",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_MTBChemo1MedicationStatement5-2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement MTBChemo1MedicationStatement5-2</b></p><a name=\"MTBChemo1MedicationStatement5-2\"> </a><a name=\"hcMTBChemo1MedicationStatement5-2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation\">MII PR Onkologie Systemische Therapie Medikation</a></p></div><p><b>partOf</b>: </p><ul><li><a href=\"Procedure-MTBChemo1Procedure.html\">Procedure Chemotherapy</a></li><li><a href=\"MedicationStatement-MTBChemo1MedicationStatement5.html\">MedicationStatement: status = completed; medication[x] = ; effective[x] = 2023-04-26</a></li></ul><p><b>status</b>: Completed</p><p><b>medication</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/atc L01DB01}\">Doxorubicin</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>effective</b>: 2023-04-26</p><p><b>note</b>: </p><blockquote><div><p>Z5 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2 d1</p>\n</div></blockquote><blockquote><p><b>dosage</b></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>30 mg/m2<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg/m2 = 'mg/m2')</span></td></tr></table></blockquote></div>"
      },
      "partOf" : [{
        "reference" : "Procedure/MTBChemo1Procedure"
      },
      {
        "reference" : "MedicationStatement/MTBChemo1MedicationStatement5"
      }],
      "status" : "completed",
      "medicationCodeableConcept" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/atc",
          "code" : "L01DB01"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "effectiveDateTime" : "2023-04-26",
      "note" : [{
        "text" : "Z5 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2 d1"
      }],
      "dosage" : [{
        "doseAndRate" : [{
          "doseQuantity" : {
            "value" : 30,
            "unit" : "mg/m2",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg/m2"
          }
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationStatement/MTBChemo1MedicationStatement5-2"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/MedicationStatement/MTBChemo1MedicationStatement6",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "MTBChemo1MedicationStatement6",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_MTBChemo1MedicationStatement6\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement MTBChemo1MedicationStatement6</b></p><a name=\"MTBChemo1MedicationStatement6\"> </a><a name=\"hcMTBChemo1MedicationStatement6\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.medikation@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement\">MII PR Medikation MedicationStatement</a></p></div><p><b>partOf</b>: <a href=\"Procedure-MTBChemo1Procedure.html\">Procedure Chemotherapy</a></p><p><b>status</b>: Completed</p><p><b>medication</b>: <span title=\"Codes:\">Z6 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2, d1</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>effective</b>: 2023-05-24</p></div>"
      },
      "partOf" : [{
        "reference" : "Procedure/MTBChemo1Procedure"
      }],
      "status" : "completed",
      "medicationCodeableConcept" : {
        "text" : "Z6 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2, d1"
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "effectiveDateTime" : "2023-05-24"
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationStatement/MTBChemo1MedicationStatement6"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/MedicationStatement/MTBChemo1MedicationStatement6-1",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "MTBChemo1MedicationStatement6-1",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_MTBChemo1MedicationStatement6-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement MTBChemo1MedicationStatement6-1</b></p><a name=\"MTBChemo1MedicationStatement6-1\"> </a><a name=\"hcMTBChemo1MedicationStatement6-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation\">MII PR Onkologie Systemische Therapie Medikation</a></p></div><p><b>partOf</b>: </p><ul><li><a href=\"Procedure-MTBChemo1Procedure.html\">Procedure Chemotherapy</a></li><li><a href=\"MedicationStatement-MTBChemo1MedicationStatement6.html\">MedicationStatement: status = completed; medication[x] = ; effective[x] = 2023-05-24</a></li></ul><p><b>status</b>: Completed</p><p><b>medication</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/atc L01XA02}\">Carboplatin</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>effective</b>: 2023-05-24</p><p><b>note</b>: </p><blockquote><div><p>Z6 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2 d1</p>\n</div></blockquote><blockquote><p><b>dosage</b></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>5 AUC<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg.min/ml = 'mg.min/ml')</span></td></tr></table></blockquote></div>"
      },
      "partOf" : [{
        "reference" : "Procedure/MTBChemo1Procedure"
      },
      {
        "reference" : "MedicationStatement/MTBChemo1MedicationStatement6"
      }],
      "status" : "completed",
      "medicationCodeableConcept" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/atc",
          "code" : "L01XA02"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "effectiveDateTime" : "2023-05-24",
      "note" : [{
        "text" : "Z6 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2 d1"
      }],
      "dosage" : [{
        "doseAndRate" : [{
          "doseQuantity" : {
            "value" : 5,
            "unit" : "AUC",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg.min/ml"
          }
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationStatement/MTBChemo1MedicationStatement6-1"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/MedicationStatement/MTBChemo1MedicationStatement6-2",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "MTBChemo1MedicationStatement6-2",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_MTBChemo1MedicationStatement6-2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement MTBChemo1MedicationStatement6-2</b></p><a name=\"MTBChemo1MedicationStatement6-2\"> </a><a name=\"hcMTBChemo1MedicationStatement6-2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation\">MII PR Onkologie Systemische Therapie Medikation</a></p></div><p><b>partOf</b>: </p><ul><li><a href=\"Procedure-MTBChemo1Procedure.html\">Procedure Chemotherapy</a></li><li><a href=\"MedicationStatement-MTBChemo1MedicationStatement6.html\">MedicationStatement: status = completed; medication[x] = ; effective[x] = 2023-05-24</a></li></ul><p><b>status</b>: Completed</p><p><b>medication</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/atc L01DB01}\">Doxorubicin</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>effective</b>: 2023-05-24</p><p><b>note</b>: </p><blockquote><div><p>Z6 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2 d1</p>\n</div></blockquote><blockquote><p><b>dosage</b></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>30 mg/m2<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg/m2 = 'mg/m2')</span></td></tr></table></blockquote></div>"
      },
      "partOf" : [{
        "reference" : "Procedure/MTBChemo1Procedure"
      },
      {
        "reference" : "MedicationStatement/MTBChemo1MedicationStatement6"
      }],
      "status" : "completed",
      "medicationCodeableConcept" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/atc",
          "code" : "L01DB01"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "effectiveDateTime" : "2023-05-24",
      "note" : [{
        "text" : "Z6 Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2 d1"
      }],
      "dosage" : [{
        "doseAndRate" : [{
          "doseQuantity" : {
            "value" : 30,
            "unit" : "mg/m2",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg/m2"
          }
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationStatement/MTBChemo1MedicationStatement6-2"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Procedure/MTBChemo2Procedure",
    "resource" : {
      "resourceType" : "Procedure",
      "id" : "MTBChemo2Procedure",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-vortherapie|2026.0.1"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Procedure_MTBChemo2Procedure\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Procedure MTBChemo2Procedure</b></p><a name=\"MTBChemo2Procedure\"> </a><a name=\"hcMTBChemo2Procedure\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-systemische-vortherapie.html\">MII PR MTB Systemische Vortherapie</a> version: 2026.0.1</p></div><p><b>MII EX Onko Systemische Therapie Intention</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention K}\">kurativ</span></p><p><b>basedOn</b>: <a href=\"CarePlan-mii-exa-mtb-kim-musterperson-therapieplan.html\">CarePlan: status = active; intent = plan; category = prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie); created = 2023-03-28</a></p><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 277132007}\">Therapeutic procedure</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 367336001}, {https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ CH}\">Chemotherapy</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>performed</b>: 2023-06-24 --&gt; 2023-10-12</p><p><b>outcome</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-ende-grund E}\">Reguläres Ende</span></p></div>"
      },
      "extension" : [{
        "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-systemische-therapie-intention",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention",
            "code" : "K"
          }]
        }
      }],
      "basedOn" : [{
        "reference" : "CarePlan/mii-exa-mtb-kim-musterperson-therapieplan"
      }],
      "status" : "completed",
      "category" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "277132007"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "367336001"
        },
        {
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ",
          "code" : "CH"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "performedPeriod" : {
        "start" : "2023-06-24",
        "end" : "2023-10-12"
      },
      "outcome" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-ende-grund",
          "code" : "E"
        }],
        "text" : "Reguläres Ende"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Procedure/MTBChemo2Procedure"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/MedicationStatement/MTBChemo2MedicationStatement1",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "MTBChemo2MedicationStatement1",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_MTBChemo2MedicationStatement1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement MTBChemo2MedicationStatement1</b></p><a name=\"MTBChemo2MedicationStatement1\"> </a><a name=\"hcMTBChemo2MedicationStatement1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.medikation@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement\">MII PR Medikation MedicationStatement</a></p></div><p><b>basedOn</b>: <a href=\"MedicationRequest-mii-exa-mtb-medication-request-mirvetuximab.html\">MedicationRequest: extension = 1,m1A,http://doi.org#10.1200/JCO.2022.40.16_suppl.5512,http://www.ncbi.nlm.nih.gov/pubmed#38055253; status = completed; intent = proposal; medication[x] = MIRVETUXIMAB SORAVTANSINE; authoredOn = 2023-03-28</a></p><p><b>partOf</b>: <a href=\"Procedure-MTBChemo2Procedure.html\">Procedure Chemotherapy</a></p><p><b>status</b>: Completed</p><p><b>medication</b>: <span title=\"Codes:{http://fdasis.nlm.nih.gov 98DE7VN88D}, {http://fhir.de/CodeSystem/bfarm/atc L01FX26}\">MIRVETUXIMAB SORAVTANSINE</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>effective</b>: 2023-06-24</p><p><b>note</b>: </p><blockquote><div><p>Z1 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22</p>\n</div></blockquote><blockquote><p><b>dosage</b></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>6 mg/kg KG<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg/kg{KG} = 'mg/kg{KG}')</span></td></tr></table></blockquote></div>"
      },
      "basedOn" : [{
        "reference" : "MedicationRequest/mii-exa-mtb-medication-request-mirvetuximab"
      }],
      "partOf" : [{
        "reference" : "Procedure/MTBChemo2Procedure"
      }],
      "status" : "completed",
      "medicationCodeableConcept" : {
        "coding" : [{
          "system" : "http://fdasis.nlm.nih.gov",
          "code" : "98DE7VN88D",
          "display" : "MIRVETUXIMAB SORAVTANSINE"
        },
        {
          "system" : "http://fhir.de/CodeSystem/bfarm/atc",
          "version" : "2025",
          "code" : "L01FX26",
          "display" : "Mirvetuximab soravtansin"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "effectiveDateTime" : "2023-06-24",
      "note" : [{
        "text" : "Z1 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
      }],
      "dosage" : [{
        "doseAndRate" : [{
          "doseQuantity" : {
            "value" : 6,
            "unit" : "mg/kg KG",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg/kg{KG}"
          }
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationStatement/MTBChemo2MedicationStatement1"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/MedicationStatement/MTBChemo2MedicationStatement2",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "MTBChemo2MedicationStatement2",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_MTBChemo2MedicationStatement2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement MTBChemo2MedicationStatement2</b></p><a name=\"MTBChemo2MedicationStatement2\"> </a><a name=\"hcMTBChemo2MedicationStatement2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.medikation@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement\">MII PR Medikation MedicationStatement</a></p></div><p><b>basedOn</b>: <a href=\"MedicationRequest-mii-exa-mtb-medication-request-mirvetuximab.html\">MedicationRequest: extension = 1,m1A,http://doi.org#10.1200/JCO.2022.40.16_suppl.5512,http://www.ncbi.nlm.nih.gov/pubmed#38055253; status = completed; intent = proposal; medication[x] = MIRVETUXIMAB SORAVTANSINE; authoredOn = 2023-03-28</a></p><p><b>partOf</b>: <a href=\"Procedure-MTBChemo2Procedure.html\">Procedure Chemotherapy</a></p><p><b>status</b>: Completed</p><p><b>medication</b>: <span title=\"Codes:{http://fdasis.nlm.nih.gov 98DE7VN88D}, {http://fhir.de/CodeSystem/bfarm/atc L01FX26}\">MIRVETUXIMAB SORAVTANSINE</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>effective</b>: 2023-07-16</p><p><b>note</b>: </p><blockquote><div><p>Z2 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22</p>\n</div></blockquote><blockquote><p><b>dosage</b></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>6 mg/kg KG<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg/kg{KG} = 'mg/kg{KG}')</span></td></tr></table></blockquote></div>"
      },
      "basedOn" : [{
        "reference" : "MedicationRequest/mii-exa-mtb-medication-request-mirvetuximab"
      }],
      "partOf" : [{
        "reference" : "Procedure/MTBChemo2Procedure"
      }],
      "status" : "completed",
      "medicationCodeableConcept" : {
        "coding" : [{
          "system" : "http://fdasis.nlm.nih.gov",
          "code" : "98DE7VN88D",
          "display" : "MIRVETUXIMAB SORAVTANSINE"
        },
        {
          "system" : "http://fhir.de/CodeSystem/bfarm/atc",
          "version" : "2025",
          "code" : "L01FX26",
          "display" : "Mirvetuximab soravtansin"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "effectiveDateTime" : "2023-07-16",
      "note" : [{
        "text" : "Z2 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
      }],
      "dosage" : [{
        "doseAndRate" : [{
          "doseQuantity" : {
            "value" : 6,
            "unit" : "mg/kg KG",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg/kg{KG}"
          }
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationStatement/MTBChemo2MedicationStatement2"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/MedicationStatement/MTBChemo2MedicationStatement3",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "MTBChemo2MedicationStatement3",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_MTBChemo2MedicationStatement3\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement MTBChemo2MedicationStatement3</b></p><a name=\"MTBChemo2MedicationStatement3\"> </a><a name=\"hcMTBChemo2MedicationStatement3\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.medikation@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement\">MII PR Medikation MedicationStatement</a></p></div><p><b>basedOn</b>: <a href=\"MedicationRequest-mii-exa-mtb-medication-request-mirvetuximab.html\">MedicationRequest: extension = 1,m1A,http://doi.org#10.1200/JCO.2022.40.16_suppl.5512,http://www.ncbi.nlm.nih.gov/pubmed#38055253; status = completed; intent = proposal; medication[x] = MIRVETUXIMAB SORAVTANSINE; authoredOn = 2023-03-28</a></p><p><b>partOf</b>: <a href=\"Procedure-MTBChemo2Procedure.html\">Procedure Chemotherapy</a></p><p><b>status</b>: Completed</p><p><b>medication</b>: <span title=\"Codes:{http://fdasis.nlm.nih.gov 98DE7VN88D}, {http://fhir.de/CodeSystem/bfarm/atc L01FX26}\">MIRVETUXIMAB SORAVTANSINE</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>effective</b>: 2023-08-07</p><p><b>note</b>: </p><blockquote><div><p>Z3 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22</p>\n</div></blockquote><blockquote><p><b>dosage</b></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>6 mg/kg KG<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg/kg{KG} = 'mg/kg{KG}')</span></td></tr></table></blockquote></div>"
      },
      "basedOn" : [{
        "reference" : "MedicationRequest/mii-exa-mtb-medication-request-mirvetuximab"
      }],
      "partOf" : [{
        "reference" : "Procedure/MTBChemo2Procedure"
      }],
      "status" : "completed",
      "medicationCodeableConcept" : {
        "coding" : [{
          "system" : "http://fdasis.nlm.nih.gov",
          "code" : "98DE7VN88D",
          "display" : "MIRVETUXIMAB SORAVTANSINE"
        },
        {
          "system" : "http://fhir.de/CodeSystem/bfarm/atc",
          "version" : "2025",
          "code" : "L01FX26",
          "display" : "Mirvetuximab soravtansin"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "effectiveDateTime" : "2023-08-07",
      "note" : [{
        "text" : "Z3 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
      }],
      "dosage" : [{
        "doseAndRate" : [{
          "doseQuantity" : {
            "value" : 6,
            "unit" : "mg/kg KG",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg/kg{KG}"
          }
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationStatement/MTBChemo2MedicationStatement3"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/MedicationStatement/MTBChemo2MedicationStatement4",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "MTBChemo2MedicationStatement4",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_MTBChemo2MedicationStatement4\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement MTBChemo2MedicationStatement4</b></p><a name=\"MTBChemo2MedicationStatement4\"> </a><a name=\"hcMTBChemo2MedicationStatement4\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.medikation@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement\">MII PR Medikation MedicationStatement</a></p></div><p><b>basedOn</b>: <a href=\"MedicationRequest-mii-exa-mtb-medication-request-mirvetuximab.html\">MedicationRequest: extension = 1,m1A,http://doi.org#10.1200/JCO.2022.40.16_suppl.5512,http://www.ncbi.nlm.nih.gov/pubmed#38055253; status = completed; intent = proposal; medication[x] = MIRVETUXIMAB SORAVTANSINE; authoredOn = 2023-03-28</a></p><p><b>partOf</b>: <a href=\"Procedure-MTBChemo2Procedure.html\">Procedure Chemotherapy</a></p><p><b>status</b>: Completed</p><p><b>medication</b>: <span title=\"Codes:{http://fdasis.nlm.nih.gov 98DE7VN88D}, {http://fhir.de/CodeSystem/bfarm/atc L01FX26}\">MIRVETUXIMAB SORAVTANSINE</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>effective</b>: 2023-08-29</p><p><b>note</b>: </p><blockquote><div><p>Z4 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22</p>\n</div></blockquote><blockquote><p><b>dosage</b></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>6 mg/kg KG<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg/kg{KG} = 'mg/kg{KG}')</span></td></tr></table></blockquote></div>"
      },
      "basedOn" : [{
        "reference" : "MedicationRequest/mii-exa-mtb-medication-request-mirvetuximab"
      }],
      "partOf" : [{
        "reference" : "Procedure/MTBChemo2Procedure"
      }],
      "status" : "completed",
      "medicationCodeableConcept" : {
        "coding" : [{
          "system" : "http://fdasis.nlm.nih.gov",
          "code" : "98DE7VN88D",
          "display" : "MIRVETUXIMAB SORAVTANSINE"
        },
        {
          "system" : "http://fhir.de/CodeSystem/bfarm/atc",
          "version" : "2025",
          "code" : "L01FX26",
          "display" : "Mirvetuximab soravtansin"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "effectiveDateTime" : "2023-08-29",
      "note" : [{
        "text" : "Z4 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
      }],
      "dosage" : [{
        "doseAndRate" : [{
          "doseQuantity" : {
            "value" : 6,
            "unit" : "mg/kg KG",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg/kg{KG}"
          }
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationStatement/MTBChemo2MedicationStatement4"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/MedicationStatement/MTBChemo2MedicationStatement5",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "MTBChemo2MedicationStatement5",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_MTBChemo2MedicationStatement5\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement MTBChemo2MedicationStatement5</b></p><a name=\"MTBChemo2MedicationStatement5\"> </a><a name=\"hcMTBChemo2MedicationStatement5\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.medikation@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement\">MII PR Medikation MedicationStatement</a></p></div><p><b>basedOn</b>: <a href=\"MedicationRequest-mii-exa-mtb-medication-request-mirvetuximab.html\">MedicationRequest: extension = 1,m1A,http://doi.org#10.1200/JCO.2022.40.16_suppl.5512,http://www.ncbi.nlm.nih.gov/pubmed#38055253; status = completed; intent = proposal; medication[x] = MIRVETUXIMAB SORAVTANSINE; authoredOn = 2023-03-28</a></p><p><b>partOf</b>: <a href=\"Procedure-MTBChemo2Procedure.html\">Procedure Chemotherapy</a></p><p><b>status</b>: Completed</p><p><b>medication</b>: <span title=\"Codes:{http://fdasis.nlm.nih.gov 98DE7VN88D}, {http://fhir.de/CodeSystem/bfarm/atc L01FX26}\">MIRVETUXIMAB SORAVTANSINE</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>effective</b>: 2023-09-20</p><p><b>note</b>: </p><blockquote><div><p>Z5 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22</p>\n</div></blockquote><blockquote><p><b>dosage</b></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>6 mg/kg KG<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg/kg{KG} = 'mg/kg{KG}')</span></td></tr></table></blockquote></div>"
      },
      "basedOn" : [{
        "reference" : "MedicationRequest/mii-exa-mtb-medication-request-mirvetuximab"
      }],
      "partOf" : [{
        "reference" : "Procedure/MTBChemo2Procedure"
      }],
      "status" : "completed",
      "medicationCodeableConcept" : {
        "coding" : [{
          "system" : "http://fdasis.nlm.nih.gov",
          "code" : "98DE7VN88D",
          "display" : "MIRVETUXIMAB SORAVTANSINE"
        },
        {
          "system" : "http://fhir.de/CodeSystem/bfarm/atc",
          "version" : "2025",
          "code" : "L01FX26",
          "display" : "Mirvetuximab soravtansin"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "effectiveDateTime" : "2023-09-20",
      "note" : [{
        "text" : "Z5 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
      }],
      "dosage" : [{
        "doseAndRate" : [{
          "doseQuantity" : {
            "value" : 6,
            "unit" : "mg/kg KG",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg/kg{KG}"
          }
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationStatement/MTBChemo2MedicationStatement5"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/MedicationStatement/MTBChemo2MedicationStatement6",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "MTBChemo2MedicationStatement6",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_MTBChemo2MedicationStatement6\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement MTBChemo2MedicationStatement6</b></p><a name=\"MTBChemo2MedicationStatement6\"> </a><a name=\"hcMTBChemo2MedicationStatement6\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.medikation@2026.0.0&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement\">MII PR Medikation MedicationStatement</a></p></div><p><b>basedOn</b>: <a href=\"MedicationRequest-mii-exa-mtb-medication-request-mirvetuximab.html\">MedicationRequest: extension = 1,m1A,http://doi.org#10.1200/JCO.2022.40.16_suppl.5512,http://www.ncbi.nlm.nih.gov/pubmed#38055253; status = completed; intent = proposal; medication[x] = MIRVETUXIMAB SORAVTANSINE; authoredOn = 2023-03-28</a></p><p><b>partOf</b>: <a href=\"Procedure-MTBChemo2Procedure.html\">Procedure Chemotherapy</a></p><p><b>status</b>: Completed</p><p><b>medication</b>: <span title=\"Codes:{http://fdasis.nlm.nih.gov 98DE7VN88D}, {http://fhir.de/CodeSystem/bfarm/atc L01FX26}\">MIRVETUXIMAB SORAVTANSINE</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>effective</b>: 2023-10-12</p><p><b>note</b>: </p><blockquote><div><p>Z6 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22</p>\n</div></blockquote><blockquote><p><b>dosage</b></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>6 mg/kg KG<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg/kg{KG} = 'mg/kg{KG}')</span></td></tr></table></blockquote></div>"
      },
      "basedOn" : [{
        "reference" : "MedicationRequest/mii-exa-mtb-medication-request-mirvetuximab"
      }],
      "partOf" : [{
        "reference" : "Procedure/MTBChemo2Procedure"
      }],
      "status" : "completed",
      "medicationCodeableConcept" : {
        "coding" : [{
          "system" : "http://fdasis.nlm.nih.gov",
          "code" : "98DE7VN88D",
          "display" : "MIRVETUXIMAB SORAVTANSINE"
        },
        {
          "system" : "http://fhir.de/CodeSystem/bfarm/atc",
          "version" : "2025",
          "code" : "L01FX26",
          "display" : "Mirvetuximab soravtansin"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "effectiveDateTime" : "2023-10-12",
      "note" : [{
        "text" : "Z6 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22"
      }],
      "dosage" : [{
        "doseAndRate" : [{
          "doseQuantity" : {
            "value" : 6,
            "unit" : "mg/kg KG",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg/kg{KG}"
          }
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationStatement/MTBChemo2MedicationStatement6"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/DiagnosticReport/mii-exa-mtb-kim-musterperson-ngs-bericht",
    "resource" : {
      "resourceType" : "DiagnosticReport",
      "id" : "mii-exa-mtb-kim-musterperson-ngs-bericht",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-ngs-bericht|2026.0.1"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"DiagnosticReport_mii-exa-mtb-kim-musterperson-ngs-bericht\"> </a><p class=\"res-header-id\"><b>Generated Narrative: DiagnosticReport mii-exa-mtb-kim-musterperson-ngs-bericht</b></p><a name=\"mii-exa-mtb-kim-musterperson-ngs-bericht\"> </a><a name=\"hcmii-exa-mtb-kim-musterperson-ngs-bericht\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-ngs-bericht.html\">MII PR MTB NGS-Bericht</a> version: 2026.0.1</p></div><h2><span title=\"Codes:{http://loinc.org 51969-4}\">Genetic analysis report</span> (<span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 GE}\">Genetics</span>) </h2><table class=\"grid\"><tr><td>Subject</td><td>Kim Musterperson  (no stated gender), DoB: 1956-03-14</td></tr><tr><td>Reported</td><td>2023-03-28 00:00:00+0000</td></tr></table><p><b>Report Details</b></p><table class=\"grid\"><tr><td><b>Code</b></td><td><b>Value</b></td><td><b>Flags</b></td></tr><tr><td><a href=\"Observation-mii-exa-mtb-kim-musterperson-EinfacheVariante-TP53.html\"><span title=\"Codes:{http://loinc.org 69548-6}\">Genetic variant assessment</span></a></td><td><span title=\"Codes:{http://loinc.org LA9633-4}\">Present</span></td><td>Final</td></tr><tr><td><a href=\"Observation-mii-exa-mtb-kim-musterperson-EinfacheVariante-PIK3R1.html\"><span title=\"Codes:{http://loinc.org 69548-6}\">Genetic variant assessment</span></a></td><td><span title=\"Codes:{http://loinc.org LA9633-4}\">Present</span></td><td>Final</td></tr><tr><td><a href=\"Observation-mii-exa-mtb-kim-musterperson-CNVariante-CCNE1.html\"><span title=\"Codes:{http://loinc.org 69548-6}\">Genetic variant assessment</span></a></td><td><span title=\"Codes:{http://loinc.org LA9633-4}\">Present</span></td><td>Final</td></tr></table></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "GE",
          "display" : "Genetics"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "51969-4",
          "display" : "Genetic analysis report"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "issued" : "2023-03-28T00:00:00.000Z",
      "specimen" : [{
        "reference" : "Specimen/PatientKimMusterperson-AscitesSpecimen-2"
      }],
      "result" : [{
        "reference" : "Observation/mii-exa-mtb-kim-musterperson-EinfacheVariante-TP53"
      },
      {
        "reference" : "Observation/mii-exa-mtb-kim-musterperson-EinfacheVariante-PIK3R1"
      },
      {
        "reference" : "Observation/mii-exa-mtb-kim-musterperson-CNVariante-CCNE1"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "DiagnosticReport/mii-exa-mtb-kim-musterperson-ngs-bericht"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Procedure/mii-exa-mtb-kim-musterperson-genomic-study",
    "resource" : {
      "resourceType" : "Procedure",
      "id" : "mii-exa-mtb-kim-musterperson-genomic-study",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-genomic-study|2026.0.1"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Procedure_mii-exa-mtb-kim-musterperson-genomic-study\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Procedure mii-exa-mtb-kim-musterperson-genomic-study</b></p><a name=\"mii-exa-mtb-kim-musterperson-genomic-study\"> </a><a name=\"hcmii-exa-mtb-kim-musterperson-genomic-study\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-genomic-study.html\">MII PR MTB Genomic Study</a> version: 2026.0.1</p></div><p><b>Genomic Study Analysis Extension</b>: <a href=\"Procedure-mii-exa-mtb-kim-musterperson-genomic-study-analysis-1.html\">Procedure: extension = Next-Generation (NGS)/Massively parallel sequencing (MPS),SNV,SNV,GRCh38; status = completed; category = Laboratory</a></p><p><b>Genomic Study Analysis Extension</b>: <a href=\"Procedure-mii-exa-mtb-kim-musterperson-genomic-study-analysis-2.html\">Procedure: status = completed; category = Laboratory</a></p><p><b>Genomic Study Analysis Extension</b>: <a href=\"Procedure-mii-exa-mtb-kim-musterperson-genomic-study-analysis-3.html\">Procedure: extension = Immunohistochemistry; status = completed; category = Laboratory</a></p><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p></div>"
      },
      "extension" : [{
        "url" : "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-ext",
        "valueReference" : {
          "reference" : "Procedure/mii-exa-mtb-kim-musterperson-genomic-study-analysis-1"
        }
      },
      {
        "url" : "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-ext",
        "valueReference" : {
          "reference" : "Procedure/mii-exa-mtb-kim-musterperson-genomic-study-analysis-2"
        }
      },
      {
        "url" : "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-ext",
        "valueReference" : {
          "reference" : "Procedure/mii-exa-mtb-kim-musterperson-genomic-study-analysis-3"
        }
      }],
      "status" : "completed",
      "category" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Procedure/mii-exa-mtb-kim-musterperson-genomic-study"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Procedure/mii-exa-mtb-kim-musterperson-genomic-study-analysis-1",
    "resource" : {
      "resourceType" : "Procedure",
      "id" : "mii-exa-mtb-kim-musterperson-genomic-study-analysis-1",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-genomic-study-analysis|2026.0.1"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Procedure_mii-exa-mtb-kim-musterperson-genomic-study-analysis-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Procedure mii-exa-mtb-kim-musterperson-genomic-study-analysis-1</b></p><a name=\"mii-exa-mtb-kim-musterperson-genomic-study-analysis-1\"> </a><a name=\"hcmii-exa-mtb-kim-musterperson-genomic-study-analysis-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-genomic-study-analysis.html\">MII PR MTB Genomic Study Analysis</a> version: 2026.0.1</p></div><p><b>Genomic Study Analysis Method Type</b>: <span title=\"Codes:{http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/genomic-study-method-type-cs ngs-mps}\">Next-Generation (NGS)/Massively parallel sequencing (MPS)</span></p><p><b>Genomic Study Analysis Change Type</b>: <span title=\"Codes:{http://www.sequenceontology.org SO:0001483}\">SNV</span></p><p><b>Genomic Study Analysis Genome Build</b>: <span title=\"Codes:{http://loinc.org LA26806-2}\">GRCh38</span></p><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p></div>"
      },
      "extension" : [{
        "url" : "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-method-type",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/genomic-study-method-type-cs",
            "code" : "ngs-mps",
            "display" : "Next-Generation (NGS)/Massively parallel sequencing (MPS)"
          }]
        }
      },
      {
        "url" : "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-change-type",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://www.sequenceontology.org",
            "code" : "SO:0001483",
            "display" : "SNV"
          }]
        }
      },
      {
        "url" : "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-genome-build",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "LA26806-2",
            "display" : "GRCh38"
          }]
        }
      }],
      "status" : "completed",
      "category" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Procedure/mii-exa-mtb-kim-musterperson-genomic-study-analysis-1"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Procedure/mii-exa-mtb-kim-musterperson-genomic-study-analysis-2",
    "resource" : {
      "resourceType" : "Procedure",
      "id" : "mii-exa-mtb-kim-musterperson-genomic-study-analysis-2",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-genomic-study-analysis|2026.0.1"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Procedure_mii-exa-mtb-kim-musterperson-genomic-study-analysis-2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Procedure mii-exa-mtb-kim-musterperson-genomic-study-analysis-2</b></p><a name=\"mii-exa-mtb-kim-musterperson-genomic-study-analysis-2\"> </a><a name=\"hcmii-exa-mtb-kim-musterperson-genomic-study-analysis-2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-genomic-study-analysis.html\">MII PR MTB Genomic Study Analysis</a> version: 2026.0.1</p></div><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p></div>"
      },
      "status" : "completed",
      "category" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Procedure/mii-exa-mtb-kim-musterperson-genomic-study-analysis-2"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Procedure/mii-exa-mtb-kim-musterperson-genomic-study-analysis-3",
    "resource" : {
      "resourceType" : "Procedure",
      "id" : "mii-exa-mtb-kim-musterperson-genomic-study-analysis-3",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-genomic-study-analysis|2026.0.1"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Procedure_mii-exa-mtb-kim-musterperson-genomic-study-analysis-3\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Procedure mii-exa-mtb-kim-musterperson-genomic-study-analysis-3</b></p><a name=\"mii-exa-mtb-kim-musterperson-genomic-study-analysis-3\"> </a><a name=\"hcmii-exa-mtb-kim-musterperson-genomic-study-analysis-3\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-genomic-study-analysis.html\">MII PR MTB Genomic Study Analysis</a> version: 2026.0.1</p></div><p><b>Genomic Study Analysis Method Type</b>: <span title=\"Codes:{http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/genomic-study-method-type-cs immunohistochemistry}\">Immunohistochemistry</span></p><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p></div>"
      },
      "extension" : [{
        "url" : "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-method-type",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/genomic-study-method-type-cs",
            "code" : "immunohistochemistry",
            "display" : "Immunohistochemistry"
          }]
        }
      }],
      "status" : "completed",
      "category" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Procedure/mii-exa-mtb-kim-musterperson-genomic-study-analysis-3"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/mii-exa-mtb-kim-musterperson-EinfacheVariante-TP53",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-mtb-kim-musterperson-EinfacheVariante-TP53",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-einfache-variante|2026.0.1"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-mtb-kim-musterperson-EinfacheVariante-TP53\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-mtb-kim-musterperson-EinfacheVariante-TP53</b></p><a name=\"mii-exa-mtb-kim-musterperson-EinfacheVariante-TP53\"> </a><a name=\"hcmii-exa-mtb-kim-musterperson-EinfacheVariante-TP53\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-einfache-variante.html\">MII PR MTB Einfache Variante</a> version: 2026.0.1</p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 GE}\">Genetik</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 69548-6}\">Genetic variant assessment</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>value</b>: <span title=\"Codes:{http://loinc.org LA9633-4}\">Present</span></p><blockquote><p><b>component</b></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 48018-6}\">Gene studied [ID]</span></p><p><b>value</b>: <span title=\"Codes:{http://www.genenames.org/geneId HGNC:11998}\">TP53</span></p></blockquote><blockquote><p><b>component</b></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 48005-3}\">Amino acid change (pHGVS)</span></p><p><b>value</b>: <span title=\"Codes:{http://varnomen.hgvs.org NP_000537.3:p.Arg213Ter}\">NP_000537.3:p.Arg213Ter</span></p></blockquote></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory",
          "display" : "Laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "GE"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "69548-6",
          "display" : "Genetic variant assessment"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "LA9633-4",
          "display" : "Present"
        }]
      },
      "component" : [{
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "48018-6",
            "display" : "Gene studied [ID]"
          }]
        },
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://www.genenames.org/geneId",
            "code" : "HGNC:11998",
            "display" : "TP53"
          }]
        }
      },
      {
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "48005-3",
            "display" : "Amino acid change (pHGVS)"
          }]
        },
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://varnomen.hgvs.org",
            "code" : "NP_000537.3:p.Arg213Ter"
          }]
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-mtb-kim-musterperson-EinfacheVariante-TP53"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/mii-exa-mtb-kim-musterperson-DiagnostischeImplikation-TP53",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-mtb-kim-musterperson-DiagnostischeImplikation-TP53",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-diagnostische-implikation|2026.0.1"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-mtb-kim-musterperson-DiagnostischeImplikation-TP53\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-mtb-kim-musterperson-DiagnostischeImplikation-TP53</b></p><a name=\"mii-exa-mtb-kim-musterperson-DiagnostischeImplikation-TP53\"> </a><a name=\"hcmii-exa-mtb-kim-musterperson-DiagnostischeImplikation-TP53\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-diagnostische-implikation.html\">MII PR MTB Diagnostische Implikation</a> version: 2026.0.1</p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 GE}\">Genetik</span></p><p><b>code</b>: <span title=\"Codes:{http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs diagnostic-implication}\">Diagnostic Implication</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>derivedFrom</b>: <a href=\"Observation-mii-exa-mtb-kim-musterperson-EinfacheVariante-TP53.html\">Observation Genetic variant assessment</a></p><h3>Components</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Code</b></td><td><b>Value[x]</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://loinc.org 53037-8}\">Genetic variation clinical significance [Imp]</span></td><td><span title=\"Codes:{http://loinc.org LA6668-3}\">Pathogenic</span></td></tr></table></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory",
          "display" : "Laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "GE"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs",
          "code" : "diagnostic-implication",
          "display" : "Diagnostic Implication"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "derivedFrom" : [{
        "reference" : "Observation/mii-exa-mtb-kim-musterperson-EinfacheVariante-TP53"
      }],
      "component" : [{
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "53037-8"
          }]
        },
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "LA6668-3",
            "display" : "Pathogenic"
          }]
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-mtb-kim-musterperson-DiagnostischeImplikation-TP53"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/mii-exa-mtb-kim-musterperson-EinfacheVariante-PIK3R1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-mtb-kim-musterperson-EinfacheVariante-PIK3R1",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-einfache-variante|2026.0.1"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-mtb-kim-musterperson-EinfacheVariante-PIK3R1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-mtb-kim-musterperson-EinfacheVariante-PIK3R1</b></p><a name=\"mii-exa-mtb-kim-musterperson-EinfacheVariante-PIK3R1\"> </a><a name=\"hcmii-exa-mtb-kim-musterperson-EinfacheVariante-PIK3R1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-einfache-variante.html\">MII PR MTB Einfache Variante</a> version: 2026.0.1</p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 GE}\">Genetik</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 69548-6}\">Genetic variant assessment</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>value</b>: <span title=\"Codes:{http://loinc.org LA9633-4}\">Present</span></p><blockquote><p><b>component</b></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 48018-6}\">Gene studied [ID]</span></p><p><b>value</b>: <span title=\"Codes:{http://www.genenames.org/geneId HGNC:8979}\">PIK3R1</span></p></blockquote><blockquote><p><b>component</b></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 48005-3}\">Amino acid change (pHGVS)</span></p><p><b>value</b>: <span title=\"Codes:{http://varnomen.hgvs.org NM_181523.2:p.E160*}\">NM_181523.2:p.E160*</span></p></blockquote></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory",
          "display" : "Laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "GE"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "69548-6",
          "display" : "Genetic variant assessment"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "LA9633-4",
          "display" : "Present"
        }]
      },
      "component" : [{
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "48018-6",
            "display" : "Gene studied [ID]"
          }]
        },
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://www.genenames.org/geneId",
            "code" : "HGNC:8979",
            "display" : "PIK3R1"
          }]
        }
      },
      {
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "48005-3",
            "display" : "Amino acid change (pHGVS)"
          }]
        },
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://varnomen.hgvs.org",
            "code" : "NM_181523.2:p.E160*"
          }]
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-mtb-kim-musterperson-EinfacheVariante-PIK3R1"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/mii-exa-mtb-kim-musterperson-TherapeutischeImplikation-PIK3R1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-mtb-kim-musterperson-TherapeutischeImplikation-PIK3R1",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapeutische-implikation|2026.0.1"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-mtb-kim-musterperson-TherapeutischeImplikation-PIK3R1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-mtb-kim-musterperson-TherapeutischeImplikation-PIK3R1</b></p><a name=\"mii-exa-mtb-kim-musterperson-TherapeutischeImplikation-PIK3R1\"> </a><a name=\"hcmii-exa-mtb-kim-musterperson-TherapeutischeImplikation-PIK3R1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-therapeutische-implikation.html\">MII PR MTB Therapeutische Implikation</a> version: 2026.0.1</p></div><p><b>MII EX MTB Empfehlung Evidenzgraduierung</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-empfehlung-evidenzgrad m3}\">m3</span></p><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 GE}\">Genetik</span></p><p><b>code</b>: <span title=\"Codes:{http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs therapeutic-implication}\">Therapeutic Implication</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>derivedFrom</b>: <a href=\"Observation-mii-exa-mtb-kim-musterperson-EinfacheVariante-PIK3R1.html\">Observation Genetic variant assessment</a></p><blockquote><p><b>component</b></p><p><b>code</b>: <span title=\"Codes:{http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs conclusion-string}\">Conclusion Text</span></p><p><b>value</b>: Ausweislich praeklinischer Daten liegt ein Ansprechen auf MEK-Inhibition nahe (PMID: 31209687, EL m3).</p></blockquote><blockquote><p><b>component</b></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 51963-7}\">Medication assessed [ID]</span></p><p><b>value</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/atc L01EE}\">Mitogen-aktivierte Proteinkinase (MEK)-Inhibitoren</span></p></blockquote></div>"
      },
      "extension" : [{
        "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-evidenzgraduierung",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-empfehlung-evidenzgrad",
            "code" : "m3"
          }]
        }
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory",
          "display" : "Laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "GE"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs",
          "code" : "therapeutic-implication",
          "display" : "Therapeutic Implication"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "derivedFrom" : [{
        "reference" : "Observation/mii-exa-mtb-kim-musterperson-EinfacheVariante-PIK3R1"
      }],
      "component" : [{
        "code" : {
          "coding" : [{
            "system" : "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs",
            "code" : "conclusion-string"
          }]
        },
        "valueString" : "Ausweislich praeklinischer Daten liegt ein Ansprechen auf MEK-Inhibition nahe (PMID: 31209687, EL m3)."
      },
      {
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "51963-7",
            "display" : "Medication assessed [ID]"
          }]
        },
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://fhir.de/CodeSystem/bfarm/atc",
            "code" : "L01EE",
            "display" : "Mitogen-aktivierte Proteinkinase (MEK)-Inhibitoren"
          }]
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-mtb-kim-musterperson-TherapeutischeImplikation-PIK3R1"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/mii-exa-mtb-kim-musterperson-CNVariante-CCNE1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-mtb-kim-musterperson-CNVariante-CCNE1",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-copy-number-variant|2026.0.1"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-mtb-kim-musterperson-CNVariante-CCNE1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-mtb-kim-musterperson-CNVariante-CCNE1</b></p><a name=\"mii-exa-mtb-kim-musterperson-CNVariante-CCNE1\"> </a><a name=\"hcmii-exa-mtb-kim-musterperson-CNVariante-CCNE1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-copy-number-variant.html\">MII PR MTB Copy Number Variant</a> version: 2026.0.1</p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0074 GE}\">Genetik</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 69548-6}\">Genetic variant assessment</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>value</b>: <span title=\"Codes:{http://loinc.org LA9633-4}\">Present</span></p><blockquote><p><b>component</b></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 48018-6}\">Gene studied [ID]</span></p><p><b>value</b>: <span title=\"Codes:{http://www.genenames.org/geneId HGNC:1589}\">CCNE1</span></p></blockquote><blockquote><p><b>component</b></p><p><b>code</b>: <span title=\"Codes:{http://bwhc.de/mtb/genetics-copy-number-variant type}\">type</span></p><p><b>value</b>: <span title=\"Codes:{http://bwhc.de/mtb/genetics-copy-number-variant high-level-gain}\">high-level-gain</span></p></blockquote><blockquote><p><b>component</b></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 82155-3}\">Genomic structural variant copy number</span></p><p><b>value</b>: 7 1<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code1 = '1')</span></p></blockquote></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory",
          "display" : "Laboratory"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0074",
          "code" : "GE"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "69548-6",
          "display" : "Genetic variant assessment"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "LA9633-4",
          "display" : "Present"
        }]
      },
      "component" : [{
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "48018-6",
            "display" : "Gene studied [ID]"
          }]
        },
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://www.genenames.org/geneId",
            "code" : "HGNC:1589",
            "display" : "CCNE1"
          }]
        }
      },
      {
        "code" : {
          "coding" : [{
            "system" : "http://bwhc.de/mtb/genetics-copy-number-variant",
            "code" : "type"
          }]
        },
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://bwhc.de/mtb/genetics-copy-number-variant",
            "code" : "high-level-gain",
            "display" : "high-level-gain"
          }]
        }
      },
      {
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "82155-3",
            "display" : "Genomic structural variant copy number"
          }]
        },
        "valueQuantity" : {
          "value" : 7,
          "system" : "http://unitsofmeasure.org",
          "code" : "1"
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-mtb-kim-musterperson-CNVariante-CCNE1"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/ServiceRequest/mii-exa-mtb-study-request-cldn6",
    "resource" : {
      "resourceType" : "ServiceRequest",
      "id" : "mii-exa-mtb-study-request-cldn6",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-studieneinschluss-anfrage|2026.0.1"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ServiceRequest_mii-exa-mtb-study-request-cldn6\"> </a><p class=\"res-header-id\"><b>Generated Narrative: ServiceRequest mii-exa-mtb-study-request-cldn6</b></p><a name=\"mii-exa-mtb-study-request-cldn6\"> </a><a name=\"hcmii-exa-mtb-study-request-cldn6\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-studieneinschluss-anfrage.html\">MII PR MTB Studieneinschluss Anfrage</a> version: 2026.0.1</p></div><p><b>MII EX MTB Empfehlung Priorität</b>: 2.1</p><p><b>MII EX MTB Empfehlung Publikation</b>: <code>http://www.ncbi.nlm.nih.gov/pubmed</code>/37872225</p><p><b>status</b>: Draft</p><p><b>intent</b>: Proposal</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 110465008}\">Clinical trial (procedure)</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 702475000}\">Referral to clinical trial (procedure)</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>supportingInfo</b>: <a href=\"ResearchStudy-mii-exa-mtb-study-cldn6.html\">ResearchStudy: identifier = https://www.medizininformatik-initiative.de/fhir/modul-mtb/sid/nct#MII_NS_MTB_NCT#04503278; status = active; primaryPurposeType = treatment; phase = phase-1; condition = Solid tumor configuration; keyword = ; period = 2020-09-16 --&gt; 2040-01</a></p></div>"
      },
      "extension" : [{
        "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-prioritaet",
        "valueDecimal" : 2.1
      },
      {
        "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-publikation",
        "valueIdentifier" : {
          "system" : "http://www.ncbi.nlm.nih.gov/pubmed",
          "value" : "37872225"
        }
      }],
      "status" : "draft",
      "intent" : "proposal",
      "category" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "110465008",
          "display" : "Clinical trial (procedure)"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "702475000",
          "display" : "Referral to clinical trial (procedure)"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "supportingInfo" : [{
        "reference" : "ResearchStudy/mii-exa-mtb-study-cldn6"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "ServiceRequest/mii-exa-mtb-study-request-cldn6"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/ResearchStudy/mii-exa-mtb-study-cldn6",
    "resource" : {
      "resourceType" : "ResearchStudy",
      "id" : "mii-exa-mtb-study-cldn6",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-studie|2026.0.1"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ResearchStudy_mii-exa-mtb-study-cldn6\"> </a><p class=\"res-header-id\"><b>Generated Narrative: ResearchStudy mii-exa-mtb-study-cldn6</b></p><a name=\"mii-exa-mtb-study-cldn6\"> </a><a name=\"hcmii-exa-mtb-study-cldn6\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-studie.html\">MII PR MTB Studie</a> version: 2026.0.1</p></div><p><b>identifier</b>: <a href=\"NamingSystem-mii-ns-mtb-nct.html\" title=\"NamingSystem für Identifikatoren des Nationalen Centrums für Tumorerkrankungen (NCT)\">MII_NS_MTB_NCT</a>/04503278</p><p><b>status</b>: Active</p><p><b>primaryPurposeType</b>: <span title=\"Codes:\">treatment</span></p><p><b>phase</b>: <span title=\"Codes:\">phase-1</span></p><p><b>condition</b>: <span title=\"Codes:{http://snomed.info/sct 369757002}\">Solid tumor configuration</span></p><p><b>keyword</b>: <span title=\"Codes:\">Non-small cell lung cancer (NSCLC)</span></p><p><b>enrollment</b>: <a href=\"Group-mii-exa-mtb-study-cldn6-eligibility-criteria.html\">Group: type = person; actual = false; quantity = 145</a></p><p><b>period</b>: 2020-09-16 --&gt; 2040-01</p><p><b>sponsor</b>: <a href=\"Organization-mii-exa-mtb-study-sponsor-biontech.html\">Organization BioNTech Cell &amp; Gene Therapies GmbH</a></p><p><b>principalInvestigator</b>: <a href=\"PractitionerRole-mii-exa-mtb-study-investigator-biontech.html\">PractitionerRole Study coordinator</a></p><p><b>site</b>: <a href=\"Location-mii-exa-mtb-study-cldn6-location-11.html\">Location Karolinska Comprehensive Cancer Center Cancerstudieenheten Huddinge Karolinska Universitetssjukhuset</a></p><blockquote><p><b>arm</b></p><p><b>name</b>: Part 1 - CLDN6 CAR-T: Dose escalation in lymphodepleted patients until the MTD and/or RP2D</p></blockquote><blockquote><p><b>arm</b></p><p><b>name</b>: Part 2 Vaccine-modulated - CLDN6 uRNA-LPX/CLDN6 modRNA-LPX: Dose escalation until the MTD and/or RP2D</p></blockquote><blockquote><p><b>objective</b></p><p><b>name</b>: Occurrence of treatment-emergent adverse events (TEAEs) including ≥ Grade 3, serious, fatal TEAEs by relationship</p><p><b>type</b>: <span title=\"Codes:\">primary</span></p></blockquote><blockquote><p><b>objective</b></p><p><b>name</b>: Occurrence of dose reduction and discontinuation of investigational medicinal product (IMP) due to TEAEs</p><p><b>type</b>: <span title=\"Codes:\">primary</span></p></blockquote><blockquote><p><b>objective</b></p><p><b>name</b>: Occurrence of dose-limiting toxicity (DLT) during the DLT evaluation period</p><p><b>type</b>: <span title=\"Codes:\">primary</span></p></blockquote><blockquote><p><b>objective</b></p><p><b>name</b>: Change from baseline in the levels and kinetics of soluble immune factors measured by cytokine multiplex assay</p><p><b>type</b>: <span title=\"Codes:\">secondary</span></p></blockquote><blockquote><p><b>objective</b></p><p><b>name</b>: Objective response rate (ORR) defined as the proportion of patients in whom a complete response (CR) or partial response (PR) (per response evaluation criteria in solid tumors [RECIST 1.1]) is observed as best overall response</p><p><b>type</b>: <span title=\"Codes:\">secondary</span></p></blockquote><blockquote><p><b>objective</b></p><p><b>name</b>: Disease control rate (DCR) defined as the proportion of patients in whom a CR or PR or stable disease (SD) (per RECIST 1.1, SD assessed at least 6 weeks after the first dose) is observed as best overall response</p><p><b>type</b>: <span title=\"Codes:\">secondary</span></p></blockquote><blockquote><p><b>objective</b></p><p><b>name</b>: Duration of response (DOR) defined as the time from first objective response (CR or PR per RECIST 1.1) to first occurrence of objective progressive disease (PD) per RECIST 1.1/recurrence or death from any cause, whichever occurs first</p><p><b>type</b>: <span title=\"Codes:\">secondary</span></p></blockquote></div>"
      },
      "identifier" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/modul-mtb/sid/nct",
        "value" : "04503278"
      }],
      "status" : "active",
      "primaryPurposeType" : {
        "coding" : [{
          "code" : "treatment"
        }]
      },
      "phase" : {
        "coding" : [{
          "code" : "phase-1"
        }]
      },
      "condition" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "369757002",
          "display" : "Solid tumor configuration"
        }]
      }],
      "keyword" : [{
        "text" : "Non-small cell lung cancer (NSCLC)"
      }],
      "enrollment" : [{
        "reference" : "Group/mii-exa-mtb-study-cldn6-eligibility-criteria"
      }],
      "period" : {
        "start" : "2020-09-16",
        "end" : "2040-01"
      },
      "sponsor" : {
        "reference" : "Organization/mii-exa-mtb-study-sponsor-biontech"
      },
      "principalInvestigator" : {
        "reference" : "PractitionerRole/mii-exa-mtb-study-investigator-biontech"
      },
      "site" : [{
        "reference" : "Location/mii-exa-mtb-study-cldn6-location-11"
      }],
      "arm" : [{
        "name" : "Part 1 - CLDN6 CAR-T: Dose escalation in lymphodepleted patients until the MTD and/or RP2D"
      },
      {
        "name" : "Part 2 Vaccine-modulated - CLDN6 uRNA-LPX/CLDN6 modRNA-LPX: Dose escalation until the MTD and/or RP2D"
      }],
      "objective" : [{
        "name" : "Occurrence of treatment-emergent adverse events (TEAEs) including ≥ Grade 3, serious, fatal TEAEs by relationship",
        "type" : {
          "coding" : [{
            "code" : "primary"
          }]
        }
      },
      {
        "name" : "Occurrence of dose reduction and discontinuation of investigational medicinal product (IMP) due to TEAEs",
        "type" : {
          "coding" : [{
            "code" : "primary"
          }]
        }
      },
      {
        "name" : "Occurrence of dose-limiting toxicity (DLT) during the DLT evaluation period",
        "type" : {
          "coding" : [{
            "code" : "primary"
          }]
        }
      },
      {
        "name" : "Change from baseline in the levels and kinetics of soluble immune factors measured by cytokine multiplex assay",
        "type" : {
          "coding" : [{
            "code" : "secondary"
          }]
        }
      },
      {
        "name" : "Objective response rate (ORR) defined as the proportion of patients in whom a complete response (CR) or partial response (PR) (per response evaluation criteria in solid tumors [RECIST 1.1]) is observed as best overall response",
        "type" : {
          "coding" : [{
            "code" : "secondary"
          }]
        }
      },
      {
        "name" : "Disease control rate (DCR) defined as the proportion of patients in whom a CR or PR or stable disease (SD) (per RECIST 1.1, SD assessed at least 6 weeks after the first dose) is observed as best overall response",
        "type" : {
          "coding" : [{
            "code" : "secondary"
          }]
        }
      },
      {
        "name" : "Duration of response (DOR) defined as the time from first objective response (CR or PR per RECIST 1.1) to first occurrence of objective progressive disease (PD) per RECIST 1.1/recurrence or death from any cause, whichever occurs first",
        "type" : {
          "coding" : [{
            "code" : "secondary"
          }]
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "ResearchStudy/mii-exa-mtb-study-cldn6"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Group/mii-exa-mtb-study-cldn6-eligibility-criteria",
    "resource" : {
      "resourceType" : "Group",
      "id" : "mii-exa-mtb-study-cldn6-eligibility-criteria",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Group_mii-exa-mtb-study-cldn6-eligibility-criteria\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Group mii-exa-mtb-study-cldn6-eligibility-criteria</b></p><a name=\"mii-exa-mtb-study-cldn6-eligibility-criteria\"> </a><a name=\"hcmii-exa-mtb-study-cldn6-eligibility-criteria\"> </a><p><b>type</b>: Person</p><p><b>actual</b>: false</p><p><b>quantity</b>: 145</p><blockquote><p><b>characteristic</b></p><p><b>code</b>: <span title=\"Codes:\">Eligibility Criteria</span></p><p><b>value</b>: Inclusion Criteria:\n\n* Each patient enrolled in the trial must have CLDN6-positive tumor regardless of tumor histology defined as ≥ 50% of tumor cells expressing ≥ 2+ CLDN6 protein using a semi-quantitative immunohistochemistry (IHC) assay in a central laboratory for specific detection of CLDN6 protein expression in formalin-fixed, paraffin-embedded (FFPE) neoplastic tissues.\n* Availability of a FFPE tumor tissue sample. FFPE can be from an archival tumor tissue sample, and it should be from the most recent tumor tissue obtained. If this is not available, patient must be biopsied for CLDN6 staining.\n* Must have histological documentation of the original primary tumor via a pathology report.\n* Must have measurable disease per RECIST 1.1 (except for germ cell tumors, where patients can be evaluated according to Cancer-Antigen (CA)-125, Alpha-fetoprotein or human chorionic gonadotropin \\[as applicable\\] or ovarian cancer, where patients can be evaluated according to CA-125. The pre-treatment sample must be at least twice the upper limit of normal).\n* Must have a histologically confirmed solid tumor that is metastatic or unresectable and for which there is no available standard therapy likely to confer clinical benefit, or patient who is not a candidate for such available therapy.\n* Must be ≥ 18 years of age at the time the pre-screening informed consent is signed.\n* Must sign an informed consent form (ICF) indicating that he or she understands the purpose of and procedures required for the trial and are willing to participate in the trial prior to any trial-related assessments or procedures.\n* Must have an Eastern Cooperative Oncology Group performance status of 0 to 1.\n* Must have adequate coagulation function at screening as defined in the protocol.\n* Must have adequate hematologic function at screening as defined in the protocol.\n* Must have adequate hepatic function at screening as defined in the protocol.\n* Must have adequate renal function at screening as defined in the protocol.\n* Must be able to attend trial visits as required by the protocol.\n* Women of childbearing potential (WOCBP) must have a negative serum (beta-human chorionic gonadotropin) test/value at screening. Patients who are post-menopausal or permanently sterilized can be considered as not having reproductive potential.\n* WOCBP must agree not to donate eggs (ova, oocytes) for the purposes of assisted reproduction during the entire trial and thereafter.\n* WOCBP and men that are sexually active with a WOCBP and have not had a vasectomy must agree to use highly effective birth control method(s), as defined in the protocol. True abstinence is an acceptable alternative to the use of contraception.\n* Men must agree not to father a child or donate sperm, and WOCBP must agree not to become pregnant during the trial and for at least 12 months after the CLDN6 CAR-T infusion or CLDN6 RNA-LPX treatment.\n\nFor Part 2 only:\n\n* Histologically or cytologically confirmed solid tumor fulfilling inclusion criteria 1-4 that is metastatic or unresectable, and for whom there is no available standard therapy likely to confer clinical benefit, or patient who is not a candidate for such available therapy.\n\nExclusion Criteria:\n\n* Has received prior CAR-T therapy, except CLDN6 CAR-T therapy.\n* Has received vaccination with live virus vaccines within 6 weeks prior to the start of lymphodepletion (LD).\n* Receives concurrent systemic (oral or i.v.) steroid therapy \\&gt; 10 mg prednisolone daily, or its equivalent, for an underlying condition.\n* Has side effects of any prior therapy or procedures for any medical condition not recovered to national cancer institute common terminology criteria for adverse events (CTCAE v.5) Grade ≤ 1.\n\nMedical conditions:\n\n* Current evidence of new or growing brain or spinal metastases during screening. Patients with known brain or spinal metastases may be eligible if they:\n\n  1. Have had radiotherapy or another appropriate therapy for the brain or spinal metastases,\n  2. Have no neurological symptoms,\n  3. Have stable brain or spinal disease on the computer tomography or magnetic resonance imaging scan within 4 weeks before signing of the ICF,\n  4. Are not undergoing acute corticosteroid therapy or steroid taper. Chronic steroid therapy is acceptable provided that the dose is stable for the last 14 days prior to screening (≤ 10 mg prednisolone daily or equivalent),\n  5. Do not require steroid therapy within 7 days before the first dose of CLDN6 CAR-T,\n  6. Do not have anticipated imminent fracture or cord compression due to spinal bone metastases.\n* Has history of epilepsy. Isolated seizures in the past or febrile seizures in childhood are permitted; has a history of a cerebrovascular accident or transient ischemic attack less than 6 months ago.\n* Pericardial effusion requiring any drainage is excluded.\n* Has an active autoimmune disease including but not limited to inflammatory bowel disease, systemic lupus erythematosus, ankylosing spondylitis, scleroderma, or multiple sclerosis. Has any active immunologic disorder requiring immunosuppression with steroids or other immunosuppressive agents with the exception of patients with isolated vitiligo, resolved childhood asthma or atopic dermatitis, controlled hypoadrenalism or hypopituitarism, and euthyroid patients with a history of Grave's disease. Patients with controlled hyperthyroidism must be negative for thyroglobulin, thyroid peroxidase antibodies, and thyroid-stimulating immunoglobulin prior to trial drug administration.\n* Seropositivity for human immunodeficiency virus.\n* Known history/positive serology for hepatitis B requiring active antiviral therapy (unless immune due to vaccination or resolved natural infection or unless passive immunization due to immunoglobulin therapy). Patients with positive serology must have hepatitis B virus viral load below the limit of quantification.\n* Active hepatitis C virus (HCV) infection; patients who have completed curative antiviral treatment with HCV viral load below the limit of quantification are allowed.\n* Has a known hypersensitivity to a component of CLDN6 CAR-T or CLDN6 RNA-LPX cancer vaccine drug product, or another similar compound.\n* Only for patients recruited for Part 2 with LD chemotherapy (CLDN6 CAR-T + CLDN6 RNA-LPX with LD chemotherapy): history of severe immediate hypersensitivity reaction to LD chemotherapy consisting of cyclophosphamide or fludarabine.\n* Has a history of another primary cancer within the 2 years prior to enrollment except for the following: Non-melanoma skin cancer, cervical carcinoma in situ, superficial bladder cancer, prostate cancer with currently undetectable prostate specific antigen, or other non-metastatic carcinoma that has been in complete remission without treatment for more than 2 years.\n* Receipt of allogenic stem cell transplantation in the 5 years prior to enrollment into the trial.\n* Patients with acute or chronic graft versus host disease.\n\nOther comorbidities:\n\n* Has abnormal electrocardiograms that are clinically significant, such as QT prolongation.\n* In the opinion of the Investigator, has any concurrent conditions that could pose an undue medical hazard or interfere with the interpretation of the trial results; these conditions include, but are not limited to:\n\n  1. Ongoing or active infection requiring antibiotic/antiviral/antifungal therapy\n  2. Concurrent congestive heart failure (New York Heart Association Functional Classification Class III or IV)\n  3. Concurrent unstable angina\n  4. Concurrent cardiac arrhythmia requiring treatment (excluding asymptomatic atrial fibrillation)\n  5. Acute coronary syndrome within the previous 6 months\n  6. Significant pulmonary disease (shortness of breath at rest or on mild exertion) for example due concurrent severe obstructive pulmonary disease.\n* Has a cognitive, psychological or psychosocial impediment that would impair the ability of the patient to receive therapy according to the protocol or adversely affect the ability of the patient to comply with the informed consent process, protocol, or protocol-required visits and procedures.\n* Is pregnant or breastfeeding</p><p><b>exclude</b>: false</p></blockquote><blockquote><p><b>characteristic</b></p><p><b>code</b>: <span title=\"Codes:\">Accepts Healthy Volunteers</span></p><p><b>value</b>: false</p><p><b>exclude</b>: false</p></blockquote><blockquote><p><b>characteristic</b></p><p><b>code</b>: <span title=\"Codes:\">Age</span></p><p><b>value</b>: 18-? year</p><p><b>exclude</b>: false</p></blockquote><blockquote><p><b>characteristic</b></p><p><b>code</b>: <span title=\"Codes:\">Age Group</span></p><p><b>value</b>: <a href=\"Group-mii-exa-mtb-study-cldn6-eligibility-criteria-age-groups.html\">Group: type = person; actual = false</a></p><p><b>exclude</b>: false</p></blockquote></div>"
      },
      "type" : "person",
      "actual" : false,
      "quantity" : 145,
      "characteristic" : [{
        "code" : {
          "text" : "Eligibility Criteria"
        },
        "valueReference" : {
          "display" : "Inclusion Criteria:\n\n* Each patient enrolled in the trial must have CLDN6-positive tumor regardless of tumor histology defined as ≥ 50% of tumor cells expressing ≥ 2+ CLDN6 protein using a semi-quantitative immunohistochemistry (IHC) assay in a central laboratory for specific detection of CLDN6 protein expression in formalin-fixed, paraffin-embedded (FFPE) neoplastic tissues.\n* Availability of a FFPE tumor tissue sample. FFPE can be from an archival tumor tissue sample, and it should be from the most recent tumor tissue obtained. If this is not available, patient must be biopsied for CLDN6 staining.\n* Must have histological documentation of the original primary tumor via a pathology report.\n* Must have measurable disease per RECIST 1.1 (except for germ cell tumors, where patients can be evaluated according to Cancer-Antigen (CA)-125, Alpha-fetoprotein or human chorionic gonadotropin \\[as applicable\\] or ovarian cancer, where patients can be evaluated according to CA-125. The pre-treatment sample must be at least twice the upper limit of normal).\n* Must have a histologically confirmed solid tumor that is metastatic or unresectable and for which there is no available standard therapy likely to confer clinical benefit, or patient who is not a candidate for such available therapy.\n* Must be ≥ 18 years of age at the time the pre-screening informed consent is signed.\n* Must sign an informed consent form (ICF) indicating that he or she understands the purpose of and procedures required for the trial and are willing to participate in the trial prior to any trial-related assessments or procedures.\n* Must have an Eastern Cooperative Oncology Group performance status of 0 to 1.\n* Must have adequate coagulation function at screening as defined in the protocol.\n* Must have adequate hematologic function at screening as defined in the protocol.\n* Must have adequate hepatic function at screening as defined in the protocol.\n* Must have adequate renal function at screening as defined in the protocol.\n* Must be able to attend trial visits as required by the protocol.\n* Women of childbearing potential (WOCBP) must have a negative serum (beta-human chorionic gonadotropin) test/value at screening. Patients who are post-menopausal or permanently sterilized can be considered as not having reproductive potential.\n* WOCBP must agree not to donate eggs (ova, oocytes) for the purposes of assisted reproduction during the entire trial and thereafter.\n* WOCBP and men that are sexually active with a WOCBP and have not had a vasectomy must agree to use highly effective birth control method(s), as defined in the protocol. True abstinence is an acceptable alternative to the use of contraception.\n* Men must agree not to father a child or donate sperm, and WOCBP must agree not to become pregnant during the trial and for at least 12 months after the CLDN6 CAR-T infusion or CLDN6 RNA-LPX treatment.\n\nFor Part 2 only:\n\n* Histologically or cytologically confirmed solid tumor fulfilling inclusion criteria 1-4 that is metastatic or unresectable, and for whom there is no available standard therapy likely to confer clinical benefit, or patient who is not a candidate for such available therapy.\n\nExclusion Criteria:\n\n* Has received prior CAR-T therapy, except CLDN6 CAR-T therapy.\n* Has received vaccination with live virus vaccines within 6 weeks prior to the start of lymphodepletion (LD).\n* Receives concurrent systemic (oral or i.v.) steroid therapy \\> 10 mg prednisolone daily, or its equivalent, for an underlying condition.\n* Has side effects of any prior therapy or procedures for any medical condition not recovered to national cancer institute common terminology criteria for adverse events (CTCAE v.5) Grade ≤ 1.\n\nMedical conditions:\n\n* Current evidence of new or growing brain or spinal metastases during screening. Patients with known brain or spinal metastases may be eligible if they:\n\n  1. Have had radiotherapy or another appropriate therapy for the brain or spinal metastases,\n  2. Have no neurological symptoms,\n  3. Have stable brain or spinal disease on the computer tomography or magnetic resonance imaging scan within 4 weeks before signing of the ICF,\n  4. Are not undergoing acute corticosteroid therapy or steroid taper. Chronic steroid therapy is acceptable provided that the dose is stable for the last 14 days prior to screening (≤ 10 mg prednisolone daily or equivalent),\n  5. Do not require steroid therapy within 7 days before the first dose of CLDN6 CAR-T,\n  6. Do not have anticipated imminent fracture or cord compression due to spinal bone metastases.\n* Has history of epilepsy. Isolated seizures in the past or febrile seizures in childhood are permitted; has a history of a cerebrovascular accident or transient ischemic attack less than 6 months ago.\n* Pericardial effusion requiring any drainage is excluded.\n* Has an active autoimmune disease including but not limited to inflammatory bowel disease, systemic lupus erythematosus, ankylosing spondylitis, scleroderma, or multiple sclerosis. Has any active immunologic disorder requiring immunosuppression with steroids or other immunosuppressive agents with the exception of patients with isolated vitiligo, resolved childhood asthma or atopic dermatitis, controlled hypoadrenalism or hypopituitarism, and euthyroid patients with a history of Grave's disease. Patients with controlled hyperthyroidism must be negative for thyroglobulin, thyroid peroxidase antibodies, and thyroid-stimulating immunoglobulin prior to trial drug administration.\n* Seropositivity for human immunodeficiency virus.\n* Known history/positive serology for hepatitis B requiring active antiviral therapy (unless immune due to vaccination or resolved natural infection or unless passive immunization due to immunoglobulin therapy). Patients with positive serology must have hepatitis B virus viral load below the limit of quantification.\n* Active hepatitis C virus (HCV) infection; patients who have completed curative antiviral treatment with HCV viral load below the limit of quantification are allowed.\n* Has a known hypersensitivity to a component of CLDN6 CAR-T or CLDN6 RNA-LPX cancer vaccine drug product, or another similar compound.\n* Only for patients recruited for Part 2 with LD chemotherapy (CLDN6 CAR-T + CLDN6 RNA-LPX with LD chemotherapy): history of severe immediate hypersensitivity reaction to LD chemotherapy consisting of cyclophosphamide or fludarabine.\n* Has a history of another primary cancer within the 2 years prior to enrollment except for the following: Non-melanoma skin cancer, cervical carcinoma in situ, superficial bladder cancer, prostate cancer with currently undetectable prostate specific antigen, or other non-metastatic carcinoma that has been in complete remission without treatment for more than 2 years.\n* Receipt of allogenic stem cell transplantation in the 5 years prior to enrollment into the trial.\n* Patients with acute or chronic graft versus host disease.\n\nOther comorbidities:\n\n* Has abnormal electrocardiograms that are clinically significant, such as QT prolongation.\n* In the opinion of the Investigator, has any concurrent conditions that could pose an undue medical hazard or interfere with the interpretation of the trial results; these conditions include, but are not limited to:\n\n  1. Ongoing or active infection requiring antibiotic/antiviral/antifungal therapy\n  2. Concurrent congestive heart failure (New York Heart Association Functional Classification Class III or IV)\n  3. Concurrent unstable angina\n  4. Concurrent cardiac arrhythmia requiring treatment (excluding asymptomatic atrial fibrillation)\n  5. Acute coronary syndrome within the previous 6 months\n  6. Significant pulmonary disease (shortness of breath at rest or on mild exertion) for example due concurrent severe obstructive pulmonary disease.\n* Has a cognitive, psychological or psychosocial impediment that would impair the ability of the patient to receive therapy according to the protocol or adversely affect the ability of the patient to comply with the informed consent process, protocol, or protocol-required visits and procedures.\n* Is pregnant or breastfeeding"
        },
        "exclude" : false
      },
      {
        "code" : {
          "text" : "Accepts Healthy Volunteers"
        },
        "valueBoolean" : false,
        "exclude" : false
      },
      {
        "code" : {
          "text" : "Age"
        },
        "valueRange" : {
          "low" : {
            "value" : 18,
            "unit" : "year",
            "system" : "http://unitsofmeasure.org",
            "code" : "a"
          }
        },
        "exclude" : false
      },
      {
        "code" : {
          "text" : "Age Group"
        },
        "valueReference" : {
          "reference" : "Group/mii-exa-mtb-study-cldn6-eligibility-criteria-age-groups"
        },
        "exclude" : false
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Group/mii-exa-mtb-study-cldn6-eligibility-criteria"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Group/mii-exa-mtb-study-cldn6-eligibility-criteria-age-groups",
    "resource" : {
      "resourceType" : "Group",
      "id" : "mii-exa-mtb-study-cldn6-eligibility-criteria-age-groups",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Group_mii-exa-mtb-study-cldn6-eligibility-criteria-age-groups\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Group mii-exa-mtb-study-cldn6-eligibility-criteria-age-groups</b></p><a name=\"mii-exa-mtb-study-cldn6-eligibility-criteria-age-groups\"> </a><a name=\"hcmii-exa-mtb-study-cldn6-eligibility-criteria-age-groups\"> </a><p><b>type</b>: Person</p><p><b>actual</b>: false</p><blockquote><p><b>characteristic</b></p><p><b>code</b>: <span title=\"Codes:\">Age Group (Adult)</span></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 41847000}\">Adulthood (qualifier value)</span></p><p><b>exclude</b>: false</p></blockquote><blockquote><p><b>characteristic</b></p><p><b>code</b>: <span title=\"Codes:\">Age Group (Older Adult)</span></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 271872005}\">Old age (qualifier value)</span></p><p><b>exclude</b>: false</p></blockquote></div>"
      },
      "type" : "person",
      "actual" : false,
      "characteristic" : [{
        "code" : {
          "text" : "Age Group (Adult)"
        },
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "41847000",
            "display" : "Adulthood (qualifier value)"
          }]
        },
        "exclude" : false
      },
      {
        "code" : {
          "text" : "Age Group (Older Adult)"
        },
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "271872005",
            "display" : "Old age (qualifier value)"
          }]
        },
        "exclude" : false
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Group/mii-exa-mtb-study-cldn6-eligibility-criteria-age-groups"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Group/mii-exa-mtb-study-cldn6-comparison-group-0",
    "resource" : {
      "resourceType" : "Group",
      "id" : "mii-exa-mtb-study-cldn6-comparison-group-0",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Group_mii-exa-mtb-study-cldn6-comparison-group-0\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Group mii-exa-mtb-study-cldn6-comparison-group-0</b></p><a name=\"mii-exa-mtb-study-cldn6-comparison-group-0\"> </a><a name=\"hcmii-exa-mtb-study-cldn6-comparison-group-0\"> </a><p><b>type</b>: Person</p><p><b>actual</b>: false</p><h3>Characteristics</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Code</b></td><td><b>Value[x]</b></td><td><b>Exclude</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:\">Exposed to</span></td><td><a href=\"EvidenceVariable-mii-exa-mtb-study-cldn6-evidence-variable-0.html\">Biological: CLDN6 CAR-T</a></td><td>false</td></tr></table></div>"
      },
      "type" : "person",
      "actual" : false,
      "characteristic" : [{
        "code" : {
          "text" : "Exposed to"
        },
        "valueReference" : {
          "reference" : "EvidenceVariable/mii-exa-mtb-study-cldn6-evidence-variable-0",
          "display" : "Biological: CLDN6 CAR-T"
        },
        "exclude" : false
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Group/mii-exa-mtb-study-cldn6-comparison-group-0"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/EvidenceVariable/mii-exa-mtb-study-cldn6-evidence-variable-0",
    "resource" : {
      "resourceType" : "EvidenceVariable",
      "id" : "mii-exa-mtb-study-cldn6-evidence-variable-0",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"EvidenceVariable_mii-exa-mtb-study-cldn6-evidence-variable-0\"> </a><p class=\"res-header-id\"><b>Generated Narrative: EvidenceVariable mii-exa-mtb-study-cldn6-evidence-variable-0</b></p><a name=\"mii-exa-mtb-study-cldn6-evidence-variable-0\"> </a><a name=\"hcmii-exa-mtb-study-cldn6-evidence-variable-0\"> </a><p><b>status</b>: Active</p><h3>UseContexts</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Code</b></td><td><b>Value[x]</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"http://snomed.info/id/362956003\">SNOMED CT: 362956003</a> (Procedure/intervention (navigational concept))</td><td><span title=\"Codes:{http://snomed.info/sct 12893009}\">Biological</span></td></tr></table><h3>Characteristics</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Definition[x]</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"Group-mii-exa-mtb-study-cldn6-eligibility-criteria.html\">Group: type = person; actual = false; quantity = 145</a></td></tr></table></div>"
      },
      "status" : "active",
      "useContext" : [{
        "code" : {
          "system" : "http://snomed.info/sct",
          "code" : "362956003",
          "display" : "Procedure/intervention (navigational concept)"
        },
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "12893009",
            "display" : "Biological"
          }]
        }
      }],
      "characteristic" : [{
        "definitionReference" : {
          "reference" : "Group/mii-exa-mtb-study-cldn6-eligibility-criteria"
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "EvidenceVariable/mii-exa-mtb-study-cldn6-evidence-variable-0"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Group/mii-exa-mtb-study-cldn6-comparison-group-1",
    "resource" : {
      "resourceType" : "Group",
      "id" : "mii-exa-mtb-study-cldn6-comparison-group-1",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Group_mii-exa-mtb-study-cldn6-comparison-group-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Group mii-exa-mtb-study-cldn6-comparison-group-1</b></p><a name=\"mii-exa-mtb-study-cldn6-comparison-group-1\"> </a><a name=\"hcmii-exa-mtb-study-cldn6-comparison-group-1\"> </a><p><b>type</b>: Person</p><p><b>actual</b>: false</p><h3>Characteristics</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Code</b></td><td><b>Value[x]</b></td><td><b>Exclude</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:\">Exposed to</span></td><td><a href=\"EvidenceVariable-mii-exa-mtb-study-cldn6-evidence-variable-1.html\">Biological: CLDN6 uRNA-LPX/CLDN6 modRNA-LPX</a></td><td>false</td></tr></table></div>"
      },
      "type" : "person",
      "actual" : false,
      "characteristic" : [{
        "code" : {
          "text" : "Exposed to"
        },
        "valueReference" : {
          "reference" : "EvidenceVariable/mii-exa-mtb-study-cldn6-evidence-variable-1",
          "display" : "Biological: CLDN6 uRNA-LPX/CLDN6 modRNA-LPX"
        },
        "exclude" : false
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Group/mii-exa-mtb-study-cldn6-comparison-group-1"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/EvidenceVariable/mii-exa-mtb-study-cldn6-evidence-variable-1",
    "resource" : {
      "resourceType" : "EvidenceVariable",
      "id" : "mii-exa-mtb-study-cldn6-evidence-variable-1",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"EvidenceVariable_mii-exa-mtb-study-cldn6-evidence-variable-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: EvidenceVariable mii-exa-mtb-study-cldn6-evidence-variable-1</b></p><a name=\"mii-exa-mtb-study-cldn6-evidence-variable-1\"> </a><a name=\"hcmii-exa-mtb-study-cldn6-evidence-variable-1\"> </a><p><b>status</b>: Active</p><h3>UseContexts</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Code</b></td><td><b>Value[x]</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"http://snomed.info/id/362956003\">SNOMED CT: 362956003</a> (Procedure/intervention (navigational concept))</td><td><span title=\"Codes:{http://snomed.info/sct 12893009}\">Biological</span></td></tr></table><h3>Characteristics</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Definition[x]</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"Group-mii-exa-mtb-study-cldn6-eligibility-criteria.html\">Group: type = person; actual = false; quantity = 145</a></td></tr></table></div>"
      },
      "status" : "active",
      "useContext" : [{
        "code" : {
          "system" : "http://snomed.info/sct",
          "code" : "362956003",
          "display" : "Procedure/intervention (navigational concept)"
        },
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "12893009",
            "display" : "Biological"
          }]
        }
      }],
      "characteristic" : [{
        "definitionReference" : {
          "reference" : "Group/mii-exa-mtb-study-cldn6-eligibility-criteria"
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "EvidenceVariable/mii-exa-mtb-study-cldn6-evidence-variable-1"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Organization/mii-exa-mtb-study-sponsor-biontech",
    "resource" : {
      "resourceType" : "Organization",
      "id" : "mii-exa-mtb-study-sponsor-biontech",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Organization_mii-exa-mtb-study-sponsor-biontech\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Organization mii-exa-mtb-study-sponsor-biontech</b></p><a name=\"mii-exa-mtb-study-sponsor-biontech\"> </a><a name=\"hcmii-exa-mtb-study-sponsor-biontech\"> </a><p><b>type</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/organization-type crs}\">Clinical Research Sponsor</span></p><p><b>name</b>: BioNTech Cell &amp; Gene Therapies GmbH</p></div>"
      },
      "type" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
          "code" : "crs",
          "display" : "Clinical Research Sponsor"
        }]
      }],
      "name" : "BioNTech Cell & Gene Therapies GmbH"
    },
    "request" : {
      "method" : "PUT",
      "url" : "Organization/mii-exa-mtb-study-sponsor-biontech"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/PractitionerRole/mii-exa-mtb-study-investigator-biontech",
    "resource" : {
      "resourceType" : "PractitionerRole",
      "id" : "mii-exa-mtb-study-investigator-biontech",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-beteiligte-person"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"PractitionerRole_mii-exa-mtb-study-investigator-biontech\"> </a><p class=\"res-header-id\"><b>Generated Narrative: PractitionerRole mii-exa-mtb-study-investigator-biontech</b></p><a name=\"mii-exa-mtb-study-investigator-biontech\"> </a><a name=\"hcmii-exa-mtb-study-investigator-biontech\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&amp;canonical=https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-beteiligte-person\">MII PR Studie Beteiligte Person</a></p></div><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 768734005}\">Study coordinator</span></p></div>"
      },
      "code" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "768734005",
          "display" : "Study coordinator"
        }]
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "PractitionerRole/mii-exa-mtb-study-investigator-biontech"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Location/mii-exa-mtb-study-cldn6-location-0",
    "resource" : {
      "resourceType" : "Location",
      "id" : "mii-exa-mtb-study-cldn6-location-0",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Location_mii-exa-mtb-study-cldn6-location-0\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Location mii-exa-mtb-study-cldn6-location-0</b></p><a name=\"mii-exa-mtb-study-cldn6-location-0\"> </a><a name=\"hcmii-exa-mtb-study-cldn6-location-0\"> </a><p><b>name</b>: Peter MacCallum Cancer Centre</p><p><b>address</b>: Melbourne Victoria 3000 Australia </p><h3>Positions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Longitude</b></td><td><b>Latitude</b></td></tr><tr><td style=\"display: none\">*</td><td>144.96332</td><td>-37.814</td></tr></table></div>"
      },
      "name" : "Peter MacCallum Cancer Centre",
      "address" : {
        "city" : "Melbourne",
        "state" : "Victoria",
        "postalCode" : "3000",
        "country" : "Australia"
      },
      "position" : {
        "longitude" : 144.96332,
        "latitude" : -37.814
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Location/mii-exa-mtb-study-cldn6-location-0"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Location/mii-exa-mtb-study-cldn6-location-1",
    "resource" : {
      "resourceType" : "Location",
      "id" : "mii-exa-mtb-study-cldn6-location-1",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Location_mii-exa-mtb-study-cldn6-location-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Location mii-exa-mtb-study-cldn6-location-1</b></p><a name=\"mii-exa-mtb-study-cldn6-location-1\"> </a><a name=\"hcmii-exa-mtb-study-cldn6-location-1\"> </a><p><b>name</b>: Charité - Universitätsmedizin Berlin - Campus Benjamin Franklin</p><p><b>address</b>: Berlin 12200 Germany </p><h3>Positions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Longitude</b></td><td><b>Latitude</b></td></tr><tr><td style=\"display: none\">*</td><td>13.41053</td><td>52.52437</td></tr></table></div>"
      },
      "name" : "Charité - Universitätsmedizin Berlin - Campus Benjamin Franklin",
      "address" : {
        "city" : "Berlin",
        "postalCode" : "12200",
        "country" : "Germany"
      },
      "position" : {
        "longitude" : 13.41053,
        "latitude" : 52.52437
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Location/mii-exa-mtb-study-cldn6-location-1"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Location/mii-exa-mtb-study-cldn6-location-2",
    "resource" : {
      "resourceType" : "Location",
      "id" : "mii-exa-mtb-study-cldn6-location-2",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Location_mii-exa-mtb-study-cldn6-location-2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Location mii-exa-mtb-study-cldn6-location-2</b></p><a name=\"mii-exa-mtb-study-cldn6-location-2\"> </a><a name=\"hcmii-exa-mtb-study-cldn6-location-2\"> </a><p><b>name</b>: Universitätsklinikum Erlangen - Hämatologie &amp; Intrinsische Onkologie - Medizinische Klinik 5</p><p><b>address</b>: Erlangen 91054 Germany </p><h3>Positions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Longitude</b></td><td><b>Latitude</b></td></tr><tr><td style=\"display: none\">*</td><td>11.00783</td><td>49.59099</td></tr></table></div>"
      },
      "name" : "Universitätsklinikum Erlangen - Hämatologie & Intrinsische Onkologie - Medizinische Klinik 5",
      "address" : {
        "city" : "Erlangen",
        "postalCode" : "91054",
        "country" : "Germany"
      },
      "position" : {
        "longitude" : 11.00783,
        "latitude" : 49.59099
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Location/mii-exa-mtb-study-cldn6-location-2"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Location/mii-exa-mtb-study-cldn6-location-3",
    "resource" : {
      "resourceType" : "Location",
      "id" : "mii-exa-mtb-study-cldn6-location-3",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Location_mii-exa-mtb-study-cldn6-location-3\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Location mii-exa-mtb-study-cldn6-location-3</b></p><a name=\"mii-exa-mtb-study-cldn6-location-3\"> </a><a name=\"hcmii-exa-mtb-study-cldn6-location-3\"> </a><p><b>name</b>: Universitätsklinikum Hamburg Eppendorf - II Medizinische Klinik und Poliklinik</p><p><b>address</b>: Hamburg 20246 Germany </p><h3>Positions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Longitude</b></td><td><b>Latitude</b></td></tr><tr><td style=\"display: none\">*</td><td>10.01534</td><td>53.57532</td></tr></table></div>"
      },
      "name" : "Universitätsklinikum Hamburg Eppendorf - II Medizinische Klinik und Poliklinik",
      "address" : {
        "city" : "Hamburg",
        "postalCode" : "20246",
        "country" : "Germany"
      },
      "position" : {
        "longitude" : 10.01534,
        "latitude" : 53.57532
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Location/mii-exa-mtb-study-cldn6-location-3"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Location/mii-exa-mtb-study-cldn6-location-4",
    "resource" : {
      "resourceType" : "Location",
      "id" : "mii-exa-mtb-study-cldn6-location-4",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Location_mii-exa-mtb-study-cldn6-location-4\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Location mii-exa-mtb-study-cldn6-location-4</b></p><a name=\"mii-exa-mtb-study-cldn6-location-4\"> </a><a name=\"hcmii-exa-mtb-study-cldn6-location-4\"> </a><p><b>name</b>: Medizinische Hochschule Hannover - Klinik für Hämatologie, Hämostaseologie, Onkologie und Stammzelltransplantation</p><p><b>address</b>: Hannover 30625 Germany </p><h3>Positions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Longitude</b></td><td><b>Latitude</b></td></tr><tr><td style=\"display: none\">*</td><td>9.73322</td><td>52.37052</td></tr></table></div>"
      },
      "name" : "Medizinische Hochschule Hannover - Klinik für Hämatologie, Hämostaseologie, Onkologie und Stammzelltransplantation",
      "address" : {
        "city" : "Hannover",
        "postalCode" : "30625",
        "country" : "Germany"
      },
      "position" : {
        "longitude" : 9.73322,
        "latitude" : 52.37052
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Location/mii-exa-mtb-study-cldn6-location-4"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Location/mii-exa-mtb-study-cldn6-location-5",
    "resource" : {
      "resourceType" : "Location",
      "id" : "mii-exa-mtb-study-cldn6-location-5",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Location_mii-exa-mtb-study-cldn6-location-5\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Location mii-exa-mtb-study-cldn6-location-5</b></p><a name=\"mii-exa-mtb-study-cldn6-location-5\"> </a><a name=\"hcmii-exa-mtb-study-cldn6-location-5\"> </a><p><b>name</b>: Nationales Centrum für Tumorerkrankungen (NCT) Heidelberg</p><p><b>address</b>: Heidelberg 69120 Germany </p><h3>Positions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Longitude</b></td><td><b>Latitude</b></td></tr><tr><td style=\"display: none\">*</td><td>8.69079</td><td>49.40768</td></tr></table></div>"
      },
      "name" : "Nationales Centrum für Tumorerkrankungen (NCT) Heidelberg",
      "address" : {
        "city" : "Heidelberg",
        "postalCode" : "69120",
        "country" : "Germany"
      },
      "position" : {
        "longitude" : 8.69079,
        "latitude" : 49.40768
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Location/mii-exa-mtb-study-cldn6-location-5"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Location/mii-exa-mtb-study-cldn6-location-6",
    "resource" : {
      "resourceType" : "Location",
      "id" : "mii-exa-mtb-study-cldn6-location-6",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Location_mii-exa-mtb-study-cldn6-location-6\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Location mii-exa-mtb-study-cldn6-location-6</b></p><a name=\"mii-exa-mtb-study-cldn6-location-6\"> </a><a name=\"hcmii-exa-mtb-study-cldn6-location-6\"> </a><p><b>name</b>: Universitätsklinikum Köln AÖR-Centrum für Integrierte Onkologie (CIO)-Studienzentrum der Klinik I für Innere Medizin (CTU Cologne)</p><p><b>address</b>: Köln 50937 Germany </p><h3>Positions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Longitude</b></td><td><b>Latitude</b></td></tr><tr><td style=\"display: none\">*</td><td>6.95</td><td>50.93333</td></tr></table></div>"
      },
      "name" : "Universitätsklinikum Köln AÖR-Centrum für Integrierte Onkologie (CIO)-Studienzentrum der Klinik I für Innere Medizin (CTU Cologne)",
      "address" : {
        "city" : "Köln",
        "postalCode" : "50937",
        "country" : "Germany"
      },
      "position" : {
        "longitude" : 6.95,
        "latitude" : 50.93333
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Location/mii-exa-mtb-study-cldn6-location-6"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Location/mii-exa-mtb-study-cldn6-location-7",
    "resource" : {
      "resourceType" : "Location",
      "id" : "mii-exa-mtb-study-cldn6-location-7",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Location_mii-exa-mtb-study-cldn6-location-7\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Location mii-exa-mtb-study-cldn6-location-7</b></p><a name=\"mii-exa-mtb-study-cldn6-location-7\"> </a><a name=\"hcmii-exa-mtb-study-cldn6-location-7\"> </a><p><b>name</b>: Universitätsmedizin Mainz - III Medizinische Klinik und Poliklinik</p><p><b>address</b>: Mainz 55131 Germany </p><h3>Positions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Longitude</b></td><td><b>Latitude</b></td></tr><tr><td style=\"display: none\">*</td><td>8.2791</td><td>49.98419</td></tr></table></div>"
      },
      "name" : "Universitätsmedizin Mainz - III Medizinische Klinik und Poliklinik",
      "address" : {
        "city" : "Mainz",
        "postalCode" : "55131",
        "country" : "Germany"
      },
      "position" : {
        "longitude" : 8.2791,
        "latitude" : 49.98419
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Location/mii-exa-mtb-study-cldn6-location-7"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Location/mii-exa-mtb-study-cldn6-location-8",
    "resource" : {
      "resourceType" : "Location",
      "id" : "mii-exa-mtb-study-cldn6-location-8",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Location_mii-exa-mtb-study-cldn6-location-8\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Location mii-exa-mtb-study-cldn6-location-8</b></p><a name=\"mii-exa-mtb-study-cldn6-location-8\"> </a><a name=\"hcmii-exa-mtb-study-cldn6-location-8\"> </a><p><b>name</b>: Universitätsklinikum Regensburg - Klinik und Poliklinik für Innere Medizin III</p><p><b>address</b>: Regensburg 93053 Germany </p><h3>Positions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Longitude</b></td><td><b>Latitude</b></td></tr><tr><td style=\"display: none\">*</td><td>12.10161</td><td>49.01513</td></tr></table></div>"
      },
      "name" : "Universitätsklinikum Regensburg - Klinik und Poliklinik für Innere Medizin III",
      "address" : {
        "city" : "Regensburg",
        "postalCode" : "93053",
        "country" : "Germany"
      },
      "position" : {
        "longitude" : 12.10161,
        "latitude" : 49.01513
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Location/mii-exa-mtb-study-cldn6-location-8"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Location/mii-exa-mtb-study-cldn6-location-9",
    "resource" : {
      "resourceType" : "Location",
      "id" : "mii-exa-mtb-study-cldn6-location-9",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Location_mii-exa-mtb-study-cldn6-location-9\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Location mii-exa-mtb-study-cldn6-location-9</b></p><a name=\"mii-exa-mtb-study-cldn6-location-9\"> </a><a name=\"hcmii-exa-mtb-study-cldn6-location-9\"> </a><p><b>name</b>: He Nederlands Kanker Instituut (The Netherlands Cancer Institute) - Antoni van Leeuwenhoek Ziekenhuis (NKI-AVL)</p><p><b>address</b>: Amsterdam 1066 Netherlands </p><h3>Positions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Longitude</b></td><td><b>Latitude</b></td></tr><tr><td style=\"display: none\">*</td><td>4.88969</td><td>52.37403</td></tr></table></div>"
      },
      "name" : "He Nederlands Kanker Instituut (The Netherlands Cancer Institute) - Antoni van Leeuwenhoek Ziekenhuis (NKI-AVL)",
      "address" : {
        "city" : "Amsterdam",
        "postalCode" : "1066",
        "country" : "Netherlands"
      },
      "position" : {
        "longitude" : 4.88969,
        "latitude" : 52.37403
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Location/mii-exa-mtb-study-cldn6-location-9"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Location/mii-exa-mtb-study-cldn6-location-10",
    "resource" : {
      "resourceType" : "Location",
      "id" : "mii-exa-mtb-study-cldn6-location-10",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Location_mii-exa-mtb-study-cldn6-location-10\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Location mii-exa-mtb-study-cldn6-location-10</b></p><a name=\"mii-exa-mtb-study-cldn6-location-10\"> </a><a name=\"hcmii-exa-mtb-study-cldn6-location-10\"> </a><p><b>name</b>: Erasmus MC - Universitair Medisch Centrum - Medical oncology</p><p><b>address</b>: Rotterdam 3015 Netherlands </p><h3>Positions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Longitude</b></td><td><b>Latitude</b></td></tr><tr><td style=\"display: none\">*</td><td>4.47917</td><td>51.9225</td></tr></table></div>"
      },
      "name" : "Erasmus MC - Universitair Medisch Centrum - Medical oncology",
      "address" : {
        "city" : "Rotterdam",
        "postalCode" : "3015",
        "country" : "Netherlands"
      },
      "position" : {
        "longitude" : 4.47917,
        "latitude" : 51.9225
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Location/mii-exa-mtb-study-cldn6-location-10"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Location/mii-exa-mtb-study-cldn6-location-11",
    "resource" : {
      "resourceType" : "Location",
      "id" : "mii-exa-mtb-study-cldn6-location-11",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Location_mii-exa-mtb-study-cldn6-location-11\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Location mii-exa-mtb-study-cldn6-location-11</b></p><a name=\"mii-exa-mtb-study-cldn6-location-11\"> </a><a name=\"hcmii-exa-mtb-study-cldn6-location-11\"> </a><p><b>name</b>: Karolinska Comprehensive Cancer Center Cancerstudieenheten Huddinge Karolinska Universitetssjukhuset</p><p><b>address</b>: Stockholm 14186 Sweden </p><h3>Positions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Longitude</b></td><td><b>Latitude</b></td></tr><tr><td style=\"display: none\">*</td><td>18.0649</td><td>59.33258</td></tr></table></div>"
      },
      "name" : "Karolinska Comprehensive Cancer Center Cancerstudieenheten Huddinge Karolinska Universitetssjukhuset",
      "address" : {
        "city" : "Stockholm",
        "postalCode" : "14186",
        "country" : "Sweden"
      },
      "position" : {
        "longitude" : 18.0649,
        "latitude" : 59.33258
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Location/mii-exa-mtb-study-cldn6-location-11"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/ResearchStudy/mii-exa-mtb-study-tedova",
    "resource" : {
      "resourceType" : "ResearchStudy",
      "id" : "mii-exa-mtb-study-tedova",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-studie|2026.0.1"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ResearchStudy_mii-exa-mtb-study-tedova\"> </a><p class=\"res-header-id\"><b>Generated Narrative: ResearchStudy mii-exa-mtb-study-tedova</b></p><a name=\"mii-exa-mtb-study-tedova\"> </a><a name=\"hcmii-exa-mtb-study-tedova\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-studie.html\">MII PR MTB Studie</a> version: 2026.0.1</p></div><p><b>identifier</b>: <a href=\"NamingSystem-mii-ns-mtb-nct.html\" title=\"NamingSystem für Identifikatoren des Nationalen Centrums für Tumorerkrankungen (NCT)\">MII_NS_MTB_NCT</a>/04713514</p><p><b>status</b>: Active</p></div>"
      },
      "identifier" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/modul-mtb/sid/nct",
        "value" : "04713514"
      }],
      "status" : "active"
    },
    "request" : {
      "method" : "PUT",
      "url" : "ResearchStudy/mii-exa-mtb-study-tedova"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/ServiceRequest/mii-exa-mtb-study-request-tedova",
    "resource" : {
      "resourceType" : "ServiceRequest",
      "id" : "mii-exa-mtb-study-request-tedova",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-studieneinschluss-anfrage|2026.0.1"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ServiceRequest_mii-exa-mtb-study-request-tedova\"> </a><p class=\"res-header-id\"><b>Generated Narrative: ServiceRequest mii-exa-mtb-study-request-tedova</b></p><a name=\"mii-exa-mtb-study-request-tedova\"> </a><a name=\"hcmii-exa-mtb-study-request-tedova\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-studieneinschluss-anfrage.html\">MII PR MTB Studieneinschluss Anfrage</a> version: 2026.0.1</p></div><p><b>MII EX MTB Empfehlung Priorität</b>: 2.2</p><p><b>status</b>: Draft</p><p><b>intent</b>: Proposal</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 110465008}\">Clinical trial (procedure)</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 702475000}\">Referral to clinical trial (procedure)</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>supportingInfo</b>: <a href=\"ResearchStudy-mii-exa-mtb-study-tedova.html\">ResearchStudy: identifier = https://www.medizininformatik-initiative.de/fhir/modul-mtb/sid/nct#MII_NS_MTB_NCT#04713514; status = active</a></p></div>"
      },
      "extension" : [{
        "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-prioritaet",
        "valueDecimal" : 2.2
      }],
      "status" : "draft",
      "intent" : "proposal",
      "category" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "110465008",
          "display" : "Clinical trial (procedure)"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "702475000",
          "display" : "Referral to clinical trial (procedure)"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "supportingInfo" : [{
        "reference" : "ResearchStudy/mii-exa-mtb-study-tedova"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "ServiceRequest/mii-exa-mtb-study-request-tedova"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/ResearchStudy/mii-exa-mtb-study-ccne1",
    "resource" : {
      "resourceType" : "ResearchStudy",
      "id" : "mii-exa-mtb-study-ccne1",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-studie|2026.0.1"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ResearchStudy_mii-exa-mtb-study-ccne1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: ResearchStudy mii-exa-mtb-study-ccne1</b></p><a name=\"mii-exa-mtb-study-ccne1\"> </a><a name=\"hcmii-exa-mtb-study-ccne1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-studie.html\">MII PR MTB Studie</a> version: 2026.0.1</p></div><p><b>status</b>: Active</p></div>"
      },
      "status" : "active"
    },
    "request" : {
      "method" : "PUT",
      "url" : "ResearchStudy/mii-exa-mtb-study-ccne1"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/ServiceRequest/mii-exa-mtb-study-request-ccne1",
    "resource" : {
      "resourceType" : "ServiceRequest",
      "id" : "mii-exa-mtb-study-request-ccne1",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-studieneinschluss-anfrage|2026.0.1"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ServiceRequest_mii-exa-mtb-study-request-ccne1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: ServiceRequest mii-exa-mtb-study-request-ccne1</b></p><a name=\"mii-exa-mtb-study-request-ccne1\"> </a><a name=\"hcmii-exa-mtb-study-request-ccne1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-studieneinschluss-anfrage.html\">MII PR MTB Studieneinschluss Anfrage</a> version: 2026.0.1</p></div><p><b>MII EX MTB Empfehlung Priorität</b>: 2.3</p><p><b>status</b>: Draft</p><p><b>intent</b>: Proposal</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 110465008}\">Clinical trial (procedure)</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 702475000}\">Referral to clinical trial (procedure)</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>supportingInfo</b>: <a href=\"ResearchStudy-mii-exa-mtb-study-ccne1.html\">ResearchStudy: status = active</a></p></div>"
      },
      "extension" : [{
        "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-prioritaet",
        "valueDecimal" : 2.3
      }],
      "status" : "draft",
      "intent" : "proposal",
      "category" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "110465008",
          "display" : "Clinical trial (procedure)"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "702475000",
          "display" : "Referral to clinical trial (procedure)"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "supportingInfo" : [{
        "reference" : "ResearchStudy/mii-exa-mtb-study-ccne1"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "ServiceRequest/mii-exa-mtb-study-request-ccne1"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/MedicationRequest/mii-exa-mtb-medication-request-mirvetuximab",
    "resource" : {
      "resourceType" : "MedicationRequest",
      "id" : "mii-exa-mtb-medication-request-mirvetuximab",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung|2026.0.1"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_mii-exa-mtb-medication-request-mirvetuximab\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationRequest mii-exa-mtb-medication-request-mirvetuximab</b></p><a name=\"mii-exa-mtb-medication-request-mirvetuximab\"> </a><a name=\"hcmii-exa-mtb-medication-request-mirvetuximab\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-therapieempfehlung.html\">MII PR MTB Therapieempfehlung Systemische Therapie</a> version: 2026.0.1</p></div><p><b>MII EX MTB Empfehlung Priorität</b>: 1</p><p><b>MII EX MTB Empfehlung Evidenzgraduierung</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-empfehlung-evidenzgrad m1A}\">m1A</span></p><p><b>MII EX MTB Empfehlung Publikation</b>: <code>http://doi.org</code>/10.1200/JCO.2022.40.16_suppl.5512</p><p><b>MII EX MTB Empfehlung Publikation</b>: <code>http://www.ncbi.nlm.nih.gov/pubmed</code>/38055253</p><p><b>status</b>: Completed</p><p><b>intent</b>: Proposal</p><p><b>medication</b>: <span title=\"Codes:{http://fdasis.nlm.nih.gov 98DE7VN88D}, {http://fhir.de/CodeSystem/bfarm/atc L01FX26}, {http://fhir.de/CodeSystem/bfarm/atc L01FX}\">MIRVETUXIMAB SORAVTANSINE</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>authoredOn</b>: 2023-03-28</p><p><b>reasonReference</b>: <a href=\"Condition-PatientKimMusterperson-PrimaryDiagnosis-2.html\">Condition Bösartige Neubildung: Peritoneum, nicht näher bezeichnet</a></p><p><b>basedOn</b>: <a href=\"CarePlan-mii-exa-mtb-kim-musterperson-therapieplan.html\">CarePlan: status = active; intent = plan; category = prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie); created = 2023-03-28</a></p></div>"
      },
      "extension" : [{
        "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-prioritaet",
        "valuePositiveInt" : 1
      },
      {
        "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-evidenzgraduierung",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-empfehlung-evidenzgrad",
            "code" : "m1A"
          }]
        }
      },
      {
        "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-publikation",
        "valueIdentifier" : {
          "system" : "http://doi.org",
          "value" : "10.1200/JCO.2022.40.16_suppl.5512"
        }
      },
      {
        "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-publikation",
        "valueIdentifier" : {
          "system" : "http://www.ncbi.nlm.nih.gov/pubmed",
          "value" : "38055253"
        }
      }],
      "status" : "completed",
      "intent" : "proposal",
      "medicationCodeableConcept" : {
        "coding" : [{
          "system" : "http://fdasis.nlm.nih.gov",
          "code" : "98DE7VN88D",
          "display" : "MIRVETUXIMAB SORAVTANSINE"
        },
        {
          "system" : "http://fhir.de/CodeSystem/bfarm/atc",
          "version" : "2025",
          "code" : "L01FX26",
          "display" : "Mirvetuximab soravtansin"
        },
        {
          "system" : "http://fhir.de/CodeSystem/bfarm/atc",
          "version" : "2025",
          "code" : "L01FX",
          "display" : "Andere monoklonale Antikörper und Antikörper-Wirkstoff-Konjugate"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "authoredOn" : "2023-03-28",
      "reasonReference" : [{
        "reference" : "Condition/PatientKimMusterperson-PrimaryDiagnosis-2"
      }],
      "basedOn" : [{
        "reference" : "CarePlan/mii-exa-mtb-kim-musterperson-therapieplan"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationRequest/mii-exa-mtb-medication-request-mirvetuximab"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/MedicationRequest/mii-exa-mtb-medication-request-trastuzumab-deruxtecan",
    "resource" : {
      "resourceType" : "MedicationRequest",
      "id" : "mii-exa-mtb-medication-request-trastuzumab-deruxtecan",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung|2026.0.1"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_mii-exa-mtb-medication-request-trastuzumab-deruxtecan\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationRequest mii-exa-mtb-medication-request-trastuzumab-deruxtecan</b></p><a name=\"mii-exa-mtb-medication-request-trastuzumab-deruxtecan\"> </a><a name=\"hcmii-exa-mtb-medication-request-trastuzumab-deruxtecan\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-therapieempfehlung.html\">MII PR MTB Therapieempfehlung Systemische Therapie</a> version: 2026.0.1</p></div><p><b>MII EX MTB Empfehlung Priorität</b>: 3</p><p><b>MII EX MTB Empfehlung Evidenzgraduierung</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-empfehlung-evidenzgrad m1B}\">m1B</span></p><p><b>MII EX MTB Empfehlung Publikation</b>: <code>http://www.ncbi.nlm.nih.gov/pubmed</code>/35665782</p><p><b>MII EX MTB Empfehlung Publikation</b>: <code>http://www.ncbi.nlm.nih.gov/pubmed</code>/37870536</p><p><b>MII EX MTB Empfehlung Publikation</b>: <code>http://doi.org</code>/10.1200/JCO.2023.41.17_suppl.LBA3000</p><p><b>status</b>: Draft</p><p><b>intent</b>: Proposal</p><p><b>medication</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/atc L01FD04}\">Trastuzumab deruxtecan</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>authoredOn</b>: 2023-03-28</p><p><b>reasonReference</b>: <a href=\"Condition-PatientKimMusterperson-PrimaryDiagnosis-2.html\">Condition Bösartige Neubildung: Peritoneum, nicht näher bezeichnet</a></p></div>"
      },
      "extension" : [{
        "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-prioritaet",
        "valuePositiveInt" : 3
      },
      {
        "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-evidenzgraduierung",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-empfehlung-evidenzgrad",
            "code" : "m1B"
          }]
        }
      },
      {
        "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-publikation",
        "valueIdentifier" : {
          "system" : "http://www.ncbi.nlm.nih.gov/pubmed",
          "value" : "35665782"
        }
      },
      {
        "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-publikation",
        "valueIdentifier" : {
          "system" : "http://www.ncbi.nlm.nih.gov/pubmed",
          "value" : "37870536"
        }
      },
      {
        "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-publikation",
        "valueIdentifier" : {
          "system" : "http://doi.org",
          "value" : "10.1200/JCO.2023.41.17_suppl.LBA3000"
        }
      }],
      "status" : "draft",
      "intent" : "proposal",
      "medicationCodeableConcept" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/atc",
          "version" : "2025",
          "code" : "L01FD04",
          "display" : "Trastuzumab deruxtecan"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "authoredOn" : "2023-03-28",
      "reasonReference" : [{
        "reference" : "Condition/PatientKimMusterperson-PrimaryDiagnosis-2"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationRequest/mii-exa-mtb-medication-request-trastuzumab-deruxtecan"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/MedicationRequest/mii-exa-mtb-medication-request-adavosertib",
    "resource" : {
      "resourceType" : "MedicationRequest",
      "id" : "mii-exa-mtb-medication-request-adavosertib",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung|2026.0.1"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_mii-exa-mtb-medication-request-adavosertib\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationRequest mii-exa-mtb-medication-request-adavosertib</b></p><a name=\"mii-exa-mtb-medication-request-adavosertib\"> </a><a name=\"hcmii-exa-mtb-medication-request-adavosertib\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-therapieempfehlung.html\">MII PR MTB Therapieempfehlung Systemische Therapie</a> version: 2026.0.1</p></div><p><b>status</b>: Draft</p><p><b>intent</b>: Option</p><p><b>medication</b>: <span title=\"Codes:{http://fdasis.nlm.nih.gov K2T6HJX3I3}\">ADAVOSERTIB</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>authoredOn</b>: 2023-03-28</p><p><b>reasonReference</b>: <a href=\"Condition-PatientKimMusterperson-PrimaryDiagnosis-2.html\">Condition Bösartige Neubildung: Peritoneum, nicht näher bezeichnet</a></p></div>"
      },
      "status" : "draft",
      "intent" : "option",
      "medicationCodeableConcept" : {
        "coding" : [{
          "system" : "http://fdasis.nlm.nih.gov",
          "code" : "K2T6HJX3I3",
          "display" : "ADAVOSERTIB"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "authoredOn" : "2023-03-28",
      "reasonReference" : [{
        "reference" : "Condition/PatientKimMusterperson-PrimaryDiagnosis-2"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationRequest/mii-exa-mtb-medication-request-adavosertib"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/MedicationRequest/mii-exa-mtb-medication-request-carboplatin",
    "resource" : {
      "resourceType" : "MedicationRequest",
      "id" : "mii-exa-mtb-medication-request-carboplatin",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung|2026.0.1"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_mii-exa-mtb-medication-request-carboplatin\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationRequest mii-exa-mtb-medication-request-carboplatin</b></p><a name=\"mii-exa-mtb-medication-request-carboplatin\"> </a><a name=\"hcmii-exa-mtb-medication-request-carboplatin\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-therapieempfehlung.html\">MII PR MTB Therapieempfehlung Systemische Therapie</a> version: 2026.0.1</p></div><p><b>status</b>: Draft</p><p><b>intent</b>: Option</p><p><b>medication</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/atc L01XA02}\">Carboplatin</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>authoredOn</b>: 2023-03-28</p><p><b>reasonReference</b>: <a href=\"Condition-PatientKimMusterperson-PrimaryDiagnosis-2.html\">Condition Bösartige Neubildung: Peritoneum, nicht näher bezeichnet</a></p></div>"
      },
      "status" : "draft",
      "intent" : "option",
      "medicationCodeableConcept" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/atc",
          "version" : "2025",
          "code" : "L01XA02",
          "display" : "Carboplatin"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "authoredOn" : "2023-03-28",
      "reasonReference" : [{
        "reference" : "Condition/PatientKimMusterperson-PrimaryDiagnosis-2"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationRequest/mii-exa-mtb-medication-request-carboplatin"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/RequestGroup/mii-exa-mtb-request-group-adavosertib-carboplatin",
    "resource" : {
      "resourceType" : "RequestGroup",
      "id" : "mii-exa-mtb-request-group-adavosertib-carboplatin",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung-kombination|2026.0.1"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"RequestGroup_mii-exa-mtb-request-group-adavosertib-carboplatin\"> </a><p class=\"res-header-id\"><b>Generated Narrative: RequestGroup mii-exa-mtb-request-group-adavosertib-carboplatin</b></p><a name=\"mii-exa-mtb-request-group-adavosertib-carboplatin\"> </a><a name=\"hcmii-exa-mtb-request-group-adavosertib-carboplatin\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-therapieempfehlung-kombination.html\">MII PR MTB Therapieempfehlung Kombinationstherapie</a> version: 2026.0.1</p></div><p><b>MII EX MTB Empfehlung Priorität</b>: 4</p><p><b>MII EX MTB Empfehlung Evidenzgraduierung</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-empfehlung-evidenzgrad m1B}\">m1B</span></p><p><b>MII EX MTB Empfehlung Publikation</b>: <code>http://www.ncbi.nlm.nih.gov/pubmed</code>/37236033</p><p><b>status</b>: Draft</p><p><b>intent</b>: Proposal</p><p><b>code</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ CZ}\">Chemotherapie + zielgerichtete Substanzen</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>authoredOn</b>: 2023-03-28</p><h3>Actions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Resource</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"MedicationRequest-mii-exa-mtb-medication-request-carboplatin.html\">MedicationRequest: status = draft; intent = option; medication[x] = Carboplatin; authoredOn = 2023-03-28</a></td></tr></table></div>"
      },
      "extension" : [{
        "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-prioritaet",
        "valuePositiveInt" : 4
      },
      {
        "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-evidenzgraduierung",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-empfehlung-evidenzgrad",
            "code" : "m1B"
          }]
        }
      },
      {
        "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-publikation",
        "valueIdentifier" : {
          "system" : "http://www.ncbi.nlm.nih.gov/pubmed",
          "value" : "37236033"
        }
      }],
      "status" : "draft",
      "intent" : "proposal",
      "code" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ",
          "code" : "CZ",
          "display" : "Chemotherapie + zielgerichtete Substanzen"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "authoredOn" : "2023-03-28",
      "action" : [{
        "resource" : {
          "reference" : "MedicationRequest/mii-exa-mtb-medication-request-carboplatin"
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "RequestGroup/mii-exa-mtb-request-group-adavosertib-carboplatin"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/MedicationRequest/mii-exa-mtb-medication-request-lunresertib",
    "resource" : {
      "resourceType" : "MedicationRequest",
      "id" : "mii-exa-mtb-medication-request-lunresertib",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung|2026.0.1"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_mii-exa-mtb-medication-request-lunresertib\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationRequest mii-exa-mtb-medication-request-lunresertib</b></p><a name=\"mii-exa-mtb-medication-request-lunresertib\"> </a><a name=\"hcmii-exa-mtb-medication-request-lunresertib\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-therapieempfehlung.html\">MII PR MTB Therapieempfehlung Systemische Therapie</a> version: 2026.0.1</p></div><p><b>status</b>: Draft</p><p><b>intent</b>: Option</p><p><b>medication</b>: <span title=\"Codes:{http://fdasis.nlm.nih.gov N95U3A7N57}\">LUNRESERTIB</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>authoredOn</b>: 2023-03-28</p><p><b>reasonReference</b>: <a href=\"Condition-PatientKimMusterperson-PrimaryDiagnosis-2.html\">Condition Bösartige Neubildung: Peritoneum, nicht näher bezeichnet</a></p></div>"
      },
      "status" : "draft",
      "intent" : "option",
      "medicationCodeableConcept" : {
        "coding" : [{
          "system" : "http://fdasis.nlm.nih.gov",
          "code" : "N95U3A7N57",
          "display" : "LUNRESERTIB"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "authoredOn" : "2023-03-28",
      "reasonReference" : [{
        "reference" : "Condition/PatientKimMusterperson-PrimaryDiagnosis-2"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationRequest/mii-exa-mtb-medication-request-lunresertib"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/MedicationRequest/mii-exa-mtb-medication-request-camonsertib",
    "resource" : {
      "resourceType" : "MedicationRequest",
      "id" : "mii-exa-mtb-medication-request-camonsertib",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung|2026.0.1"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_mii-exa-mtb-medication-request-camonsertib\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationRequest mii-exa-mtb-medication-request-camonsertib</b></p><a name=\"mii-exa-mtb-medication-request-camonsertib\"> </a><a name=\"hcmii-exa-mtb-medication-request-camonsertib\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-therapieempfehlung.html\">MII PR MTB Therapieempfehlung Systemische Therapie</a> version: 2026.0.1</p></div><p><b>status</b>: Draft</p><p><b>intent</b>: Option</p><p><b>medication</b>: <span title=\"Codes:{http://fdasis.nlm.nih.gov S1Z7Y5G56T}\">CAMONSERTIB</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>authoredOn</b>: 2023-03-28</p><p><b>reasonReference</b>: <a href=\"Condition-PatientKimMusterperson-PrimaryDiagnosis-2.html\">Condition Bösartige Neubildung: Peritoneum, nicht näher bezeichnet</a></p></div>"
      },
      "status" : "draft",
      "intent" : "option",
      "medicationCodeableConcept" : {
        "coding" : [{
          "system" : "http://fdasis.nlm.nih.gov",
          "code" : "S1Z7Y5G56T",
          "display" : "CAMONSERTIB"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "authoredOn" : "2023-03-28",
      "reasonReference" : [{
        "reference" : "Condition/PatientKimMusterperson-PrimaryDiagnosis-2"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationRequest/mii-exa-mtb-medication-request-camonsertib"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/RequestGroup/mii-exa-mtb-request-group-lunresertib-camonsertib",
    "resource" : {
      "resourceType" : "RequestGroup",
      "id" : "mii-exa-mtb-request-group-lunresertib-camonsertib",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung-kombination|2026.0.1"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"RequestGroup_mii-exa-mtb-request-group-lunresertib-camonsertib\"> </a><p class=\"res-header-id\"><b>Generated Narrative: RequestGroup mii-exa-mtb-request-group-lunresertib-camonsertib</b></p><a name=\"mii-exa-mtb-request-group-lunresertib-camonsertib\"> </a><a name=\"hcmii-exa-mtb-request-group-lunresertib-camonsertib\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-therapieempfehlung-kombination.html\">MII PR MTB Therapieempfehlung Kombinationstherapie</a> version: 2026.0.1</p></div><p><b>MII EX MTB Empfehlung Priorität</b>: 5</p><p><b>MII EX MTB Empfehlung Evidenzgraduierung</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-empfehlung-evidenzgrad m1B}\">m1B</span></p><p><b>MII EX MTB Empfehlung Publikation</b>: <code>http://doi.org</code>/10.1158/1535-7163.TARG-23-PR008</p><p><b>status</b>: Draft</p><p><b>intent</b>: Proposal</p><p><b>code</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ ZS}\">zielgerichtete Substanzen</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>authoredOn</b>: 2023-03-28</p><h3>Actions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Resource</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"MedicationRequest-mii-exa-mtb-medication-request-camonsertib.html\">MedicationRequest: status = draft; intent = option; medication[x] = CAMONSERTIB; authoredOn = 2023-03-28</a></td></tr></table></div>"
      },
      "extension" : [{
        "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-prioritaet",
        "valuePositiveInt" : 5
      },
      {
        "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-evidenzgraduierung",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-empfehlung-evidenzgrad",
            "code" : "m1B"
          }]
        }
      },
      {
        "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-publikation",
        "valueIdentifier" : {
          "system" : "http://doi.org",
          "value" : "10.1158/1535-7163.TARG-23-PR008"
        }
      }],
      "status" : "draft",
      "intent" : "proposal",
      "code" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ",
          "code" : "ZS",
          "display" : "zielgerichtete Substanzen"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "authoredOn" : "2023-03-28",
      "action" : [{
        "resource" : {
          "reference" : "MedicationRequest/mii-exa-mtb-medication-request-camonsertib"
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "RequestGroup/mii-exa-mtb-request-group-lunresertib-camonsertib"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/MedicationRequest/mii-exa-mtb-medication-request-cobimetinib",
    "resource" : {
      "resourceType" : "MedicationRequest",
      "id" : "mii-exa-mtb-medication-request-cobimetinib",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung|2026.0.1"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_mii-exa-mtb-medication-request-cobimetinib\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationRequest mii-exa-mtb-medication-request-cobimetinib</b></p><a name=\"mii-exa-mtb-medication-request-cobimetinib\"> </a><a name=\"hcmii-exa-mtb-medication-request-cobimetinib\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-therapieempfehlung.html\">MII PR MTB Therapieempfehlung Systemische Therapie</a> version: 2026.0.1</p></div><p><b>MII EX MTB Empfehlung Priorität</b>: 6</p><p><b>MII EX MTB Empfehlung Evidenzgraduierung</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-empfehlung-evidenzgrad m3}\">m3</span></p><p><b>MII EX MTB Empfehlung Publikation</b>: <code>http://www.ncbi.nlm.nih.gov/pubmed</code>/31209687</p><p><b>status</b>: Draft</p><p><b>intent</b>: Option</p><p><b>medication</b>: <span title=\"Codes:{http://fdasis.nlm.nih.gov ER29L26N1X}\">COBIMETINIB</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>authoredOn</b>: 2023-03-28</p><p><b>reasonReference</b>: <a href=\"Condition-PatientKimMusterperson-PrimaryDiagnosis-2.html\">Condition Bösartige Neubildung: Peritoneum, nicht näher bezeichnet</a></p></div>"
      },
      "extension" : [{
        "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-prioritaet",
        "valuePositiveInt" : 6
      },
      {
        "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-evidenzgraduierung",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-empfehlung-evidenzgrad",
            "code" : "m3"
          }]
        }
      },
      {
        "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-publikation",
        "valueIdentifier" : {
          "system" : "http://www.ncbi.nlm.nih.gov/pubmed",
          "value" : "31209687"
        }
      }],
      "status" : "draft",
      "intent" : "option",
      "medicationCodeableConcept" : {
        "coding" : [{
          "system" : "http://fdasis.nlm.nih.gov",
          "code" : "ER29L26N1X",
          "display" : "COBIMETINIB"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "authoredOn" : "2023-03-28",
      "reasonReference" : [{
        "reference" : "Condition/PatientKimMusterperson-PrimaryDiagnosis-2"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "MedicationRequest/mii-exa-mtb-medication-request-cobimetinib"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/CarePlan/mii-exa-mtb-kim-musterperson-therapieplan",
    "resource" : {
      "resourceType" : "CarePlan",
      "id" : "mii-exa-mtb-kim-musterperson-therapieplan",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieplan|2026.0.1"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"CarePlan_mii-exa-mtb-kim-musterperson-therapieplan\"> </a><p class=\"res-header-id\"><b>Generated Narrative: CarePlan mii-exa-mtb-kim-musterperson-therapieplan</b></p><a name=\"mii-exa-mtb-kim-musterperson-therapieplan\"> </a><a name=\"hcmii-exa-mtb-kim-musterperson-therapieplan\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-therapieplan.html\">MII PR MTB Therapieplan</a> version: 2026.0.1</p></div><p><b>status</b>: Active</p><p><b>intent</b>: Plan</p><p><b>category</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieplanung-typ praeth}\">prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie)</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>created</b>: 2023-03-28</p><p><b>addresses</b>: <a href=\"Condition-PatientKimMusterperson-PrimaryDiagnosis-2.html\">Condition Bösartige Neubildung: Peritoneum, nicht näher bezeichnet</a></p><p><b>supportingInfo</b>: <a href=\"ClinicalImpression-mii-exa-mtb-kim-musterperson-behandlungsepisode.html\">ClinicalImpression: status = completed; effective[x] = 2023-01-20 --&gt; 2023-03-28</a></p><blockquote><p><b>activity</b></p><p><b>outcomeReference</b>: <a href=\"Procedure-MTBChemo2Procedure.html\">Procedure Chemotherapy</a></p><p><b>reference</b>: <a href=\"MedicationRequest-mii-exa-mtb-medication-request-mirvetuximab.html\">MedicationRequest: extension = 1,m1A,http://doi.org#10.1200/JCO.2022.40.16_suppl.5512,http://www.ncbi.nlm.nih.gov/pubmed#38055253; status = completed; intent = proposal; medication[x] = MIRVETUXIMAB SORAVTANSINE; authoredOn = 2023-03-28</a></p></blockquote><blockquote><p><b>activity</b></p><p><b>reference</b>: <a href=\"ServiceRequest-mii-exa-mtb-study-request-cldn6.html\">ServiceRequest Referral to clinical trial (procedure)</a></p></blockquote><blockquote><p><b>activity</b></p><p><b>reference</b>: <a href=\"ServiceRequest-mii-exa-mtb-study-request-tedova.html\">ServiceRequest Referral to clinical trial (procedure)</a></p></blockquote><blockquote><p><b>activity</b></p><p><b>reference</b>: <a href=\"ServiceRequest-mii-exa-mtb-study-request-ccne1.html\">ServiceRequest Referral to clinical trial (procedure)</a></p></blockquote><blockquote><p><b>activity</b></p><p><b>reference</b>: <a href=\"MedicationRequest-mii-exa-mtb-medication-request-trastuzumab-deruxtecan.html\">MedicationRequest: extension = 3,m1B,http://www.ncbi.nlm.nih.gov/pubmed#35665782,http://www.ncbi.nlm.nih.gov/pubmed#37870536,http://doi.org#10.1200/JCO.2023.41.17_suppl.LBA3000; status = draft; intent = proposal; medication[x] = Trastuzumab deruxtecan; authoredOn = 2023-03-28</a></p></blockquote><blockquote><p><b>activity</b></p><p><b>reference</b>: <a href=\"RequestGroup-mii-exa-mtb-request-group-adavosertib-carboplatin.html\">RequestGroup Chemotherapie + zielgerichtete Substanzen</a></p></blockquote><blockquote><p><b>activity</b></p><p><b>reference</b>: <a href=\"RequestGroup-mii-exa-mtb-request-group-lunresertib-camonsertib.html\">RequestGroup zielgerichtete Substanzen</a></p></blockquote><blockquote><p><b>activity</b></p><p><b>reference</b>: <a href=\"MedicationRequest-mii-exa-mtb-medication-request-cobimetinib.html\">MedicationRequest: extension = 6,m3,http://www.ncbi.nlm.nih.gov/pubmed#31209687; status = draft; intent = option; medication[x] = COBIMETINIB; authoredOn = 2023-03-28</a></p></blockquote><blockquote><p><b>activity</b></p><p><b>reference</b>: <a href=\"ServiceRequest-mii-exa-mtb-kim-humangenetische-beratung-aszites.html\">ServiceRequest Genetic consultation (procedure)</a></p></blockquote><blockquote><p><b>activity</b></p><p><b>reference</b>: <a href=\"ServiceRequest-mii-exa-mtb-kim-histologie-evaluation-aszites.html\">ServiceRequest Refer for histology (procedure)</a></p></blockquote><blockquote><p><b>activity</b></p><p><b>reference</b>: <a href=\"ServiceRequest-mii-exa-mtb-kim-rebiopsie-aszites.html\">ServiceRequest Biopsy (procedure)</a></p></blockquote></div>"
      },
      "status" : "active",
      "intent" : "plan",
      "category" : [{
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieplanung-typ",
          "code" : "praeth"
        }]
      }],
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "created" : "2023-03-28",
      "addresses" : [{
        "reference" : "Condition/PatientKimMusterperson-PrimaryDiagnosis-2"
      }],
      "supportingInfo" : [{
        "reference" : "ClinicalImpression/mii-exa-mtb-kim-musterperson-behandlungsepisode"
      }],
      "activity" : [{
        "outcomeReference" : [{
          "reference" : "Procedure/MTBChemo2Procedure"
        }],
        "reference" : {
          "reference" : "MedicationRequest/mii-exa-mtb-medication-request-mirvetuximab"
        }
      },
      {
        "reference" : {
          "reference" : "ServiceRequest/mii-exa-mtb-study-request-cldn6"
        }
      },
      {
        "reference" : {
          "reference" : "ServiceRequest/mii-exa-mtb-study-request-tedova"
        }
      },
      {
        "reference" : {
          "reference" : "ServiceRequest/mii-exa-mtb-study-request-ccne1"
        }
      },
      {
        "reference" : {
          "reference" : "MedicationRequest/mii-exa-mtb-medication-request-trastuzumab-deruxtecan"
        }
      },
      {
        "reference" : {
          "reference" : "RequestGroup/mii-exa-mtb-request-group-adavosertib-carboplatin"
        }
      },
      {
        "reference" : {
          "reference" : "RequestGroup/mii-exa-mtb-request-group-lunresertib-camonsertib"
        }
      },
      {
        "reference" : {
          "reference" : "MedicationRequest/mii-exa-mtb-medication-request-cobimetinib"
        }
      },
      {
        "reference" : {
          "reference" : "ServiceRequest/mii-exa-mtb-kim-humangenetische-beratung-aszites"
        }
      },
      {
        "reference" : {
          "reference" : "ServiceRequest/mii-exa-mtb-kim-histologie-evaluation-aszites"
        }
      },
      {
        "reference" : {
          "reference" : "ServiceRequest/mii-exa-mtb-kim-rebiopsie-aszites"
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "CarePlan/mii-exa-mtb-kim-musterperson-therapieplan"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/mii-exa-mtb-kim-tumorzellgehalt-aszites",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-mtb-kim-tumorzellgehalt-aszites",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-tumorzellgehalt|2026.0.1"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-mtb-kim-tumorzellgehalt-aszites\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-mtb-kim-tumorzellgehalt-aszites</b></p><a name=\"mii-exa-mtb-kim-tumorzellgehalt-aszites\"> </a><a name=\"hcmii-exa-mtb-kim-tumorzellgehalt-aszites\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-tumorzellgehalt.html\">MII PR MTB Tumorzellgehalt</a> version: 2026.0.1</p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 93356-4}\">Cells with cytogenetic abnormality [#] in Blood or Tissue by Molecular genetics method</span></p><p><b>value</b>: 0.028 %<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code% = '%')</span></p><p><b>method</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-bestimmungsmethode-tumorzellgehalt histologic}\">Histologisch</span></p></div>"
      },
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "93356-4",
          "display" : "Cells with cytogenetic abnormality [#] in Blood or Tissue by Molecular genetics method"
        }]
      },
      "valueQuantity" : {
        "value" : 0.028,
        "system" : "http://unitsofmeasure.org",
        "code" : "%"
      },
      "method" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-bestimmungsmethode-tumorzellgehalt",
          "code" : "histologic"
        }]
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-mtb-kim-tumorzellgehalt-aszites"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/ServiceRequest/mii-exa-mtb-kim-humangenetische-beratung-aszites",
    "resource" : {
      "resourceType" : "ServiceRequest",
      "id" : "mii-exa-mtb-kim-humangenetische-beratung-aszites",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-humangenetische-beratung-auftrag|2026.0.1"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ServiceRequest_mii-exa-mtb-kim-humangenetische-beratung-aszites\"> </a><p class=\"res-header-id\"><b>Generated Narrative: ServiceRequest mii-exa-mtb-kim-humangenetische-beratung-aszites</b></p><a name=\"mii-exa-mtb-kim-humangenetische-beratung-aszites\"> </a><a name=\"hcmii-exa-mtb-kim-humangenetische-beratung-aszites\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-humangenetische-beratung-auftrag.html\">MII PR MTB Human-genetische Beratung Auftrag</a> version: 2026.0.1</p></div><p><b>status</b>: Completed</p><p><b>intent</b>: Proposal</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 788339009}\">Genetic consultation (procedure)</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>reasonCode</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-auftrag-begruendung secondary-tumor}\">Zweittumor</span></p><p><b>specimen</b>: <a href=\"Specimen-PatientKimMusterperson-AscitesSpecimen-2.html\">Specimen: accessionIdentifier = Z230201/23; type = Ascitic fluid specimen (specimen)</a></p></div>"
      },
      "status" : "completed",
      "intent" : "proposal",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "788339009",
          "display" : "Genetic consultation (procedure)"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "reasonCode" : [{
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-auftrag-begruendung",
          "code" : "secondary-tumor"
        }]
      }],
      "specimen" : [{
        "reference" : "Specimen/PatientKimMusterperson-AscitesSpecimen-2"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "ServiceRequest/mii-exa-mtb-kim-humangenetische-beratung-aszites"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/ServiceRequest/mii-exa-mtb-kim-histologie-evaluation-aszites",
    "resource" : {
      "resourceType" : "ServiceRequest",
      "id" : "mii-exa-mtb-kim-histologie-evaluation-aszites",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-histologie-evaluation-auftrag|2026.0.1"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ServiceRequest_mii-exa-mtb-kim-histologie-evaluation-aszites\"> </a><p class=\"res-header-id\"><b>Generated Narrative: ServiceRequest mii-exa-mtb-kim-histologie-evaluation-aszites</b></p><a name=\"mii-exa-mtb-kim-histologie-evaluation-aszites\"> </a><a name=\"hcmii-exa-mtb-kim-histologie-evaluation-aszites\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-histologie-evaluation-auftrag.html\">MII PR MTB Histologie-Evaluation Auftrag</a> version: 2026.0.1</p></div><p><b>status</b>: Draft</p><p><b>intent</b>: Proposal</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 183825009}\">Refer for histology (procedure)</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>reasonReference</b>: <a href=\"Observation-mii-exa-mtb-kim-tumorzellgehalt-aszites.html\">Observation Cells with cytogenetic abnormality [#] in Blood or Tissue by Molecular genetics method</a></p><p><b>specimen</b>: <a href=\"Specimen-PatientKimMusterperson-AscitesSpecimen-2.html\">Specimen: accessionIdentifier = Z230201/23; type = Ascitic fluid specimen (specimen)</a></p></div>"
      },
      "status" : "draft",
      "intent" : "proposal",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "183825009",
          "display" : "Refer for histology (procedure)"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "reasonReference" : [{
        "reference" : "Observation/mii-exa-mtb-kim-tumorzellgehalt-aszites"
      }],
      "specimen" : [{
        "reference" : "Specimen/PatientKimMusterperson-AscitesSpecimen-2"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "ServiceRequest/mii-exa-mtb-kim-histologie-evaluation-aszites"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/ServiceRequest/mii-exa-mtb-kim-rebiopsie-aszites",
    "resource" : {
      "resourceType" : "ServiceRequest",
      "id" : "mii-exa-mtb-kim-rebiopsie-aszites",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-biopsie-auftrag|2026.0.1"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ServiceRequest_mii-exa-mtb-kim-rebiopsie-aszites\"> </a><p class=\"res-header-id\"><b>Generated Narrative: ServiceRequest mii-exa-mtb-kim-rebiopsie-aszites</b></p><a name=\"mii-exa-mtb-kim-rebiopsie-aszites\"> </a><a name=\"hcmii-exa-mtb-kim-rebiopsie-aszites\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-biopsie-auftrag.html\">MII PR MTB Biopsie Auftrag</a> version: 2026.0.1</p></div><p><b>status</b>: Completed</p><p><b>intent</b>: Proposal</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 86273004}\">Biopsy (procedure)</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>reasonReference</b>: <a href=\"Observation-mii-exa-mtb-kim-tumorzellgehalt-aszites.html\">Observation Cells with cytogenetic abnormality [#] in Blood or Tissue by Molecular genetics method</a></p><p><b>specimen</b>: <a href=\"Specimen-PatientKimMusterperson-AscitesSpecimen-2.html\">Specimen: accessionIdentifier = Z230201/23; type = Ascitic fluid specimen (specimen)</a></p></div>"
      },
      "status" : "completed",
      "intent" : "proposal",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "86273004",
          "display" : "Biopsy (procedure)"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "reasonReference" : [{
        "reference" : "Observation/mii-exa-mtb-kim-tumorzellgehalt-aszites"
      }],
      "specimen" : [{
        "reference" : "Specimen/PatientKimMusterperson-AscitesSpecimen-2"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "ServiceRequest/mii-exa-mtb-kim-rebiopsie-aszites"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Condition/mii-exa-mtb-kim-diagnose",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "mii-exa-mtb-kim-diagnose",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-diagnose-primaertumor|2026.0.1"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_mii-exa-mtb-kim-diagnose\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition mii-exa-mtb-kim-diagnose</b></p><a name=\"mii-exa-mtb-kim-diagnose\"> </a><a name=\"hcmii-exa-mtb-kim-diagnose\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-diagnose-primaertumor.html\">MII PR MTB Diagnose Primärtumor</a> version: 2026.0.1</p></div><p><b>Condition Asserted Date</b>: 2021-06-10</p><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status unconfirmed}, {https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-primaertumor-diagnosesicherung 2}\">Unconfirmed</span></p><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/icd-10-gm C48.2}\">Bösartige Neubildung: Peritoneum, nicht näher bezeichnet</span></p><p><b>bodySite</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/icd-o-3 C56.9}\">Ovar</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>recordedDate</b>: 2021-06-10</p><blockquote><p><b>stage</b></p><p><b>assessment</b>: <a href=\"Observation-mii-exa-mtb-kim-tumorausbreitung.html\">Observation Tumor stage</a></p><p><b>type</b>: <span title=\"Codes:{https://nih-ncpi.github.io/ncpi-fhir-ig/CodeSystem-ncit.html C19251}\">Stage at Diagnosis</span></p></blockquote><blockquote><p><b>stage</b></p><p><b>assessment</b>: <a href=\"Observation-mii-exa-mtb-kim-oncotree.html\">Observation Histologic grade of neoplasm (observable entity)</a></p><p><b>type</b>: <span title=\"Codes:{http://snomed.info/sct 371441004}\">Histologic type of proliferative mass</span></p></blockquote></div>"
      },
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
        "valueDateTime" : "2021-06-10"
      }],
      "clinicalStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
          "code" : "active"
        }]
      },
      "verificationStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
          "code" : "unconfirmed"
        },
        {
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-primaertumor-diagnosesicherung",
          "code" : "2"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
          "version" : "2023",
          "code" : "C48.2",
          "display" : "Bösartige Neubildung: Peritoneum, nicht näher bezeichnet"
        }]
      },
      "bodySite" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
          "code" : "C56.9",
          "display" : "Ovar"
        }]
      }],
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "recordedDate" : "2021-06-10",
      "stage" : [{
        "assessment" : [{
          "reference" : "Observation/mii-exa-mtb-kim-tumorausbreitung"
        }],
        "type" : {
          "coding" : [{
            "system" : "https://nih-ncpi.github.io/ncpi-fhir-ig/CodeSystem-ncit.html",
            "code" : "C19251",
            "display" : "Stage at Diagnosis"
          }]
        }
      },
      {
        "assessment" : [{
          "reference" : "Observation/mii-exa-mtb-kim-oncotree"
        }],
        "type" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "371441004",
            "display" : "Histologic type of proliferative mass"
          }]
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Condition/mii-exa-mtb-kim-diagnose"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/mii-exa-mtb-kim-tumorausbreitung",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-mtb-kim-tumorausbreitung",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-tumorausbreitung|2026.0.1"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-mtb-kim-tumorausbreitung\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-mtb-kim-tumorausbreitung</b></p><a name=\"mii-exa-mtb-kim-tumorausbreitung\"> </a><a name=\"hcmii-exa-mtb-kim-tumorausbreitung\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-tumorausbreitung.html\">MII PR MTB Tumorausbreitung</a> version: 2026.0.1</p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 473302008}\">Aware of diagnosis</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 371508000}\">Tumor stage</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>effective</b>: 2021-06-10</p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 255127006}\">Local tumor spread</span></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "473302008",
          "display" : "Aware of diagnosis"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "371508000",
          "display" : "Tumor stage"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "effectiveDateTime" : "2021-06-10",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "255127006"
        }]
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-mtb-kim-tumorausbreitung"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/mii-exa-mtb-kim-oncotree",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-mtb-kim-oncotree",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-oncotree|2026.0.1"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-mtb-kim-oncotree\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-mtb-kim-oncotree</b></p><a name=\"mii-exa-mtb-kim-oncotree\"> </a><a name=\"hcmii-exa-mtb-kim-oncotree\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-mtb-oncotree.html\">MII PR MTB Oncotree Klassifikation</a> version: 2026.0.1</p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 371469007}\">Histologic grade of neoplasm (observable entity)</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>effective</b>: 2021-06-10</p><p><b>value</b>: <span title=\"Codes:{http://data.mskcc.org/ontologies/oncotree HGONEC}\">HGONEC</span></p></div>"
      },
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "371469007",
          "display" : "Histologic grade of neoplasm (observable entity)"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "effectiveDateTime" : "2021-06-10",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://data.mskcc.org/ontologies/oncotree",
          "code" : "HGONEC"
        }]
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-mtb-kim-oncotree"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Condition/PatientKimMusterperson-PrimaryDiagnosis-2",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "PatientKimMusterperson-PrimaryDiagnosis-2",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_PatientKimMusterperson-PrimaryDiagnosis-2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition PatientKimMusterperson-PrimaryDiagnosis-2</b></p><a name=\"PatientKimMusterperson-PrimaryDiagnosis-2\"> </a><a name=\"hcPatientKimMusterperson-PrimaryDiagnosis-2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor\">MII PR Onkologie Diagnose Primärtumor</a></p></div><p><b>Condition Asserted Date</b>: 2021-06-10</p><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status unconfirmed}, {https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-primaertumor-diagnosesicherung 2}\">Unconfirmed</span></p><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/icd-10-gm C48.2}\">Bösartige Neubildung: Peritoneum, nicht näher bezeichnet</span></p><p><b>bodySite</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/icd-o-3 C56.9}\">Ovar</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>recordedDate</b>: 2021-06-10</p></div>"
      },
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
        "valueDateTime" : "2021-06-10"
      }],
      "clinicalStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
          "code" : "active"
        }]
      },
      "verificationStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
          "code" : "unconfirmed"
        },
        {
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-primaertumor-diagnosesicherung",
          "code" : "2"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
          "version" : "2020",
          "code" : "C48.2",
          "display" : "Bösartige Neubildung: Peritoneum, nicht näher bezeichnet"
        }]
      },
      "bodySite" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
          "code" : "C56.9",
          "display" : "Ovar"
        }]
      }],
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "recordedDate" : "2021-06-10"
    },
    "request" : {
      "method" : "PUT",
      "url" : "Condition/PatientKimMusterperson-PrimaryDiagnosis-2"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Observation/mii-exa-onko-allgemeiner-leistungszustand-ecog",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-onko-allgemeiner-leistungszustand-ecog",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-ecog"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_mii-exa-onko-allgemeiner-leistungszustand-ecog\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-onko-allgemeiner-leistungszustand-ecog</b></p><a name=\"mii-exa-onko-allgemeiner-leistungszustand-ecog\"> </a><a name=\"hcmii-exa-onko-allgemeiner-leistungszustand-ecog\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-ecog\">MII PR Onkologie Allgemeiner Leistungszustand ECOG</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 423740007}\">ECOG performance status</span></p><p><b>subject</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>value</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-allgemeiner-leistungszustand-ecog 2}\">Gehfähig, Selbstversorgung möglich, aber nicht arbeitsfähig; kann mehr als 50 % der Wachzeit aufstehen (50 - 60 % nach Karnofsky)</span></p></div>"
      },
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "423740007"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-allgemeiner-leistungszustand-ecog",
          "code" : "2",
          "display" : "Gehfähig, Selbstversorgung möglich, aber nicht arbeitsfähig; kann mehr als 50 % der Wachzeit aufstehen (50 - 60 % nach Karnofsky)"
        }]
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "Observation/mii-exa-onko-allgemeiner-leistungszustand-ecog"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Organization/MyHospital",
    "resource" : {
      "resourceType" : "Organization",
      "id" : "MyHospital",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Organization_MyHospital\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Organization MyHospital</b></p><a name=\"MyHospital\"> </a><a name=\"hcMyHospital\"> </a><p><b>type</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/organization-type prov}\">Healthcare Provider</span></p><p><b>name</b>: Example General Hospital</p><p><b>address</b>: 1234 Health St Medicity CareState 12345 DE </p></div>"
      },
      "type" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
          "code" : "prov",
          "display" : "Healthcare Provider"
        }]
      }],
      "name" : "Example General Hospital",
      "address" : [{
        "line" : ["1234 Health St"],
        "city" : "Medicity",
        "state" : "CareState",
        "postalCode" : "12345",
        "country" : "DE"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Organization/MyHospital"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Organization/MyInsurer",
    "resource" : {
      "resourceType" : "Organization",
      "id" : "MyInsurer",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Organization_MyInsurer\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Organization MyInsurer</b></p><a name=\"MyInsurer\"> </a><a name=\"hcMyInsurer\"> </a><p><b>type</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/organization-type ins}\">Insurance Company</span></p><p><b>name</b>: Example Health Insurance Co.</p><p><b>address</b>: 789 Insurance Blvd Policytown InsureState 98765 DE </p></div>"
      },
      "type" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
          "code" : "ins",
          "display" : "Insurance Company"
        }]
      }],
      "name" : "Example Health Insurance Co.",
      "address" : [{
        "line" : ["789 Insurance Blvd"],
        "city" : "Policytown",
        "state" : "InsureState",
        "postalCode" : "98765",
        "country" : "DE"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Organization/MyInsurer"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Coverage/MyCoverage",
    "resource" : {
      "resourceType" : "Coverage",
      "id" : "MyCoverage",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Coverage_MyCoverage\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Coverage MyCoverage</b></p><a name=\"MyCoverage\"> </a><a name=\"hcMyCoverage\"> </a><p><b>status</b>: Active</p><p><b>type</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ActCode EHCPOL}\">extended healthcare</span></p><p><b>beneficiary</b>: <a href=\"Patient-PatientKimMusterperson.html\">Kim Musterperson  (no stated gender), DoB: 1956-03-14</a></p><p><b>period</b>: 2023-01-01 --&gt; 2025-12-31</p><p><b>payor</b>: <a href=\"Organization-MyInsurer.html\">Organization Example Health Insurance Co.</a></p></div>"
      },
      "status" : "active",
      "type" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
          "code" : "EHCPOL",
          "display" : "extended healthcare"
        }]
      },
      "beneficiary" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "period" : {
        "start" : "2023-01-01",
        "end" : "2025-12-31"
      },
      "payor" : [{
        "reference" : "Organization/MyInsurer"
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "Coverage/MyCoverage"
    }
  }]
}

```
