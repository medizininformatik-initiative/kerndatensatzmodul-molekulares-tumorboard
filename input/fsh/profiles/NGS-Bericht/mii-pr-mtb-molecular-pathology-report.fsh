Profile: MII_PR_MTB_Molecular_Pathology_Report
Parent: DiagnosticReport
Id: mii-pr-mtb-molecular-pathology-report
Title: "MII PR MTB Molecular Pathology Report"
Description: "Molecular pathology report"
* insert PR_Header

* code MS
* code.coding = $LNC#60568-3 "Pathology synoptic report"
* code ^short = "Molekular-Pathologie-Befund"
* code ^definition = "Molekular-Pathologie-Befund, der im Kontext des Molekularen Tumorboards erstellt wurde."
* subject 1..1 MS
* subject only Reference(Patient)
* performer only Reference(Organization)
* performer ^definition = "Berichtendes Institut"
* performer ^short = "Institut"
* specimen MS
* specimen only Reference(Specimen)
* specimen ^definition = "Dem Bericht zugrunde liegende Probe"
* specimen ^short = "Probe"
* issued MS
* issued ^definition = "Erstellungsdatum des Berichts"
* issued ^short = "Erstellungsdatum"
* result MS
* result only Reference(Observation)
* result ^definition = "Strukturierte Ergebnisse des Molekular-Pathologie-Befunds"
* result ^short = "Ergebnisse"

* result ^slicing.discriminator.type = #profile
* result ^slicing.discriminator.path = "$this.resolve()"
* result ^slicing.rules = #open
* result  ^slicing.description = "Slices für verschiedene Inhalte eines Molekularpathologischen Reports. Diese Slices sind beliebig erweiterbar"
* result contains Immunhistochemie 0..* MS and InSituHybridisierung 0..* MS
* result[Immunhistochemie] only Reference(MII_PR_MTB_Immunohistochemistry)
* result[Immunhistochemie] ^short = "Immunhistochemie"
* result[Immunhistochemie] ^definition = "Ergebnisse der Immunhistochemie, die im Kontext des Molekularen Tumorboards erstellt wurden. Umfasst neben regulärer IHC auch die Phospo-IHC, sowie komplexere IHC-Untersuchungen wie PDL1-Expression, Her2-Expression, etc."
* result[InSituHybridisierung] only Reference(MII_PR_MTB_Biomarker_InSituHybridization)
* result[InSituHybridisierung] ^short = "Gewebebasierte In-Situ-Hybridisierung"



