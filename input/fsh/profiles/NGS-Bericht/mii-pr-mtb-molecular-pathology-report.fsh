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
* insert Translation(code ^short, de-DE, Molekular-Pathologie-Befund)
* insert Translation(code ^definition, de-DE, Molekular-Pathologie-Befund der im Kontext des Molekularen Tumorboards erstellt wurde.)
* insert Translation(code ^short, en, Molecular Pathology Report)
* insert Translation(code ^definition, en, Molecular pathology report created in the context of the Molecular Tumor Board.)
* subject 1..1 MS
* subject only Reference(Patient)
* performer only Reference(Organization)
* performer ^definition = "Berichtendes Institut"
* performer ^short = "Institut"
* insert Translation(performer ^short, de-DE, Institut)
* insert Translation(performer ^definition, de-DE, Berichtendes Institut)
* insert Translation(performer ^short, en, Institute)
* insert Translation(performer ^definition, en, Reporting institute)
* specimen MS
* specimen only Reference(Specimen)
* specimen ^definition = "Dem Bericht zugrunde liegende Probe"
* specimen ^short = "Probe"
* insert Translation(specimen ^short, de-DE, Probe)
* insert Translation(specimen ^definition, de-DE, Dem Bericht zugrunde liegende Probe)
* insert Translation(specimen ^short, en, Specimen)
* insert Translation(specimen ^definition, en, Specimen underlying the report)
* issued MS
* issued ^definition = "Erstellungsdatum des Berichts"
* issued ^short = "Erstellungsdatum"
* insert Translation(issued ^short, de-DE, Erstellungsdatum)
* insert Translation(issued ^definition, de-DE, Erstellungsdatum des Berichts)
* insert Translation(issued ^short, en, Issue date)
* insert Translation(issued ^definition, en, Issue date of the report)
* result MS
* result only Reference(Observation)
* result ^definition = "Strukturierte Ergebnisse des Molekular-Pathologie-Befunds"
* result ^short = "Ergebnisse"
* insert Translation(result ^short, de-DE, Ergebnisse)
* insert Translation(result ^definition, de-DE, Strukturierte Ergebnisse des Molekular-Pathologie-Befunds)
* insert Translation(result ^short, en, Results)
* insert Translation(result ^definition, en, Structured results of the molecular pathology report)

* result ^slicing.discriminator.type = #profile
* result ^slicing.discriminator.path = "$this.resolve()"
* result ^slicing.rules = #open
* result  ^slicing.description = "Slices für verschiedene Inhalte eines Molekularpathologischen Reports. Diese Slices sind beliebig erweiterbar"
* result contains Immunhistochemie 0..* MS and InSituHybridisierung 0..* MS
* result[Immunhistochemie] only Reference(MII_PR_MTB_Immunohistochemistry)
* result[Immunhistochemie] ^short = "Immunhistochemie"
* result[Immunhistochemie] ^definition = "Ergebnisse der Immunhistochemie, die im Kontext des Molekularen Tumorboards erstellt wurden. Umfasst neben regulärer IHC auch die Phospo-IHC, sowie komplexere IHC-Untersuchungen wie PDL1-Expression, Her2-Expression, etc."
* insert Translation(result[Immunhistochemie] ^short, de-DE, Immunhistochemie)
* insert Translation(result[Immunhistochemie] ^definition, de-DE, Ergebnisse der Immunhistochemie die im Kontext des Molekularen Tumorboards erstellt wurden. Umfasst neben regulaerer IHC auch die Phospho-IHC sowie komplexere IHC-Untersuchungen wie PDL1-Expression oder Her2-Expression.)
* insert Translation(result[Immunhistochemie] ^short, en, Immunohistochemistry)
* insert Translation(result[Immunhistochemie] ^definition, en, Results of immunohistochemistry created in the context of the Molecular Tumor Board. Includes regular IHC as well as phospho-IHC and more complex IHC examinations such as PDL1 expression or Her2 expression.)
* result[InSituHybridisierung] only Reference(MII_PR_MTB_Biomarker_InSituHybridization)
* result[InSituHybridisierung] ^short = "Gewebebasierte In-Situ-Hybridisierung"
* insert Translation(result[InSituHybridisierung] ^short, de-DE, Gewebebasierte In-Situ-Hybridisierung)
* insert Translation(result[InSituHybridisierung] ^short, en, Tissue-based In Situ Hybridization)



