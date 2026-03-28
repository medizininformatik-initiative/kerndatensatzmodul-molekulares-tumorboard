// dnpm-gender-to-fhir.fsh
// ConceptMap: DNPM gender codes → FHIR administrative-gender
// Used as formal documentation of the inline gender mapping in sm-patient-demographics.fml.

Instance: DNPMGenderToFHIR
InstanceOf: ConceptMap
Usage: #definition
* url = "https://dnpm-dip.net/fhir/ConceptMap/dnpm-gender-to-fhir"
* name = "DNPMGenderToFHIR"
* title = "DNPM Gender to FHIR Administrative Gender"
* status = #active
* experimental = false
* date = "2026-03-25"
* description = "Maps DNPM DIP gender codes to FHIR administrative-gender codes (http://hl7.org/fhir/administrative-gender)."
* sourceUri = "Gender"
* targetUri = "http://hl7.org/fhir/ValueSet/administrative-gender"
* group[+]
  * source = "Gender"
  * target = "http://hl7.org/fhir/administrative-gender"
  * element[+]
    * code = #female
    * display = "Female"
    * target[+].code = #female
    * target[=].display = "Female"
    * target[=].equivalence = #equal
  * element[+]
    * code = #male
    * display = "Male"
    * target[+].code = #male
    * target[=].display = "Male"
    * target[=].equivalence = #equal
  * element[+]
    * code = #other
    * display = "Other"
    * target[+].code = #other
    * target[=].display = "Other"
    * target[=].equivalence = #equal
  * element[+]
    * code = #unknown
    * display = "Unknown"
    * target[+].code = #unknown
    * target[=].display = "Unknown"
    * target[=].equivalence = #equal
