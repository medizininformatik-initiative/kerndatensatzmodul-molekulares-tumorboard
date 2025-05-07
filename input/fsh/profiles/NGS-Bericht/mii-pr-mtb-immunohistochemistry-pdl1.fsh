Profile: MII_PR_MTB_Immunohistochemistry_PDL1
Parent: MII_PR_MTB_Immunohistochemistry 
Id: mii-pr-mtb-immunohistochemistry-pdl1
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
    tps-score 0..1 MS and
    cps-score 0..1 MS and
    ics-score 0..1 MS and
    tc-score 0..1 MS 
// Prozent-werte als Value-Quantity mit Unit %

* component[tps-score] MS
* component[tps-score].code MS // Code System noch spezifizieren
* component[tps-score].valueInteger MS 
* component[tps-score] ^short = "TPS-Score" 

* component[cps-score] MS
* component[cps-score].code MS // Code System noch spezifizieren // hier LOINC 105305-7 
* component[cps-score].valueInteger MS 
* component[cps-score] ^short = "CPS-Score" 

* component[ics-score] MS
* component[ics-score].code MS // Code System noch spezifizieren
* component[ics-score].valueRange MS // Wie spezifiziere ich high and low?
* component[ics-score] ^short = "ICS-Score" 

* component[tc-score] MS
* component[tc-score].code MS // Code System noch spezifizieren
* component[tc-score].valueRange MS // Wie spezifiziere ich high and low?
* component[tc-score] ^short = "TC-Score" 


// Evtl component gene-studied oder Erweiterung von Code (bei häufigen auch Loinc-Liste oder HGNC)
// CodeSystem -> mii-molekulare-biomarker