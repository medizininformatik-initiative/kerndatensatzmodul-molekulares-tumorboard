// dnpm-therapy-status-to-mii.fsh
// ConceptMap: DNPM DIP therapy status codes → FHIR MedicationStatement status
// Source system: dnpm-dip/therapy/status
// Target system: http://hl7.org/fhir/CodeSystem/medication-statement-status
//
// Used as formal documentation of the inline therapy-status mapping in
// sm-guideline-therapy.fml (group MapGuidelineTherapy).
// The inline Procedure status mapping in MapGuidelineProcedure follows the
// same source codes but targets http://hl7.org/fhir/event-status instead;
// that secondary target is described in the comment section below.
//
// MedicationStatement status target mapping:
//   completed  → completed   (equal)
//   stopped    → stopped     (equal)
//   ongoing    → active      (equivalent — ongoing is narrower; FHIR "active" covers it)
//   not-done   → not-taken   (equivalent — closest FHIR concept)
//   unknown    → unknown     (equal)
//
// Procedure status target mapping (informational):
//   ongoing    → in-progress (equivalent)
//   completed  → completed   (equal)
//   stopped    → stopped     (equal)
//   not-done   → not-done    (equal)
//   unknown    → unknown     (equal)

Instance: DNPMTherapyStatusToFHIR
InstanceOf: ConceptMap
Usage: #definition
* url = "https://dnpm-dip.net/fhir/ConceptMap/dnpm-therapy-status-to-fhir"
* name = "DNPMTherapyStatusToFHIR"
* title = "DNPM Therapy Status to FHIR MedicationStatement Status"
* status = #active
* experimental = false
* date = "2026-03-25"
* description = "Maps DNPM DIP therapy status codes (system: dnpm-dip/therapy/status) to FHIR R4 MedicationStatement status codes (http://hl7.org/fhir/CodeSystem/medication-statement-status). Intended for use with MII_PR_MTB_Systemische_Vortherapie and all resources derived from MII_PR_Onko_Systemische_Therapie."
* sourceUri = "dnpm-dip/therapy/status"
* targetUri = "http://hl7.org/fhir/ValueSet/medication-statement-status"
* group[+]
  * source = "dnpm-dip/therapy/status"
  * target = "http://hl7.org/fhir/CodeSystem/medication-statement-status"
  * element[+]
    * code = #completed
    * display = "Abgeschlossen"
    * target[+].code = #completed
    * target[=].display = "Completed"
    * target[=].equivalence = #equal
    * target[=].comment = "Therapy has been completed as planned."
  * element[+]
    * code = #stopped
    * display = "Abgebrochen"
    * target[+].code = #stopped
    * target[=].display = "Stopped"
    * target[=].equivalence = #equal
    * target[=].comment = "Therapy was stopped before planned completion."
  * element[+]
    * code = #ongoing
    * display = "Laufend"
    * target[+].code = #active
    * target[=].display = "Active"
    * target[=].equivalence = #equivalent
    * target[=].comment = "Therapy is currently ongoing; FHIR 'active' is the closest equivalent."
  * element[+]
    * code = #not-done
    * display = "Nicht durchgeführt"
    * target[+].code = #not-taken
    * target[=].display = "Not Taken"
    * target[=].equivalence = #equivalent
    * target[=].comment = "Therapy was recommended but not started; FHIR 'not-taken' is the closest equivalent."
  * element[+]
    * code = #unknown
    * display = "Unbekannt"
    * target[+].code = #unknown
    * target[=].display = "Unknown"
    * target[=].equivalence = #equal
    * target[=].comment = "Therapy status is unknown."
