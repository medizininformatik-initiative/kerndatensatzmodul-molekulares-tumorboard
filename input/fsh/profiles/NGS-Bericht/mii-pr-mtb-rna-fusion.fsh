Profile: MII_PR_MTB_RNA_FUSION
Parent: MII_PR_MolGen_Variante
Id: mii-pr-mtb-rna-fusion
Title: "MII PR MTB RNA Fusion"
Description: "RNA-Fusion"
* insert PR_Header

* identifier MS 
* identifier ^short = "VariantenId"

* component contains
    effect 1..1 MS and
    cosmic-id 1..1 MS and
    five-prime-gene 1..1 MS and
    five-prime-transcript-id 1..1 MS and
    five-prime-exon-id 1..1 MS and
    five-prime-position 1..1 MS and
    five-prime-strand 1..1 MS and
    three-prime-gene 1..1 MS and
    three-prime-transcript-id 1..1 MS and
    three-prime-exon-id 1..1 MS and
    three-prime-position 1..1 MS and
    three-prime-strand 1..1 MS

* component[effect] MS
* component[effect].code MS
* component[effect].valueQuantity MS
* component[effect] ^short = "RNA Fusion Effect" 

* component[cosmic-id] MS
* component[cosmic-id].code MS
* component[cosmic-id].valueCodeableConcept MS
* component[cosmic-id] ^short = "RNA Fusion Cosmic-ID" 

* component[allelic-read-depth] MS
* component[allelic-read-depth].code MS
* component[allelic-read-depth].valueCodeableConcept MS
* component[allelic-read-depth] ^short = "Number reported reads" 

* component[five-prime-gene] MS
* component[five-prime-gene] ^short = "5' Domain - Gene"
* component[five-prime-gene].code MS
* component[five-prime-gene].valueCodeableConcept MS

* component[five-prime-transcript-id] MS
* component[five-prime-transcript-id] ^short = "5' Transcript - Identifier"
* component[five-prime-transcript-id].code MS
* component[five-prime-transcript-id].valueCodeableConcept MS

* component[five-prime-exon-id] MS
* component[five-prime-exon-id] ^short = "5' Exon - Identifier"
* component[five-prime-exon-id].code MS
* component[five-prime-exon-id].valueCodeableConcept MS

* component[five-prime-position] MS
* component[five-prime-position] ^short = "5' Domain - Position"
* component[five-prime-position].code MS
* component[five-prime-position].valueRange

* component[five-prime-strand] MS
* component[five-prime-strand] ^short = "5' Strand"
* component[five-prime-strand].code MS
* component[five-prime-strand].valueRange

* component[three-prime-gene] MS
* component[three-prime-gene] ^short = "3' Domain - Gene"
* component[three-prime-gene].code MS
* component[three-prime-gene].valueCodeableConcept MS

* component[three-prime-transcript-id] MS
* component[three-prime-transcript-id] ^short = "3' Transcript - Identifier"
* component[three-prime-transcript-id].code MS
* component[three-prime-transcript-id].valueCodeableConcept MS

* component[three-prime-exon-id] MS
* component[three-prime-exon-id] ^short = "3' Exon - Identifier"
* component[three-prime-exon-id].code MS
* component[three-prime-exon-id].valueCodeableConcept MS

* component[three-prime-position] MS
* component[three-prime-position] ^short = "3' Domain - Position"
* component[three-prime-position].code MS
* component[three-prime-position].valueRange

* component[three-prime-strand] MS
* component[three-prime-strand] ^short = "3' Strand"
* component[three-prime-strand].code MS
* component[three-prime-strand].valueRange
