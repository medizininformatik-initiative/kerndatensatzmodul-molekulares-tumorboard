// dnpm-vital-status-to-fhir.fsh
// ConceptMap: DNPM vital-status codes → FHIR deceasedBoolean / observation-vital-status
// Used as formal documentation of the inline vital-status mapping in sm-patient-demographics.fml.

Instance: DNPMVitalStatusToFHIR
InstanceOf: ConceptMap
Usage: #definition
* url = "https://dnpm-dip.net/fhir/ConceptMap/dnpm-vital-status-to-fhir"
* name = "DNPMVitalStatusToFHIR"
* title = "DNPM Vital Status to FHIR Patient.deceasedBoolean"
* status = #active
* experimental = false
* date = "2026-03-25"
* description = "Maps DNPM DIP vital-status codes to FHIR Patient.deceasedBoolean. 'deceased' → true; 'alive' → false. The FHIR target system is modelled as a boolean flag rather than a code system; the ConceptMap documents the semantic equivalence."
* sourceUri = "VitalStatus"
* targetUri = "http://hl7.org/fhir/StructureDefinition/Patient#Patient.deceased[x]"
* group[+]
  * source = "VitalStatus"
  * target = "http://hl7.org/fhir/StructureDefinition/Patient"
  * element[+]
    * code = #alive
    * display = "Alive"
    * target[+].code = #false
    * target[=].display = "Patient.deceasedBoolean = false"
    * target[=].equivalence = #equivalent
    * target[=].comment = "Patient is alive; deceasedBoolean set to false."
  * element[+]
    * code = #deceased
    * display = "Deceased"
    * target[+].code = #true
    * target[=].display = "Patient.deceasedBoolean = true"
    * target[=].equivalence = #equivalent
    * target[=].comment = "Patient is deceased; deceasedBoolean set to true."
  * element[+]
    * code = #unknown
    * display = "Unknown"
    * target[+].code = #absent
    * target[=].display = "Patient.deceased[x] absent"
    * target[=].equivalence = #narrower
    * target[=].comment = "Vital status unknown; deceased element is omitted from the Patient resource."
