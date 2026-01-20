Profile: MII_PR_MTB_Copy_Number_Variant
Parent: MII_PR_MolGen_Variante
Id: mii-pr-mtb-copy-number-variant
Title: "MII PR MTB Copy Number Variant"
Description: "Copy Number Variant (CNV)"
* insert PR_Header

* identifier MS
* identifier ^short = "VariantenId im Kontext des NGS-Befundes"
* identifier ^definition = "Eindeutige ID der Variante im Kontext des NGS-Befundes."
* insert Translation(identifier ^short, de-DE, VariantenId im Kontext des NGS-Befundes)
* insert Translation(identifier ^definition, de-DE, Eindeutige ID der Variante im Kontext des NGS-Befundes.)
* insert Translation(identifier ^short, en, Variant ID in the context of the NGS report)
* insert Translation(identifier ^definition, en, Unique ID of the variant in the context of the NGS report.)

* focus MS 
* focus only Reference(MII_PR_Onko_Diagnose_Primaertumor or MII_PR_MTB_Diagnose_Primaertumor)

* component contains
    relative-copy-number 0..* MS and
    cna 0..* MS and
    cnb 0..* MS and
    reported-focality 0..* MS and
    cnv-type 0..* MS and
    copy-number-neutral-loh 0..* MS

* component[chromosome-identifier] MS
* component[chromosome-identifier].code ^patternCodeableConcept = $LNC#48000-4
* component[chromosome-identifier] ^definition = "Chromosome auf dem sich die Variante befindet (chr1 - chr22, chrX, chrY)."
* insert Translation(component[chromosome-identifier] ^definition, de-DE, Chromosom auf dem sich die Variante befindet - chr1 - chr22 - chrX - chrY)
* insert Translation(component[chromosome-identifier] ^definition, en, Chromosome on which the variant is located - chr1 - chr22 - chrX - chrY)

* component[exact-start-end] MS
* component[exact-start-end].code MS
* component[exact-start-end].code ^patternCodeableConcept = $LNC#81254-5
* component[exact-start-end].valueRange MS
* component[exact-start-end] ^short = "Positionsbereich"
* component[exact-start-end] ^definition = "Positionsbereich der genetischen Variante."
* insert Translation(component[exact-start-end] ^short, de-DE, Positionsbereich)
* insert Translation(component[exact-start-end] ^definition, de-DE, Positionsbereich der genetischen Variante.)
* insert Translation(component[exact-start-end] ^short, en, Position range)
* insert Translation(component[exact-start-end] ^definition, en, Position range of the genetic variant.)

* component[copy-number] MS
* component[copy-number].code MS
* component[copy-number].code ^patternCodeableConcept = $LNC#82155-3
* component[copy-number].valueQuantity MS
* component[copy-number] ^short = "Total Copy Number"
* component[copy-number] ^definition = "Total Copy Number"
* insert Translation(component[copy-number] ^short, de-DE, Gesamtkopienzahl)
* insert Translation(component[copy-number] ^definition, de-DE, Gesamtkopienzahl)
* insert Translation(component[copy-number] ^short, en, Total Copy Number)
* insert Translation(component[copy-number] ^definition, en, Total Copy Number)

* component[relative-copy-number] MS
* component[relative-copy-number].code MS
* component[relative-copy-number].code ^patternCodeableConcept = $mii-cs-mtb-molekulare-biomarker#relative-copy-number
* component[relative-copy-number].valueQuantity MS
* component[relative-copy-number] ^short = "Relative Copy Number"
* component[relative-copy-number] ^definition = "Relative Copy Number"
* insert Translation(component[relative-copy-number] ^short, de-DE, Relative Kopienzahl)
* insert Translation(component[relative-copy-number] ^definition, de-DE, Relative Kopienzahl)
* insert Translation(component[relative-copy-number] ^short, en, Relative Copy Number)
* insert Translation(component[relative-copy-number] ^definition, en, Relative Copy Number)

