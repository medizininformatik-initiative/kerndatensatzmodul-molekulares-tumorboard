Profile: MII_PR_MTB_HRD_Score
Parent: MII_PR_MTB_Molekularer_Biomarker
Id: mii-pr-mtb-hrd-score
Title: "MII PR MTB HRD Score"
Description: "Der HRD-Score, welcher den Grad der homologen Rekombinationsdefizienz bei Zellen beschreibt."
* insert PR_Header

* identifier MS
* focus MS 
* focus only Reference(MII_PR_Onko_Diagnose_Primaertumor or MII_PR_MTB_Diagnose_Primaertumor)

* category MS
* code = $LNC#107286-7
* subject 1..1 MS
* subject only Reference(Patient or Group)
* encounter MS
* specimen MS
* value[x] MS
* value[x] only integer
* interpretation MS
* interpretation from $hl7-v3-observation-high-low-codes

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #closed
* component ^slicing.description = "Elements of the HRD Score"
* component contains LOH 1..1 MS
* component contains TAI 1..1 MS
* component contains LST 1..1 MS
* component[LOH] ^short = "Loss of heterozygosity"
* component[LOH].code = $NCIT#C18016
* component[LOH].value[x] MS
* component[LOH].value[x] only integer
* component[TAI] ^short = "Telomeric allelic imbalance"
* component[TAI].code = $NCIT#C129774
* component[TAI].value[x] MS
* component[TAI].value[x] only integer
* component[LST] ^short = "Large-scale state transitions"
* component[LST].code = $NCIT#C120466
* component[LST].value[x] MS
* component[LST].value[x] only integer

