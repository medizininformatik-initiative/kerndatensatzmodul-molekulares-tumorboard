Profile: MII_PR_MTB_Tumorausbreitung
Parent: Observation
Id: mii-pr-mtb-tumorausbreitung
Title: "MII PR MTB Tumorausbreitung"
Description: "Angabe zur Tumorausbreitung"
// TODO: Ausbreitung als Observation (nicht in InfoModell enthalten)?
* insert PR_Header

// Tumor stage at time of "Aware of diagnosis" or "Diagnosis deferred"
* category 1..* MS
* category.coding 1..* MS

* category.coding ^slicing.discriminator.type = #pattern
* category.coding ^slicing.discriminator.path = "code"
* category.coding ^slicing.rules = #open
* category.coding ^slicing.description = "Slice für Coding"
* category.coding ^slicing.ordered = false

* category.coding contains ErstdiagnoseZeitpunkt 0..1 MS
* category.coding[ErstdiagnoseZeitpunkt] = $SCT#473302008 "Aware of diagnosis"

* category.coding contains MolekularesTumorboardZeitpunkt 0..1 MS
* category.coding[MolekularesTumorboardZeitpunkt] = $SCT#93771000119109 "Diagnosis deferred"

// Observation represents simplified tumor stage
* code 1..1 MS
* code.coding 1..* MS
* code.coding = $SCT#371508000 "Tumor stage"

// Patient from Module Person
* subject 1..1 MS
* subject only Reference(MII_PR_Person_Patient or MII_PR_Person_PatientPseudonymisiert)

// Encounter from Module Fall
* encounter 0..1 MS
* encounter only Reference(MII_PR_Fall_KontaktGesundheitseinrichtung)

// Date of first diagnosis or molecular tumor board diagnosis
* effective[x] 1..1 MS
* effective[x] only dateTime
* effectiveDateTime ^short = "Zeitpunkt Tumorausbreitung"
* effectiveDateTime ^definition = "Zeitpunkt der Feststellung der Tumorausbreitung"

// Tumor stage (spreading)
* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept.coding 1..1 MS
* valueCodeableConcept.coding.system 1..1 MS
* valueCodeableConcept.coding.code 1..1 MS

* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding ^slicing.description = "Slice für Tumorausbreitung"
* valueCodeableConcept.coding ^slicing.ordered = false

* valueCodeableConcept.coding contains Tumorausbreitung 1..1 MS
* valueCodeableConcept.coding[Tumorausbreitung] ^short = "Tumorausbreitung"
* valueCodeableConcept.coding[Tumorausbreitung] ^definition = "Angabe zur Tumorausbreitung"
* valueCodeableConcept.coding[Tumorausbreitung].system = $mii-cs-mtb-tumorausbreitung
* valueCodeableConcept.coding[Tumorausbreitung].code from MII_VS_MTB_Tumorausbreitung