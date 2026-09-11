# Beispiel-Probe (Tumorgewebe) - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel-Probe (Tumorgewebe)**

## Example Specimen: Beispiel-Probe (Tumorgewebe)

-------

**English**

-------

**status**: Available

**type**: Tissue specimen

**subject**: [Maxim Muster (no stated gender), DoB Unknown](Patient-mii-exa-mtb-patient.md)



## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "mii-exa-mtb-specimen",
  "status" : "available",
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "119376003",
      "display" : "Tissue specimen"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-mtb-patient"
  }
}

```
