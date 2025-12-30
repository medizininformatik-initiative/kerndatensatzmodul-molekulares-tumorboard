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
* insert Translation(component[gene-studied] ^short, de-DE, Gen)
* insert Translation(component[gene-studied] ^short, en, Gene) 

* component[variation-code] MS
* component[variation-code] 0..2
* component[variation-code] ^short = "Entrez ID & Ensemble ID"
* insert Translation(component[variation-code] ^short, de-DE, Entrez ID und Ensemble ID)
* insert Translation(component[variation-code] ^short, en, Entrez ID and Ensemble ID)

* component contains
    transcript-id 0..1 MS and
    transcripts-per-million 0..1 MS and
    tissue-corrected-expression 0..1 MS and
    raw-counts 0..1 MS and
    library-size 0..1 MS and
    cohort-ranking 0..1 MS

* component[transcript-id] ^short = "Transcript ID"
* insert Translation(component[transcript-id] ^short, de-DE, Transkript-ID)
* insert Translation(component[transcript-id] ^short, en, Transcript ID)
* component[transcript-id].value[x] only CodeableConcept

* component[transcripts-per-million] ^short = "Transcripts per million"
* insert Translation(component[transcripts-per-million] ^short, de-DE, Transkripte pro Million)
* insert Translation(component[transcripts-per-million] ^short, en, Transcripts per million)
* component[transcripts-per-million].value[x] only Ratio
* component[transcripts-per-million].valueRatio.denominator.value = 1000000

* component[tissue-corrected-expression] ^short = "Tissue corrected expression"
* insert Translation(component[tissue-corrected-expression] ^short, de-DE, Gewebekorrigierte Expression)
* insert Translation(component[tissue-corrected-expression] ^short, en, Tissue corrected expression)
* component[tissue-corrected-expression].value[x] only boolean

* component[raw-counts] ^short = "Raw counts"
* insert Translation(component[raw-counts] ^short, de-DE, Rohzaehlungen)
* insert Translation(component[raw-counts] ^short, en, Raw counts)
* component[raw-counts].value[x] only Quantity

* component[library-size] ^short = "Library size"
* insert Translation(component[library-size] ^short, de-DE, Bibliotheksgroesse)
* insert Translation(component[library-size] ^short, en, Library size)
* component[library-size].value[x] only Quantity

* component[cohort-ranking] ^short = "Cohort ranking"
* insert Translation(component[cohort-ranking] ^short, de-DE, Kohortenranking)
* insert Translation(component[cohort-ranking] ^short, en, Cohort ranking)
* component[cohort-ranking].value[x] only Quantity
