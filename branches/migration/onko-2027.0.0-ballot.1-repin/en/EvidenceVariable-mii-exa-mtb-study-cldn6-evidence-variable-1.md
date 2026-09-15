# NCT04503278 CLDN6 uRNA-LPX/CLDN6 modRNA-LPX - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NCT04503278 CLDN6 uRNA-LPX/CLDN6 modRNA-LPX**

## Example EvidenceVariable: NCT04503278 CLDN6 uRNA-LPX/CLDN6 modRNA-LPX

-------

**English**

-------

**status**: Active

### UseContexts

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | [SNOMED CT: 362956003](http://snomed.info/id/362956003)(Procedure/intervention (navigational concept)) | Biological |

### Characteristics

| | |
| :--- | :--- |
| - | **Definition[x]** |
| * | [Group: type = person; actual = false; quantity = 145](Group-mii-exa-mtb-study-cldn6-eligibility-criteria.md) |



## Resource Content

```json
{
  "resourceType" : "EvidenceVariable",
  "id" : "mii-exa-mtb-study-cldn6-evidence-variable-1",
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
}

```
