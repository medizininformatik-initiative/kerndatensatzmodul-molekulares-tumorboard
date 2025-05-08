Profile: MII_PR_MTB_Systemische_Therapie_Medication_Statement
Parent: MedicationStatement
Id: mii-pr-mtb-systemtherapie-medication-statement
Title: "MII PR MTB Systemtherapie Medication Statement"
Description: "Medication Statement zur MTB-Systemtherapie mit Wirkstoff und Dosis"
* insert PR_Header

* basedOn 0..1 MS
* basedOn only Reference(MII_PR_MTB_Therapieempfehlung or MedicationRequest)
* basedOn ^short = "Therapieempfehlung"
* basedOn ^definition = "Referenz auf Therapieempfehlung in MTB-Therapieplan"

* partOf 1..1 MS
* partOf only Reference(MII_PR_MTB_Systemische_Therapie or Procedure or MedicationStatement)
* partOf ^short = "Systemische Therapie"
* partOf ^definition = "Dazugehörige MTB Systemische Therapie"

* status MS
// * status ^short = "Status"
// * status from MII_VS_MTB_Systemische_Therapie_Status

* medication[x] MS
* medication[x] ^short = "Wirkstoffe"

// von MII_PR_Medikation_MedicationStatement Profil übernommen
* medicationCodeableConcept 0..1 MS
* medicationCodeableConcept only CodeableConcept
* medicationCodeableConcept ^sliceName = "medicationCodeableConcept"
* medicationCodeableConcept ^short = "Medikation Code"
* medicationCodeableConcept ^definition = "Code für das Medikament, welches Gegenstand des Eintrags ist."
* medicationCodeableConcept.coding MS
* medicationCodeableConcept.coding ^slicing.discriminator.type = #pattern
* medicationCodeableConcept.coding ^slicing.discriminator.path = "$this"
* medicationCodeableConcept.coding ^slicing.rules = #open

* medicationCodeableConcept.coding contains
    Pharmazentralnummer 0..* MS and
    atcClassDe 0..* MS and
    atcClassEn 0..* MS
* medicationCodeableConcept.coding[Pharmazentralnummer] ^short = "PZN Code"
* medicationCodeableConcept.coding[Pharmazentralnummer] ^definition = "Ein Verweis auf einen von der Pharmazentralnummer (PZN) definierten Code"
* medicationCodeableConcept.coding[Pharmazentralnummer].system 1.. MS
* medicationCodeableConcept.coding[Pharmazentralnummer].system = "http://fhir.de/CodeSystem/ifa/pzn"
* medicationCodeableConcept.coding[Pharmazentralnummer].code 1.. MS

* medicationCodeableConcept.coding[atcClassDe] from https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/ValueSet/mii-vs-medikation-atc (required)
* medicationCodeableConcept.coding[atcClassDe] ^short = "ATC Klassifikation deutsche Version"
* medicationCodeableConcept.coding[atcClassDe] ^definition = "ATC-Codes für Fertigarzneimittel bspw. von Kombiprodukten"
* medicationCodeableConcept.coding[atcClassDe].system 1.. MS
* medicationCodeableConcept.coding[atcClassDe].system = "http://fhir.de/CodeSystem/bfarm/atc"
* medicationCodeableConcept.coding[atcClassDe].code 1.. MS

* medicationCodeableConcept.coding[atcClassEn] ^short = "Anatomical Therapeutic Chemical Classification System"
* medicationCodeableConcept.coding[atcClassEn] ^definition = "ATC Classification International WHO Version"
* medicationCodeableConcept.coding[atcClassEn].system MS
* medicationCodeableConcept.coding[atcClassEn].system = "http://www.whocc.no/atc"
* medicationCodeableConcept.coding[atcClassEn].code 1.. MS

* medicationCodeableConcept.text MS
* subject MS
* subject only Reference(Patient)
* effective[x] 1..1 MS
* effective[x]
* effectivePeriod MS
* effectivePeriod.start 1..1 MS
* effectivePeriod.start ^short = "Startdatum"
* effectivePeriod.end 1..1 MS
* effectivePeriod.end ^short = "Enddatum"
* note 0..* MS
* note ^short = "Bemerkungen"

* dosage MS
* dosage ^slicing.discriminator.type = #value
* dosage ^slicing.discriminator.path = "system"
* dosage ^slicing.rules = #open
* dosage ^slicing.description = "Slice für das Ermöglichen der Angabe der Dosisdichte"
* dosage ^slicing.ordered = false
* dosage contains Dosisdichte 0..1 MS
* dosage[Dosisdichte] 0..1 MS 
* dosage[Dosisdichte] ^short = "Dosisdichte"
* dosage[Dosisdichte] ^definition = "Die Dosisdichte gibt an ob, in welchem Ausmaß eine Dosisreduktion vorliegt."
* dosage[Dosisdichte].doseAndRate.doseQuantity.system = $mii-cs-mtb-dosisdichte
* dosage[Dosisdichte].doseAndRate.doseQuantity.code from MII_VS_MTB_Dosisdichte
* dosage contains Dosis 0..1 MS
* dosage[Dosis] 0..1 MS
* dosage[Dosis] ^short = "Dosis"
* dosage[Dosis] ^definition = "Dosis als absoluter Wert"