// dnpm-msi-interpretation-to-mii.fsh
// ConceptMap: DNPM MSI interpretation codes → MII MTB MSI ValueSet (LOINC LL3994-2 / LL1057-0)
//
// Source system : "dnpm-dip/mtb/msi/interpretation"
//   #MSI-H  – High microsatellite instability
//   #MSI-L  – Low microsatellite instability
//   #MSS    – Microsatellite stable
//
// Target system : LOINC answer list LL3994-2 / LL1057-0
//   LA26203-2  MSI-H
//   LA26202-4  MSI-L
//   LA14122-8  Stable  (≈ MSS)
//
// Binding in MII_VS_MTB_Microsatellite_Instability (mii-vs-mtb-msi.fsh):
//   * $LNC#LA14122-8 "Stable"
//   * $LNC#LA14123-6 "Instable"
//   * $LNC#LA11884-6 "Indeterminate"
//   * $LNC#LA26202-4 "MSI-L"
//   * $LNC#LA26203-2 "MSI-H"

Instance: DNPMMsiInterpretationToMII
InstanceOf: ConceptMap
Usage: #definition
* url = "https://dnpm-dip.net/fhir/ConceptMap/dnpm-msi-interpretation-to-mii"
* name = "DNPMMsiInterpretationToMII"
* title = "DNPM MSI Interpretation to MII"
* status = #active
* experimental = false
* date = "2026-03-25"
* description = "Maps DNPM DIP MSI interpretation codes (dnpm-dip/mtb/msi/interpretation) to the corresponding LOINC answer codes used in MII_VS_MTB_Microsatellite_Instability."
* sourceUri = "dnpm-dip/mtb/msi/interpretation"
* targetUri = "http://loinc.org"
* group[+]
  * source = "dnpm-dip/mtb/msi/interpretation"
  * target = "http://loinc.org"
  * element[+]
    * code = #MSI-H
    * display = "High Microsatellite Instability"
    * target[+].code = #LA26203-2
    * target[=].display = "MSI-H"
    * target[=].equivalence = #equal
  * element[+]
    * code = #MSI-L
    * display = "Low Microsatellite Instability"
    * target[+].code = #LA26202-4
    * target[=].display = "MSI-L"
    * target[=].equivalence = #equal
  * element[+]
    * code = #MSS
    * display = "Microsatellite Stable"
    * target[+].code = #LA14122-8
    * target[=].display = "Stable"
    * target[=].equivalence = #equivalent