* component[cna] MS
* component[cna].code MS
* component[cna].code ^patternCodeableConcept = $mii-cs-mtb-molekulare-biomarker#copy-number-allele-a // TODO We need LOINC codes
* component[cna].valueQuantity MS
* component[cna] ^short = "CNA"
* component[cna] ^definition = "Copy Number Allel A"
* insert Translation(component[cna] ^short, de-DE, CNA)
* insert Translation(component[cna] ^definition, de-DE, Kopienzahl Allel A)
* insert Translation(component[cna] ^short, en, CNA)
* insert Translation(component[cna] ^definition, en, Copy Number Allele A)

* component[cnb] MS
* component[cnb].code MS
* component[cnb].code ^patternCodeableConcept = $mii-cs-mtb-molekulare-biomarker#copy-number-allele-b // TODO We need LOINC codes
* component[cnb].valueQuantity MS
* component[cnb] ^short = "CNB"
* component[cnb] ^definition = "Copy Number Allel B"
* insert Translation(component[cnb] ^short, de-DE, CNB)
* insert Translation(component[cnb] ^definition, de-DE, Kopienzahl Allel B)
* insert Translation(component[cnb] ^short, en, CNB)
* insert Translation(component[cnb] ^definition, en, Copy Number Allele B)

* component[gene-studied] MS
* component[gene-studied].code MS
* component[gene-studied].code ^patternCodeableConcept = $LNC#48018-6
* component[gene-studied].valueCodeableConcept MS
* component[gene-studied] ^short = "Reported affected genes"
* component[gene-studied] ^definition = "Reported affected genes"
* insert Translation(component[gene-studied] ^short, de-DE, Berichtete betroffene Gene)
* insert Translation(component[gene-studied] ^definition, de-DE, Berichtete betroffene Gene)
* insert Translation(component[gene-studied] ^short, en, Reported affected genes)
* insert Translation(component[gene-studied] ^definition, en, Reported affected genes)

* component[reported-focality] MS
* component[reported-focality].code MS
* component[reported-focality].code ^patternCodeableConcept = $mii-cs-mtb-molekulare-biomarker#reported-focality // TODO We need LOINC codes
* component[reported-focality].valueQuantity MS
* component[reported-focality] ^short = "Reported focality"
* component[reported-focality] ^definition = "Reported focality"
* insert Translation(component[reported-focality] ^short, de-DE, Berichtete Fokalitaet)
* insert Translation(component[reported-focality] ^definition, de-DE, Berichtete Fokalitaet)
* insert Translation(component[reported-focality] ^short, en, Reported focality)
* insert Translation(component[reported-focality] ^definition, en, Reported focality)

* component[cnv-type] MS
* component[cnv-type].code = $bwhc-cnv-type#type
* component[cnv-type].valueCodeableConcept MS //values: low gain, high gain, loss
* component[cnv-type] ^short = "CNV Type"
* component[cnv-type] ^definition = "Copy Number Variant Type"
* insert Translation(component[cnv-type] ^short, de-DE, CNV-Typ)
* insert Translation(component[cnv-type] ^definition, de-DE, Kopienzahlvarianten-Typ)
* insert Translation(component[cnv-type] ^short, en, CNV Type)
* insert Translation(component[cnv-type] ^definition, en, Copy Number Variant Type)

* component[copy-number-neutral-loh] MS
* component[copy-number-neutral-loh].code MS
* component[copy-number-neutral-loh].code ^patternCodeableConcept = $mii-cs-mtb-molekulare-biomarker#copy-number-neutral-loh // TODO We need LOINC codes
* component[copy-number-neutral-loh].valueCodeableConcept MS
* component[copy-number-neutral-loh] ^short = "Copy number neutral LoH"
* component[copy-number-neutral-loh] ^definition = "Copy number neutral Loss of heterozygosity"
* insert Translation(component[copy-number-neutral-loh] ^short, de-DE, Kopienzahlneutraler LoH)
* insert Translation(component[copy-number-neutral-loh] ^definition, de-DE, Kopienzahlneutraler Verlust der Heterozygotie)
* insert Translation(component[copy-number-neutral-loh] ^short, en, Copy number neutral LoH)
* insert Translation(component[copy-number-neutral-loh] ^definition, en, Copy number neutral Loss of heterozygosity)