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
* effective[x] MS
* effective[x] only dateTime

* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
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
* component[tps-score].code = $NCIT#C184941	"PD-L1 Tumor Proportion Score"	 
* component[tps-score].valueQuantity MS 
* component[tps-score] ^short = "TPS-Score"
* component[tps-score] ^definition = "Tumor Proportion Score (TPS) - Score für PD-L1-Expression in Tumorzellen. Der TPS ist der Anteil der PD-L1-positiven Tumorzellen im Verhältnis zu den Gesamtzellen. Der TPS wird in Prozent angegeben. Ein TPS von 1% oder mehr gilt als positiv." 
* component[tps-score].interpretation MS
* component[cps-score] MS
* component[cps-score].code MS 
* component[cps-score].code = $NCIT#C176582 "PD-L1 Combined Positive Score" 
* component[cps-score].valueQuantity MS 
* component[cps-score].interpretation MS

* component[cps-score] ^short = "CPS-Score" 
* component[cps-score] ^definition = "Combined Positive Score (CPS) - Score für PD-L1-Expression in Tumorzellen und Immunzellen. Der CPS ist der Anteil der PD-L1-positiven Tumorzellen und Immunzellen im Verhältnis zu den Gesamtzellen. Der CPS wird in Prozent angegeben. Ein CPS von 1% oder mehr gilt als positiv."

* component[ics-score] MS
* component[ics-score].code MS 
* component[ics-score].code = $NCIT#C199175 "Cells.programmed cell death ligand 1/Viable tumor cells in Tissue by Immune stain"
* component[ics-score].valueQuantity MS // Wie spezifiziere ich high and low?
* component[ics-score].interpretation MS

* component[ics-score] ^short = "ICS-Score"
* component[ics-score] ^definition = "Immune Cell Score (ICS) - Score für PD-L1-Expression in Immunzellen. Der ICS ist der Anteil der PD-L1-positiven Immunzellen im Verhältnis zu den Gesamtzellen. Der ICS wird in Prozent angegeben. Ein ICS von 1% oder mehr gilt als positiv." 

* component[tc-score] MS
* component[tc-score].code MS
* component[tc-score].code = $LNC#83053-9 "Cells.programmed cell death ligand 1/Viable tumor cells in Tissue by Immune stain"
* component[tc-score].valueQuantity MS // Wie spezifiziere ich high and low?
* component[tc-score].interpretation MS
* component[tc-score] ^short = "TC-Score / TPS-Score"
* component[tc-score] ^definition = "Tumor Cell Score (TC-Score) - Score für PD-L1-Expression in Tumorzellen. Der TC-Score ist der Anteil der PD-L1-positiven Tumorzellen im Verhältnis zu den Gesamtzellen. Der TC-Score wird in Prozent angegeben. Ein TC-Score von 1% oder mehr gilt als positiv." 


// Evtl component gene-studied oder Erweiterung von Code (bei häufigen auch Loinc-Liste oder HGNC)
// CodeSystem -> mii-molekulare-biomarker