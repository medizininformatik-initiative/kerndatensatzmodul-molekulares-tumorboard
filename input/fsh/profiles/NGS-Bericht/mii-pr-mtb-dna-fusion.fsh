Profile: MII_PR_MTB_DNA_Fusion
Parent: MII_PR_MolGen_Variante
Id: mii-pr-mtb-dna-fusion
Title: "MII PR MTB DNA Fusion"
Description: "DNA-Fusion"
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
    five-prime-chromosome 1..1 MS and
    three-prime-chromosome 1..1 MS and
    five-prime-position 1..1 MS and
    three-prime-position 1..1 MS and
    five-prime-gene 1..1 MS and
    three-prime-gene 1..1 MS

* component[five-prime-chromosome] MS
* component[five-prime-chromosome] ^short = "5' Domain - Chromosom"
* insert Translation(component[five-prime-chromosome] ^short, de-DE, 5' Domaene - Chromosom)
* insert Translation(component[five-prime-chromosome] ^short, en, 5' Domain - Chromosome)
* component[five-prime-chromosome].code = $mii-cs-mtb-molekulare-biomarker#five-prime-chromosome
* component[five-prime-chromosome].valueCodeableConcept MS

* component[three-prime-chromosome] MS
* component[three-prime-chromosome] ^short = "3' Domain - Chromosom"
* insert Translation(component[three-prime-chromosome] ^short, de-DE, 3' Domaene - Chromosom)
* insert Translation(component[three-prime-chromosome] ^short, en, 3' Domain - Chromosome)
* component[three-prime-chromosome].code MS
* component[three-prime-chromosome].code = $mii-cs-mtb-molekulare-biomarker#three-prime-chromosome
* component[three-prime-chromosome].valueCodeableConcept MS

* component[five-prime-position] MS
* component[five-prime-position] ^short = "5' Domain - Position"
* insert Translation(component[five-prime-position] ^short, de-DE, 5' Domaene - Position)
* insert Translation(component[five-prime-position] ^short, en, 5' Domain - Position)
* component[five-prime-position].code MS
* component[five-prime-position].code = $mii-cs-mtb-molekulare-biomarker#five-prime-position
* component[five-prime-position].valueRange MS

* component[three-prime-position] MS
* component[three-prime-position] ^short = "3' Domain - Position"
* insert Translation(component[three-prime-position] ^short, de-DE, 3' Domaene - Position)
* insert Translation(component[three-prime-position] ^short, en, 3' Domain - Position)
* component[three-prime-position].code MS
* component[three-prime-position].code = $mii-cs-mtb-molekulare-biomarker#three-prime-position
* component[three-prime-position].valueRange

* component[five-prime-gene] MS
* component[five-prime-gene] ^short = "5' Domain - Gen"
* insert Translation(component[five-prime-gene] ^short, de-DE, 5' Domaene - Gen)
* insert Translation(component[five-prime-gene] ^short, en, 5' Domain - Gene)
* component[five-prime-gene].code MS
* component[five-prime-gene].code = $mii-cs-mtb-molekulare-biomarker#five-prime-gene
* component[five-prime-gene].valueCodeableConcept

* component[three-prime-gene] MS
* component[three-prime-gene] ^short = "3' Domain - Gen"
* insert Translation(component[three-prime-gene] ^short, de-DE, 3' Domaene - Gen)
* insert Translation(component[three-prime-gene] ^short, en, 3' Domain - Gene)
* component[three-prime-gene].code MS
* component[three-prime-gene].code = $mii-cs-mtb-molekulare-biomarker#three-prime-gene
* component[three-prime-gene].valueCodeableConcept MS

* component[allelic-read-depth] MS
* component[allelic-read-depth].code MS
* component[allelic-read-depth].valueQuantity MS
* component[allelic-read-depth] ^short = "Number reported reads"
* insert Translation(component[allelic-read-depth] ^short, de-DE, Anzahl berichteter Lesevorgaenge)
* insert Translation(component[allelic-read-depth] ^short, en, Number reported reads)
