# MyCoverage - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MyCoverage**

## Example Coverage: MyCoverage

**status**: Active

**type**: extended healthcare

**beneficiary**: [Kim Musterperson (no stated gender), DoB: 1956-03-14](Patient-PatientKimMusterperson.md)

**period**: 2023-01-01 --> 2025-12-31

**payor**: [Organization Example Health Insurance Co.](Organization-MyInsurer.md)



## Resource Content

```json
{
  "resourceType" : "Coverage",
  "id" : "MyCoverage",
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
}

```
