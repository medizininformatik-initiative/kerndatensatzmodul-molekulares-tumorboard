// Ersatz für das in Genomics Reporting STU3 entfallene ValueSet
// http://hl7.org/fhir/uv/genomics-reporting/ValueSet/high-low-codes-vs (STU2),
// an das die vier Biomarker-Profile (Mutationslast, HRD-Score, BRCAness,
// Ploidie) Observation.interpretation binden. Gleicher Inhalt (High/Low aus
// v3 ObservationInterpretation), jetzt im Modul-Namensraum. TODO:REVIEW
ValueSet: MII_VS_MTB_Interpretation_High_Low
Id: mii-vs-mtb-interpretation-high-low
Title: "MII VS MTB Interpretation High/Low"
Description: "Interpretation qualitativer Biomarker-Ergebnisse als hoch/niedrig (High/Low aus HL7 v3 ObservationInterpretation). Ersetzt das in Genomics Reporting STU3 entfallene high-low-codes-vs (STU2)."
* insert VS_Header($mii-vs-mtb-interpretation-high-low)
* $hl7-v3-observation-interpretation#H "High"
* $hl7-v3-observation-interpretation#L "Low"
