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
* insert Translation(specimen ^short, de-DE, Probe)
* insert Translation(specimen ^definition, de-DE, Probe)
* insert Translation(specimen ^short, en, Specimen)
* insert Translation(specimen ^definition, en, Specimen)
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
* insert Translation(component[tps-score] ^short, de-DE, TPS-Score)
* insert Translation(component[tps-score] ^definition, de-DE, Tumor Proportion Score - TPS - Score fuer PD-L1-Expression in Tumorzellen. Der TPS ist der Anteil der PD-L1-positiven Tumorzellen im Verhaeltnis zu den Gesamtzellen. Der TPS wird in Prozent angegeben. Ein TPS von 1 Prozent oder mehr gilt als positiv.)
* insert Translation(component[tps-score] ^short, en, TPS Score)
* insert Translation(component[tps-score] ^definition, en, Tumor Proportion Score - TPS - Score for PD-L1 expression in tumor cells. The TPS is the proportion of PD-L1-positive tumor cells relative to total cells. TPS is expressed as a percentage. A TPS of 1 percent or more is considered positive.)
* component[tps-score].interpretation MS
* component[cps-score] MS
* component[cps-score].code MS 
* component[cps-score].code = $NCIT#C176582 "PD-L1 Combined Positive Score" 
* component[cps-score].valueQuantity MS 
* component[cps-score].interpretation MS

* component[cps-score] ^short = "CPS-Score"
* component[cps-score] ^definition = "Combined Positive Score (CPS) - Score für PD-L1-Expression in Tumorzellen und Immunzellen. Der CPS ist der Anteil der PD-L1-positiven Tumorzellen und Immunzellen im Verhältnis zu den Gesamtzellen. Der CPS wird in Prozent angegeben. Ein CPS von 1% oder mehr gilt als positiv."
* insert Translation(component[cps-score] ^short, de-DE, CPS-Score)
* insert Translation(component[cps-score] ^definition, de-DE, Combined Positive Score - CPS - Score fuer PD-L1-Expression in Tumorzellen und Immunzellen. Der CPS ist der Anteil der PD-L1-positiven Tumorzellen und Immunzellen im Verhaeltnis zu den Gesamtzellen. Der CPS wird in Prozent angegeben. Ein CPS von 1 Prozent oder mehr gilt als positiv.)
* insert Translation(component[cps-score] ^short, en, CPS Score)
* insert Translation(component[cps-score] ^definition, en, Combined Positive Score - CPS - Score for PD-L1 expression in tumor cells and immune cells. The CPS is the proportion of PD-L1-positive tumor cells and immune cells relative to total cells. CPS is expressed as a percentage. A CPS of 1 percent or more is considered positive.)

* component[ics-score] MS
* component[ics-score].code MS 
* component[ics-score].code = $NCIT#C199175 "Cells.programmed cell death ligand 1/Viable tumor cells in Tissue by Immune stain"
* component[ics-score].valueQuantity MS // Wie spezifiziere ich high and low?
* component[ics-score].interpretation MS

* component[ics-score] ^short = "ICS-Score"
* component[ics-score] ^definition = "Immune Cell Score (ICS) - Score für PD-L1-Expression in Immunzellen. Der ICS ist der Anteil der PD-L1-positiven Immunzellen im Verhältnis zu den Gesamtzellen. Der ICS wird in Prozent angegeben. Ein ICS von 1% oder mehr gilt als positiv."
* insert Translation(component[ics-score] ^short, de-DE, ICS-Score)
* insert Translation(component[ics-score] ^definition, de-DE, Immune Cell Score - ICS - Score fuer PD-L1-Expression in Immunzellen. Der ICS ist der Anteil der PD-L1-positiven Immunzellen im Verhaeltnis zu den Gesamtzellen. Der ICS wird in Prozent angegeben. Ein ICS von 1 Prozent oder mehr gilt als positiv.)
* insert Translation(component[ics-score] ^short, en, ICS Score)
* insert Translation(component[ics-score] ^definition, en, Immune Cell Score - ICS - Score for PD-L1 expression in immune cells. The ICS is the proportion of PD-L1-positive immune cells relative to total cells. ICS is expressed as a percentage. An ICS of 1 percent or more is considered positive.)

* component[tc-score] MS
* component[tc-score].code MS
* component[tc-score].code = $LNC#83053-9 "Cells.programmed cell death ligand 1/Viable tumor cells in Tissue by Immune stain"
* component[tc-score].valueQuantity MS // Wie spezifiziere ich high and low?
* component[tc-score].interpretation MS
* component[tc-score] ^short = "TC-Score / TPS-Score"
* component[tc-score] ^definition = "Tumor Cell Score (TC-Score) - Score für PD-L1-Expression in Tumorzellen. Der TC-Score ist der Anteil der PD-L1-positiven Tumorzellen im Verhältnis zu den Gesamtzellen. Der TC-Score wird in Prozent angegeben. Ein TC-Score von 1% oder mehr gilt als positiv."
* insert Translation(component[tc-score] ^short, de-DE, TC-Score / TPS-Score)
* insert Translation(component[tc-score] ^definition, de-DE, Tumor Cell Score - TC-Score - Score fuer PD-L1-Expression in Tumorzellen. Der TC-Score ist der Anteil der PD-L1-positiven Tumorzellen im Verhaeltnis zu den Gesamtzellen. Der TC-Score wird in Prozent angegeben. Ein TC-Score von 1 Prozent oder mehr gilt als positiv.)
* insert Translation(component[tc-score] ^short, en, TC Score / TPS Score)
* insert Translation(component[tc-score] ^definition, en, Tumor Cell Score - TC-Score - Score for PD-L1 expression in tumor cells. The TC-Score is the proportion of PD-L1-positive tumor cells relative to total cells. TC-Score is expressed as a percentage. A TC-Score of 1 percent or more is considered positive.)


// Evtl component gene-studied oder Erweiterung von Code (bei häufigen auch Loinc-Liste oder HGNC)
// CodeSystem -> mii-molekulare-biomarker