Extension: MII_EX_MTB_GenomicStudyAnalysis_QC
Id: mii-ex-mtb-genomic-study-analysis-qc
Context: Extension
Title: "MII EX MTB Antrag GenomicsStudyAnalysis Metrics"
Description: "Sequenzierbezogenen Metriken der Genomic Study Analysis"
* insert EX_Header($mii-ex-mtb-genomic-study-analysis-qc)


* extension contains 
    read-depth 0..1 MS and
    read-length 0..1 MS and
    sequencing-coverage 0..1 MS and
    metrics-description 0..1 MS and
    sequencing-read-type 0..1 MS and
    gap-statistics 0..1 MS                  
* extension[read-depth] MS
* extension[read-depth].url 1..1 MS
* extension[read-depth].valueQuantity 1..1 MS
* extension[read-depth].valueQuantity ^short = "Read Depth"
* insert Translation(extension[read-depth].valueQuantity ^short, de-DE, Lesetiefe)
* insert Translation(extension[read-depth].valueQuantity ^short, en, Read Depth)
* extension[read-length] MS
* extension[read-length].url 1..1 MS
* extension[read-length].valueQuantity 1..1 MS
* extension[read-length].valueQuantity ^short = "Read Length"
* insert Translation(extension[read-length].valueQuantity ^short, de-DE, Leselaenge)
* insert Translation(extension[read-length].valueQuantity ^short, en, Read Length)
* extension[sequencing-coverage] MS
* extension[sequencing-coverage].url 1..1 MS
* extension[sequencing-coverage].valueQuantity 1..1 MS
* extension[sequencing-coverage].valueQuantity ^short = "Sequencing Coverage"
* insert Translation(extension[sequencing-coverage].valueQuantity ^short, de-DE, Sequenzierabdeckung)
* insert Translation(extension[sequencing-coverage].valueQuantity ^short, en, Sequencing Coverage)
* extension[metrics-description] MS
* extension[metrics-description].url 1..1 MS
* extension[metrics-description].valueString 1..1 MS
* extension[metrics-description].valueString ^short = "Metrics Description"
* insert Translation(extension[metrics-description].valueString ^short, de-DE, Metrikbeschreibung)
* insert Translation(extension[metrics-description].valueString ^short, en, Metrics Description)
* extension[sequencing-read-type] MS
* extension[sequencing-read-type].url 1..1 MS
* extension[sequencing-read-type].valueCodeableConcept 1..1 MS
* extension[sequencing-read-type].valueCodeableConcept ^short = "Sequencing Read Type"
* insert Translation(extension[sequencing-read-type].valueCodeableConcept ^short, de-DE, Sequenzier-Lesetyp)
* insert Translation(extension[sequencing-read-type].valueCodeableConcept ^short, en, Sequencing Read Type)
* extension[gap-statistics] MS
* extension[gap-statistics].url 1..1 MS
* extension[gap-statistics].valueQuantity 1..1 MS
* extension[gap-statistics].valueQuantity ^short = "Gap Statistics"
* insert Translation(extension[gap-statistics].valueQuantity ^short, de-DE, Lueckenstatistik)
* insert Translation(extension[gap-statistics].valueQuantity ^short, en, Gap Statistics)
