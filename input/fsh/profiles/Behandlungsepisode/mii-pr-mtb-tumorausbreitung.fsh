Profile: MII_PR_MTB_Tumorausbreitung
Parent: Observation
Id: mii-pr-mtb-tumorausbreitung
Title: "MII PR MTB Tumorausbreitung"
Description: "Anganbe zur Tumorausbreitung"
* insert PR_Header

// Tumor stage at time of "Aware of diagnosis" or "Diagnosis deferred"
* category 1..* MS
* category.coding 1..* MS

* category.coding ^slicing.discriminator.type = #pattern
* category.coding ^slicing.discriminator.path = "code"
* category.coding ^slicing.rules = #open
* category.coding ^slicing.description = "Slice fuer Coding"
* category.coding ^slicing.ordered = false

* category.coding contains ErstdiagnoseZeitpunkt 1..1 MS
* category.coding[ErstdiagnoseZeitpunkt] = $SCT#473302008 "Aware of diagnosis"

* category.coding contains MolekularesTumorBoardZeitpunkt 1..1 MS
* category.coding[MolekularesTumorBoardZeitpunkt] = $SCT#93771000119109 "Diagnosis deferred"

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

// Tumor stage (spreading)
* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept.coding 1..1 MS
* valueCodeableConcept.coding.system 1..1 MS
* valueCodeableConcept.coding.code 1..1 MS

* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding ^slicing.description = "Slice fuer Codesystem"
* valueCodeableConcept.coding ^slicing.ordered = false

* valueCodeableConcept.coding contains Tumorausbreitung 1..1 MS
* valueCodeableConcept.coding[Tumorausbreitung].system = $mii-cs-mtb-tumorausbreitung
* valueCodeableConcept.coding[Tumorausbreitung].code from MII_VS_MTB_Tumorausbreitung