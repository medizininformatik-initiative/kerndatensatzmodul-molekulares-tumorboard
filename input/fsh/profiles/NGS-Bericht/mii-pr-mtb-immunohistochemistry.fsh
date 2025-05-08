Profile: MII_PR_MTB_Immunohistochemistry
Parent: MII_PR_MTB_Molekularer_Biomarker // Evtl von Observation von MolecularBiomarker erben
Id: mii-pr-mtb-immunohistochemistry
Title: "MII PR MTB Immunohistochemistry"
Description: "Immunhistorchemistry report"
* insert PR_Header

* identifier MS
* specimen MS
* specimen ^definition = "Probe"
* specimen ^short = "Probe"
// Eingangs/Journal-Nr -> DiagnosticReport(Identifier) kein Teil von Observationm
// Block-/Material Nr -> Wie mache ich das am Besten?

// wie erstelle ich ein eigenes CodeableConcept
* value[x] MS
* valueCodeableConcept MS
//* valueCodeableConcept from 

* component ^slicing.discriminator.type = #type
* component ^slicing.discriminator.path = "reference.reference"
* component ^slicing.rules = #open
* component ^slicing.description = "Immunohistochemische Ergebnisse"
* component ^slicing.ordered = false
// Evtl. Binding auf High-Low-ValueSet aus MolgenBefundbericht als preferred oder als CodeableConcept

* component contains 
    msi 0..1 MS and
    mmr 0..1 MS
// Prozent-werte als Value-Quantity mit Unit %

* component[msi] MS
* component[msi].code MS // Code System noch spezifizieren
* component[msi].valueCodeableConcept MS // Wie spezifiziere ich high and low? -> Übernehmen aus MolgenModul, gibt schon high-low-ValueSet
* component[msi].interpretation MS 
* component[msi] ^short = "Mikrosateliteninstablilität" 

* component[mmr] MS
* component[mmr].code MS // Code System noch spezifizieren
* component[mmr].valueCodeableConcept MS 
* component[mmr].interpretation MS
* component[mmr] ^short = "Mismatch-Repair" 

// Evtl component gene-studied oder Erweiterung von Code (bei häufigen auch Loinc-Liste oder HGNC)
// CodeSystem -> mii-molekulare-biomarker