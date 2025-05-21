Profile: MII_PR_MTB_Copy_Number_Variant
Parent: MII_PR_MolGen_Variante
Id: mii-pr-mtb-copy-number-variant
Title: "MII PR MTB Copy Number Variant"
Description: "Copy Number Variant (CNV)"
* insert PR_Header

* identifier MS
* identifier ^short = "VariantenId im Kontext des NGS-Befundes"
* identifier ^definition = "Eindeutige ID der Variante im Kontext des NGS-Befundes."

* focus MS 
* focus only Reference(MII_PR_Onko_Diagnose_Primaertumor or MII_PR_MTB_Diagnose_Primaertumor)

* component contains
    relative-copy-number 0..* MS and
    cna 0..* MS and
    cnb 0..* MS and
    reported-focality 0..* MS and
    cnv-type 0..* MS and
    copy-number-neutral-loh 0..* MS


* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slicing der Copy Number Variation (CNV) Komponenten"
* component ^slicing.ordered = false

* component[chromosome-identifier] MS
* component[chromosome-identifier] ^definition = "Chromosome auf dem sich die Variante befindet (chr1 - chr22, chrX, chrY)."

* component[exact-start-end] MS
* component[exact-start-end].code MS
* component[exact-start-end].valueRange MS
* component[exact-start-end] ^short = "Positionsbereich"
* component[exact-start-end] ^definition = "Positionsbereich der genetischen Variante."

* component[copy-number] MS
* component[copy-number].code MS
* component[copy-number].valueQuantity MS
* component[copy-number] ^short = "Total Copy Number" 
* component[copy-number] ^definition = "Total Copy Number"

* component[relative-copy-number] MS
* component[relative-copy-number].code MS
* component[relative-copy-number].valueQuantity MS
* component[relative-copy-number] ^short = "Relative Copy Number" 
* component[relative-copy-number] ^definition = "Relative Copy Number"

* component[cna] MS
* component[cna].code MS
* component[cna].valueQuantity MS
* component[cna] ^short = "CNA" 
* component[cna] ^definition = "Copy Number Allel A"

* component[cnb] MS
* component[cnb].code MS
* component[cnb].valueQuantity MS
* component[cnb] ^short = "CNB" 
* component[cnb] ^definition = "Copy Number Allel B"

* component[gene-studied] MS
* component[gene-studied].code MS
* component[gene-studied].valueCodeableConcept MS
* component[gene-studied] ^short = "Reported affected genes" 
* component[gene-studied] ^definition = "Reported affected genes"

* component[reported-focality] MS
* component[reported-focality].code MS
* component[reported-focality].valueQuantity MS
* component[reported-focality] ^short = "Reported focality" 
* component[reported-focality] ^definition = "Reported focality"

* component[cnv-type] MS
* component[cnv-type].code = $bwhc-cnv-type#type
* component[cnv-type].valueCodeableConcept MS //values: low gain, high gain, loss
* component[cnv-type] ^short = "CNV Type" 
* component[cnv-type] ^definition = "Copy Number Variant Type"

* component[copy-number-neutral-loh] MS
* component[copy-number-neutral-loh].code MS
* component[copy-number-neutral-loh].valueCodeableConcept MS
* component[copy-number-neutral-loh] ^short = "Copy number neutral LoH" 
* component[copy-number-neutral-loh] ^definition = "Copy number neutral Loss of heterozygosity"