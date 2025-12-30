Profile: MII_PR_MTB_Tumorausbreitung
Parent: Observation
Id: mii-pr-mtb-tumorausbreitung
Title: "MII PR MTB Tumorausbreitung"
Description: "Angabe zur Tumorausbreitung"
* insert PR_Header

// Tumor stage at time of "Aware of diagnosis" or "Diagnosis deferred"
* category 1..* MS
* category.coding 1..* MS

* category.coding ^slicing.discriminator.type = #value
* category.coding ^slicing.discriminator.path = "$this"
* category.coding ^slicing.rules = #open
* category.coding ^slicing.description = "Slice für Coding"
* category.coding ^slicing.ordered = false

// TODO: SCT prüfen
* category.coding contains ErstdiagnoseZeitpunkt 0..1 MS
* category.coding[ErstdiagnoseZeitpunkt] = $SCT#473302008 "Aware of diagnosis" (exactly)

// TODO: SCT prüfen
* category.coding contains MolekularesTumorboardZeitpunkt 0..1 MS
* category.coding[MolekularesTumorboardZeitpunkt] = $SCT#93771000119109 "Diagnosis deferred" (exactly)

// Observation represents simplified tumor stage
* code 1..1 MS
* code.coding 1..* MS
* code.coding = $SCT#371508000 "Tumor stage" (exactly)

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
* insert Translation(effectiveDateTime ^short, de-DE, Zeitpunkt Tumorausbreitung)
* insert Translation(effectiveDateTime ^definition, de-DE, Zeitpunkt der Feststellung der Tumorausbreitung)
* insert Translation(effectiveDateTime ^short, en, Tumor Spread Date)
* insert Translation(effectiveDateTime ^definition, en, Date of tumor spread assessment)

// Tumor stage (spreading)
* value[x] 1..1 MS
* value[x] only CodeableConcept

* valueCodeableConcept.coding 1..* MS

* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding ^slicing.description = "Slice für Tumorausbreitung"
* valueCodeableConcept.coding ^slicing.ordered = false

* valueCodeableConcept.coding contains Tumorausbreitung 1..1 MS
* valueCodeableConcept.coding[Tumorausbreitung] ^short = "Tumorausbreitung"
* valueCodeableConcept.coding[Tumorausbreitung] ^definition = "Angabe zur Tumorausbreitung"
* insert Translation(valueCodeableConcept.coding[Tumorausbreitung] ^short, de-DE, Tumorausbreitung)
* insert Translation(valueCodeableConcept.coding[Tumorausbreitung] ^definition, de-DE, Angabe zur Tumorausbreitung)
* insert Translation(valueCodeableConcept.coding[Tumorausbreitung] ^short, en, Tumor Spread)
* insert Translation(valueCodeableConcept.coding[Tumorausbreitung] ^definition, en, Information on tumor spread)
* valueCodeableConcept.coding[Tumorausbreitung].system = $SCT (exactly)
* valueCodeableConcept.coding[Tumorausbreitung] from MII_VS_MTB_Tumorausbreitung (required)