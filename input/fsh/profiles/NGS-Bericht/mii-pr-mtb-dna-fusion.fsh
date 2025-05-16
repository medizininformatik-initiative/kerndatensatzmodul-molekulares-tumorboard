Profile: MII_PR_MTB_DNA_Fusion
Parent: MII_PR_MolGen_Variante
Id: mii-pr-mtb-dna-fusion
Title: "MII PR MTB DNA Fusion"
Description: "DNA-Fusion"
* insert PR_Header

* identifier MS 
* identifier ^short = "VariantenId im Kontext des NGS-Befundes"
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
* component[five-prime-chromosome].code MS
* component[five-prime-chromosome].valueCodeableConcept MS

* component[three-prime-chromosome] MS
* component[three-prime-chromosome] ^short = "3' Domain - Chromosom"
* component[three-prime-chromosome].code MS
* component[three-prime-chromosome].valueCodeableConcept MS

* component[five-prime-position] MS
* component[five-prime-position] ^short = "5' Domain - Position"
* component[five-prime-position].code MS
* component[five-prime-position].valueRange MS

* component[three-prime-position] MS
* component[three-prime-position] ^short = "3' Domain - Position"
* component[three-prime-position].code MS
* component[three-prime-position].valueRange

* component[five-prime-gene] MS
* component[five-prime-gene] ^short = "5' Domain - Gen"
* component[five-prime-gene].code MS
* component[five-prime-gene].valueCodeableConcept

* component[three-prime-gene] MS
* component[three-prime-gene] ^short = "3' Domain - Gen"
* component[three-prime-gene].code MS
* component[three-prime-gene].valueCodeableConcept MS

// allelic depth wirklich richtig? - JG-IBSM
* component[allelic-read-depth] MS
* component[allelic-read-depth].code MS
* component[allelic-read-depth].valueQuantity MS
* component[allelic-read-depth] ^short = "Number reported reads" 
