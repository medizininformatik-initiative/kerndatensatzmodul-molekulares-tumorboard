// Vendored from medizininformatik-initiative/kerndatensatzmodul-onkologie
// input/fsh/example-patient-1.fsh — the Kim-Musterperson prior therapies the
// MTB Behandlungsepisode narrates ("siehe KDS Erweiterungsmodul Onkologie"):
// these instances are not shipped in the onkologie PACKAGE, so the module
// carries them itself like the rest of the vendored Kim scenario.
// basedOn references to PatientKimMusterperson-Tumorkonferenz-* were removed
// (that instance exists in neither module). TODO:REVIEW
Alias: $mii-procedure = https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure

Instance: PatientKimMusterperson-SystemicTherapy-1
InstanceOf: MII_PR_Onko_Systemische_Therapie
Usage: #example
Description: "."
* subject = Reference(PatientKimMusterperson)
* status = #completed
* category = $SCT#18629005 // Administration of drug or medicament (procedure)
* code.coding[ops] = $OPS#8-54 "Zytostatische Chemotherapie, Immuntherapie und antiretrovirale Therapie" // bei Bedarf spezifischer?
* code.coding[ops].version = "2021"
* extension[Intention].valueCodeableConcept = $mii-cs-onko-intention#K // impliziert 
* extension[StellungZurOp].valueCodeableConcept = $mii-cs-onko-therapie-stellungzurop#N "neoadjuvant"
* performedPeriod.start = 2021-07-05
* performedPeriod.end = 2021-09-05
Instance: PatientKimMusterperson-Procedure-4a
InstanceOf: $mii-procedure
Usage: #example  
Description: "30.09.2021 OP Intervalldebulking mittels Längsschnittlaparotomie, Tumorresektion mittels Hysterektomie, bilateraler Adnexektomie, und atpyischer Lebersegmentresektion (Seg. II und V). Postoperativ: R0."
* status = #completed
* subject = Reference(PatientKimMusterperson)
* category = $SCT#387713003 "Surgical procedure"
* code.coding[ops] = $OPS#5-547.0 "Resektion von Gewebe in der Bauchregion ohne sichere Organzuordnung: Intraperitoneal" // alternativ 5-590.8 Resektion von Gewebe ohne sichere Organzuordnung
* code.coding[ops].version = "2021"
* performedDateTime = 2021-09-30
* partOf = Reference(PatientKimMusterperson-Procedure-4)
* outcome = $mii-cs-onko-residualstatus#R0

Instance: PatientKimMusterperson-Procedure-4b
InstanceOf: $mii-procedure
Usage: #example  
Description: "30.09.2021 OP Intervalldebulking mittels Längsschnittlaparotomie, Tumorresektion mittels Hysterektomie, bilateraler Adnexektomie, und atpyischer Lebersegmentresektion (Seg. II und V). Postoperativ: R0."
* status = #completed
* subject = Reference(PatientKimMusterperson)
* category = $SCT#387713003 "Surgical procedure"
* code.coding[ops] = $OPS#5-683 "Uterusexstirpation [Hysterektomie]"
* code.coding[ops].version = "2021"
* performedDateTime = 2021-09-30
* partOf = Reference(PatientKimMusterperson-Procedure-4)
* outcome = $mii-cs-onko-residualstatus#R0

Instance: PatientKimMusterperson-Procedure-4c
InstanceOf: $mii-procedure
Usage: #example  
Description: "30.09.2021 OP Intervalldebulking mittels Längsschnittlaparotomie, Tumorresektion mittels Hysterektomie, bilateraler Adnexektomie, und atpyischer Lebersegmentresektion (Seg. II und V). Postoperativ: R0."
* status = #completed
* subject = Reference(PatientKimMusterperson)
* category = $SCT#387713003 "Surgical procedure"
* code.coding[ops] = $OPS#5-661 "Salpingektomie"
* code.coding[ops].version = "2021"
* performedDateTime = 2021-09-30
* partOf = Reference(PatientKimMusterperson-Procedure-4)
* outcome = $mii-cs-onko-residualstatus#R0

Instance: PatientKimMusterperson-Procedure-4d
InstanceOf: $mii-procedure
Usage: #example  
Description: "30.09.2021 OP Intervalldebulking mittels Längsschnittlaparotomie, Tumorresektion mittels Hysterektomie, bilateraler Adnexektomie, und atpyischer Lebersegmentresektion (Seg. II und V). Postoperativ: R0."
* status = #completed
* subject = Reference(PatientKimMusterperson)
* category = $SCT#387713003 "Surgical procedure"
* code.coding[ops] = $OPS#5-501 "Lokale Exzision und Destruktion von erkranktem Gewebe der Leber (atypische Leberresektion)"
* code.coding[ops].version = "2021"
* performedDateTime = 2021-09-30
* partOf = Reference(PatientKimMusterperson-Procedure-4)
* outcome = $mii-cs-onko-residualstatus#R0

Instance: PatientKimMusterperson-SystemicTherapy-2
InstanceOf: MII_PR_Onko_Systemische_Therapie
Usage: #example
Description: "."
* subject = Reference(PatientKimMusterperson)
* status = #completed
* category = $SCT#18629005 // Administration of drug or medicament (procedure)
* code.coding[ops] = $OPS#8-54 "Zytostatische Chemotherapie, Immuntherapie und antiretrovirale Therapie" // bei Bedarf spezifischer?
* code.coding[ops].version = "2021"
* extension[Intention].valueCodeableConcept = $mii-cs-onko-intention#K // impliziert 
* extension[StellungZurOp].valueCodeableConcept = $mii-cs-onko-therapie-stellungzurop#A "adjuvant"
* performedPeriod.start = 2021-11-08
* performedPeriod.end = 2022-01-09

Instance: PatientKimMusterperson-SystemicTherapy-3
InstanceOf: MII_PR_Onko_Systemische_Therapie
Usage: #example
Description: "."
* subject = Reference(PatientKimMusterperson)
* status = #completed
* category = $SCT#18629005 // Administration of drug or medicament (procedure)
* code.coding[ops] = $OPS#8-54 "Zytostatische Chemotherapie, Immuntherapie und antiretrovirale Therapie" // bei Bedarf spezifischer?
* code.coding[ops].version = "2022"
* extension[Intention].valueCodeableConcept = $mii-cs-onko-intention#K // impliziert 
* extension[StellungZurOp].valueCodeableConcept = $mii-cs-onko-therapie-stellungzurop#A "adjuvant"
* performedPeriod.start = 2022-01-25
