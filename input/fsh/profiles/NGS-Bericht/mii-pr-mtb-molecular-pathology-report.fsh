Profile: MII_PR_MTB_MOLECULAR_PATHOLOGY_REPORT
Parent: DiagnosticReport
Id: mii-pr-mtb-molecular-pathology-report
Title: "MII PR MTB Molecular Pathology Report"
Description: "Molecular pathology report"
* insert PR_Header

* subject 1..1 MS
* subject only Reference(Patient)
* performer only Reference(Organization)
* performer ^definition = "Berichtendes Institut"
* performer ^short = "Institut"
* specimen only Reference(Specimen)
* specimen ^definition = "Dem Bericht zugrunde liegende Probe"
* specimen ^short = "Probe"
* issued MS
* issued ^definition = "Erstellungsdatum des Berichts"
* issued ^short = "Erstellungsdatum"
* result only Reference(Observation)
* result ^definition = "Art der Diagnostik"
* result ^short = "Diagnostik"

// Text = composition.text ->  Nicht auffindbar, war das eventuell R5?
// Verlinkung aus Composition-Profil, sollte auf MolPatho und NGS-Bericht passen


