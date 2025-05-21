Profile: MII_PR_MTB_Follow_Up_ClinicalImpression
Parent: ClinicalImpression
Id: mii-pr-mtb-follow-up-clinicalimpression
Title: "MII PR MTB Clinical Impresssion"
Description: "Follow-Up als Prozess des Einholens von Informationen über durchgeführte Therapien & Kostenuebernahmen"
* insert PR_Header

* status 1..1 MS // in-progress | completed | entered-in-error

* code 1..1 MS
* code.coding = $SCT#390906007 "Follow-up encounter (procedure)"

* code ^short = "Follow-Up"
* code ^definition = "Follow-Up als Prozess des Einholens von Informationen über durchgeführte Therapien & Kostenuebernahmen"
* investigation MS
* investigation ^short = "Status Follow-Up"
* investigation ^definition = "Status des Therapieplans im Hinblick auf das Follow-Up"
* investigation.code.coding.system = $mii-cs-mtb-follow-up-status
* investigation.code.coding.code from MII_VS_MTB_Follow_Up_Status

// hier mit einem eigenen VS, auslassen oder hier *auch* den VS verwenden?
// man kann den Grund für die nicht-umsetzung 
// ja eigentlich an dem grund nicht-umsetzung der einzelnen therapien herleiten
// andererseits muss man wenn gar keine therapie erfasst wurde hier evtl auch einen
// grund hinterlegen warum es nicht geklappt hat oder eine "leere" Therapie mit Status und StatusReason
* statusReason MS
* statusReason ^short = "Grund Nicht-Umsetzung"
* statusReason ^definition = "Grund für die Nicht-Umsetzung des gesamten Therapieplans"
* statusReason.coding 1..1
* statusReason.coding.system = $mii-cs-mtb-systemische-therapie-status-grund
* statusReason.coding.code 1..1 MS 
* statusReason.coding.code from MII_VS_MTB_Follow_Up_Grund_Nicht_Umsetzung


* subject MS

* previous 1..1 MS
* previous ^short = "MTB-Behandlungsepisode"
* previous ^definition = "MTB-Behandlungsepisode, auf die sich das Follow-Up bezieht"
* previous only Reference(MII_PR_MTB_Behandlungsepisode)
* effective[x] MS
* effective[x] only dateTime
* effective[x] ^short = "Erfassungsdatum"
* effective[x] ^definition = "Erfassungsdatum Durchführung Follow-Up"

* supportingInfo 0..* MS
* supportingInfo ^slicing.discriminator.type = #profile
* supportingInfo ^slicing.discriminator.path = "reference.resolve()"
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.description = "Slice für die durch das Follow-Up gewonnenen Informationen"
* supportingInfo ^slicing.ordered = false
* supportingInfo contains
    UmgesetzteTherapien 0..* MS and
    AntraegeKostenuebernahme 0..* MS and
    AntwortenKostenuebernahme 0..*

* supportingInfo[UmgesetzteTherapien] ^short = "Umgesetzte Therapien"
* supportingInfo[UmgesetzteTherapien] ^definition = "Umgesetzte Therapien mit oder auch ohne Bezug auf die MTB-Empfehlungen"
* supportingInfo[UmgesetzteTherapien] only Reference(MII_PR_MTB_Systemische_Therapie or Procedure)
* supportingInfo[AntraegeKostenuebernahme] ^short = "Anträge Kostenübernahme"
* supportingInfo[AntraegeKostenuebernahme] ^definition = "Anträge Kostenübernahme für die empfohlenen Therapien"
* supportingInfo[AntraegeKostenuebernahme] only Reference(MII_PR_MTB_Antrag_Kostenuebernahme)
* supportingInfo[AntwortenKostenuebernahme] ^short = "Antworten Kostenübernahme"
* supportingInfo[AntwortenKostenuebernahme] ^definition = "Antworten der Versicherungen auf die Anträge zur Kostenübernahme"
* supportingInfo[AntwortenKostenuebernahme] only Reference(MII_PR_MTB_Antwort_Kostenuebernahme)
 
