// dnpm-grading-to-mii.fsh
// ConceptMap: DNPM grading codes → MII Onkologie Grading CodeSystem
// The DNPM DIP API returns tumor grading codes under the system
// "dnpm-dip/mtb/tumor-grading" using numeric codes 1–4 that correspond
// to the oBDS grading scale defined in
// https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-grading

Instance: DNPMGradingToMII
InstanceOf: ConceptMap
Usage: #definition
* url = "https://dnpm-dip.net/fhir/ConceptMap/dnpm-grading-to-mii"
* name = "DNPMGradingToMII"
* title = "DNPM Tumor Grading to MII Onkologie Grading"
* status = #active
* experimental = false
* date = "2026-03-25"
* description = "Maps DNPM DIP tumor grading codes to the MII Onkologie Grading CodeSystem (mii-cs-onko-grading). Numeric codes 1–4 have direct equivalents; DNPM does not currently emit the letter-coded MII grades (L, M, H, B, etc.)."
* purpose = "Technisches Mapping zur Transformation von DNPM-Grading-Codes zu MII-CS-Onko-Grading"
* sourceUri = "dnpm-dip/mtb/tumor-grading"
* targetUri = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-grading"

* group[+]
  * source = "dnpm-dip/mtb/tumor-grading"
  * target = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-grading"
  // Grade 1 – gut differenziert
  * element[+]
    * code = #1
    * display = "G1"
    * target[+].code = #1
    * target[=].display = "gut differenziert"
    * target[=].equivalence = #equal
  // Grade 2 – mäßig differenziert
  * element[+]
    * code = #2
    * display = "G2"
    * target[+].code = #2
    * target[=].display = "mäßig differenziert"
    * target[=].equivalence = #equal
  // Grade 3 – schlecht differenziert
  * element[+]
    * code = #3
    * display = "G3"
    * target[+].code = #3
    * target[=].display = "schlecht differenziert"
    * target[=].equivalence = #equal
  // Grade 4 – undifferenziert
  * element[+]
    * code = #4
    * display = "G4"
    * target[+].code = #4
    * target[=].display = "undifferenziert"
    * target[=].equivalence = #equal
  // Unknown / not determinable
  * element[+]
    * code = #X
    * display = "GX"
    * target[+].code = #X
    * target[=].display = "nicht bestimmbar"
    * target[=].equivalence = #equal
  // Unknown – maps to U
  * element[+]
    * code = #unknown
    * display = "Unbekannt"
    * target[+].code = #U
    * target[=].display = "unbekannt"
    * target[=].equivalence = #equivalent
