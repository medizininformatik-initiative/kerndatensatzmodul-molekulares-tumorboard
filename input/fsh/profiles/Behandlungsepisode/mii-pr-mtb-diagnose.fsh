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
* stage[WHOGradZNS].assessment 1..1 MS
* stage[WHOGradZNS].assessment only Reference(MII_PR_MTB_WHO_Grad_Tumor_ZNS)
* stage[WHOGradZNS].type 1..1 MS
* stage[WHOGradZNS].type.coding = $SCT#396920006 "WHO grade for central nervous system tumour"

// OncoTree
* stage contains OncoTree 0..1 MS
* stage[OncoTree] ^short = "OncoTree Classification"
* stage[OncoTree] ^definition = "Klassifizierung eines Tumors nach OncoTree"
* stage[OncoTree].assessment 1..1 MS
* stage[OncoTree].assessment only Reference(MII_PR_MTB_Oncotree)
// * stage[OncoTree].type 1..1 MS
// * stage[OncoTree].type.coding = $SCT#396920006 "WHO grade for central nervous system tumour"

// TODO: SCT prüfen
// Tumor stage (spreading) first diagnosis date time
* stage contains ErstdiagnoseZeitpunkt 1..1 MS
* stage[ErstdiagnoseZeitpunkt] ^short = "Tumorausbreitung Erstdiagnose"
* stage[ErstdiagnoseZeitpunkt] ^definition = "Tumorausbreitung zum Zeitpunkt der Erstdiagnose"
* stage[ErstdiagnoseZeitpunkt].assessment 1..1 MS
* stage[ErstdiagnoseZeitpunkt].assessment only Reference(MII_PR_MTB_Tumorausbreitung)
* stage[ErstdiagnoseZeitpunkt].type 1..1 MS
* stage[ErstdiagnoseZeitpunkt].type.coding = $SCT#473302008 "Aware of diagnosis"

// TODO: SCT prüfen
// Tumor stage (spreading) molecular tumor board date time
* stage contains MolekularesTumorboardZeitpunkt 1..1 MS
* stage[MolekularesTumorboardZeitpunkt] ^short = "Tumorausbreitung Molekulares Tumorboard"
* stage[MolekularesTumorboardZeitpunkt] ^definition = "Tumorausbreitung zum Zeitpunkt des Molekularen Tumorboard"
* stage[MolekularesTumorboardZeitpunkt].assessment 1..1 MS
* stage[MolekularesTumorboardZeitpunkt].assessment only Reference(MII_PR_MTB_Tumorausbreitung)
* stage[MolekularesTumorboardZeitpunkt].type 1..1 MS
* stage[MolekularesTumorboardZeitpunkt].type.coding = $SCT#93771000119109 "Diagnosis deferred"

// Treatment Status according to Guideline
* extension contains MII_EX_MTB_Leitlinienbehandlung_Status named LeitlinenbehandlungStatus 0..1 MS