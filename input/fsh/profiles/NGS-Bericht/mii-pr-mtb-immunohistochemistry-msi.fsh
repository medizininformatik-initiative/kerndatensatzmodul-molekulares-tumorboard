Profile: MII_PR_MTB_Immunohistochemistry_MSI
Parent: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/mikrosatelliteninstabilitaet // Evtl von Observation von MolecularBiomarker erben
Id: mii-pr-mtb-msi
Title: "MII PR MTB Immunohistochemistry Microsatellite Instability"
Description: "Immunhistorchemistry report"
* insert PR_Header

* identifier MS
* specimen MS
* specimen ^definition = "Probe"
* specimen ^short = "Probe"
* insert Translation(specimen ^short, de-DE, Probe)
* insert Translation(specimen ^definition, de-DE, Probe)
* insert Translation(specimen ^short, en, Specimen)
* insert Translation(specimen ^definition, en, Specimen)
// Eingangs/Journal-Nr -> DiagnosticReport(Identifier) kein Teil von Observationm
// Block-/Material Nr -> Wie mache ich das am Besten?
* code 1..1 MS
* code.coding ^patternCoding = $LNC#62862-8 
* code.coding.display = "Microsatellite instability [Presence] in Tissue by Immune stain"

* value[x] MS
* valueCodeableConcept MS
//* valueCodeableConcept from 
