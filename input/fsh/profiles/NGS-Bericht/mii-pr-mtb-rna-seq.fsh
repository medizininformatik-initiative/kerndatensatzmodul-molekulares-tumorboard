Profile: MII_PR_MTB_RNA_Seq
Parent: MII_PR_MolGen_Variante
Id: mii-pr-mtb-rna-seq
Title: "MII PR MTB RNA Seq"
Description: "RNA Seq"
* insert PR_Header

* focus MS 
* focus only Reference(MII_PR_Onko_Diagnose_Primaertumor or MII_PR_MTB_Diagnose_Primaertumor)

* value[x] ^slicing.rules = #open

* component[gene-studied] MS 
* component[gene-studied] ^short = "Gen" 

* component[variation-code] MS
* component[variation-code] 0..2
* component[variation-code] ^short = "Entrez ID & Ensemble ID"

* component contains
    transcript-id 0..1 MS and
    transcripts-per-million 0..1 MS and
    tissue-corrected-expression 0..1 MS and
    raw-counts 0..1 MS and
    library-size 0..1 MS and
    cohort-ranking 0..1 MS

* component[transcript-id] ^short = "Transcript ID"
* component[transcript-id].value[x] only CodeableConcept

* component[transcripts-per-million] ^short = "Transcripts per million"
* component[transcripts-per-million].value[x] only Ratio
* component[transcripts-per-million].valueRatio.denominator.value = 1000000

* component[tissue-corrected-expression] ^short = "Tissue corrected expression"
* component[tissue-corrected-expression].value[x] only boolean

* component[raw-counts] ^short = "Raw counts"
* component[raw-counts].value[x] only Quantity

* component[library-size] ^short = "Library size"
* component[library-size].value[x] only Quantity

* component[cohort-ranking] ^short = "Cohort ranking"
* component[cohort-ranking].value[x] only Quantity
