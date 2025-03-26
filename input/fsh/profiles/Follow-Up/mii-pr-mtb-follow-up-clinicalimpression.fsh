Profile: MII_PR_MTB_Follow_Up_ClinicalImpression
Parent: ClinicalImpression
Id: mii-pr-mtb-follow-up-clincalimpression
Title: "MII PR MTB Clinical Impresssion"
Description: "Follow-Up nach DNPM "
* insert PR_Header

* status MS
* status = #completed

* investigation MS
* investigation ^short = "Status Follow-Up"
* investigation.code.coding.system = $mii-cs-mtb-follow-up-status
* investigation.code.coding.code from MII_VS_MTB_Follow_Up_Status


* statusReason MS
* statusReason ^short = "Grund Nicht-Umsetzung"
* statusReason ^definition = "Grund der Nicht-Umsetzung des gesamten Therapieplans"
* statusReason.coding 1..1
* statusReason.coding.system = $mii-cs-mtb-follow-up-grund-nicht-umsetzung
* statusReason.coding.code 1..1 MS 
* statusReason.coding.code from $mii-cs-mtb-follow-up-grund-nicht-umsetzung

* subject MS

* effective[x] MS
* effective[x] only dateTime
* effective[x] ^short = "Erfassungsdatum"
* effective[x] ^definition = "Erfassungsdatum Durchführung Follow-Up"

* supportingInfo 1..* MS
* supportingInfo ^slicing.discriminator.type = #type
* supportingInfo ^slicing.discriminator.path = "system"
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.description = "Slice für die durch das Follow-Up gewonnen Informationen"
* supportingInfo ^slicing.ordered = false
* supportingInfo contains
    UmgesetzteTherapien 0..* MS and
    AntraegeKostenuebernahme 0..* MS and
    AntwortenKostenuebernahme 0..*

* supportingInfo[UmgesetzteTherapien] ^short = "Umgesetzte Therapien"
* supportingInfo[UmgesetzteTherapien] only Reference(MII_PR_MTB_Systemtherapie or MedicationStatement or Procedure)
* supportingInfo[AntraegeKostenuebernahme] ^short = "Anträge Kostenübernahme"
* supportingInfo[AntraegeKostenuebernahme] only Reference(MII_PR_MTB_Antrag_Kostenuebernahme)
* supportingInfo[AntwortenKostenuebernahme] ^short = "Antworten Kostenübernahme"
* supportingInfo[AntwortenKostenuebernahme] only Reference(MII_PR_MTB_Antwort_Kostenuebernahme)
 
