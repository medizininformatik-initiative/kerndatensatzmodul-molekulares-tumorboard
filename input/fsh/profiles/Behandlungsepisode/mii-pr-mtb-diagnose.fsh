Profile: MII_PR_MTB_Diagnose_Primaertumor
Parent: MII_PR_Onko_Diagnose_Primaertumor
Id: mii-pr-mtb-diagnose-primaertumor
Title: "MII PR MTB Diagnose Primärtumor"
Description: "Diagnose zum Primärtumor"
* insert PR_Header

* stage 0..* MS
* stage ^slicing.discriminator.type = #value
* stage ^slicing.discriminator.path = "type.coding"
* stage ^slicing.rules = #open
* stage ^slicing.description = "Slice für Stage/Grad"
* stage ^slicing.ordered = false

// WHO Grade for Central Nervous System Tumor
* stage contains WHOGradZNS 0..1 MS
* stage[WHOGradZNS] ^short = "WHO Grad Tumor ZNS"
* stage[WHOGradZNS] ^definition = "Grad eines Tumors nach WHO-Klassifikation der Tumoren des zentralen Nervensystems"
* insert Translation(stage[WHOGradZNS] ^short, de-DE, WHO Grad Tumor ZNS)
* insert Translation(stage[WHOGradZNS] ^definition, de-DE, Grad eines Tumors nach WHO-Klassifikation der Tumoren des zentralen Nervensystems)
* insert Translation(stage[WHOGradZNS] ^short, en, WHO Grade CNS Tumor)
* insert Translation(stage[WHOGradZNS] ^definition, en, Grade of a tumor according to the WHO classification of central nervous system tumors)
* stage[WHOGradZNS].assessment 1..1 MS
* stage[WHOGradZNS].assessment only Reference(MII_PR_MTB_WHO_Grad_Tumor_ZNS)
* stage[WHOGradZNS].type 1..1 MS
* stage[WHOGradZNS].type.coding = $SCT#396920006 "WHO grade for central nervous system tumor"

// OncoTree
* stage contains OncoTree 0..* MS
* stage[OncoTree] ^short = "OncoTree Classification"
* stage[OncoTree] ^definition = "Klassifizierung eines Tumors nach OncoTree"
* insert Translation(stage[OncoTree] ^short, de-DE, OncoTree Klassifikation)
* insert Translation(stage[OncoTree] ^definition, de-DE, Klassifizierung eines Tumors nach OncoTree)
* insert Translation(stage[OncoTree] ^short, en, OncoTree Classification)
* insert Translation(stage[OncoTree] ^definition, en, Classification of a tumor according to OncoTree)
* stage[OncoTree].assessment 1..1 MS
* stage[OncoTree].assessment only Reference(MII_PR_MTB_Oncotree)
* stage[OncoTree].type 1..1 MS
* stage[OncoTree].type.coding = $SCT#371441004 "Histologic type of proliferative mass"


// TODO: SCT prüfen
// Tumor stage (spreading) first diagnosis date time
* stage contains ErstdiagnoseZeitpunkt 0..1 MS
* stage[ErstdiagnoseZeitpunkt] ^short = "Tumorausbreitung Erstdiagnose"
* stage[ErstdiagnoseZeitpunkt] ^definition = "Tumorausbreitung zum Zeitpunkt der Erstdiagnose"
* insert Translation(stage[ErstdiagnoseZeitpunkt] ^short, de-DE, Tumorausbreitung Erstdiagnose)
* insert Translation(stage[ErstdiagnoseZeitpunkt] ^definition, de-DE, Tumorausbreitung zum Zeitpunkt der Erstdiagnose)
* insert Translation(stage[ErstdiagnoseZeitpunkt] ^short, en, Tumor Spread at Initial Diagnosis)
* insert Translation(stage[ErstdiagnoseZeitpunkt] ^definition, en, Tumor spread at the time of initial diagnosis)
* stage[ErstdiagnoseZeitpunkt].assessment 1..1 MS
* stage[ErstdiagnoseZeitpunkt].assessment only Reference(MII_PR_MTB_Tumorausbreitung)
* stage[ErstdiagnoseZeitpunkt].type 1..1 MS
* stage[ErstdiagnoseZeitpunkt].type.coding = $NCIT#C19251 "Stage at Diagnosis"

// TODO: SCT prüfen
// Tumor stage (spreading) molecular tumor board date time
* stage contains MolekularesTumorboardZeitpunkt 0..1 MS
* stage[MolekularesTumorboardZeitpunkt] ^short = "Tumorausbreitung Molekulares Tumorboard"
* stage[MolekularesTumorboardZeitpunkt] ^definition = "Tumorausbreitung zum Zeitpunkt des Molekularen Tumorboard"
* insert Translation(stage[MolekularesTumorboardZeitpunkt] ^short, de-DE, Tumorausbreitung Molekulares Tumorboard)
* insert Translation(stage[MolekularesTumorboardZeitpunkt] ^definition, de-DE, Tumorausbreitung zum Zeitpunkt des Molekularen Tumorboard)
* insert Translation(stage[MolekularesTumorboardZeitpunkt] ^short, en, Tumor Spread at Molecular Tumor Board)
* insert Translation(stage[MolekularesTumorboardZeitpunkt] ^definition, en, Tumor spread at the time of the Molecular Tumor Board)
* stage[MolekularesTumorboardZeitpunkt].assessment 1..1 MS
* stage[MolekularesTumorboardZeitpunkt].assessment only Reference(MII_PR_MTB_Tumorausbreitung)
* stage[MolekularesTumorboardZeitpunkt].type 1..1 MS
* stage[MolekularesTumorboardZeitpunkt].type.coding = $SCT#93771000119109 "Diagnosis deferred"