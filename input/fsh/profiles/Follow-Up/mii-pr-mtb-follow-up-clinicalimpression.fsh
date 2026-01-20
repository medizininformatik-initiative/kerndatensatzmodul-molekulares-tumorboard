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
* insert Translation(code ^short, de-DE, Follow-Up)
* insert Translation(code ^definition, de-DE, Follow-Up als Prozess des Einholens von Informationen ueber durchgefuehrte Therapien & Kostenuebernahmen)
* insert Translation(code ^short, en, Follow-Up)
* insert Translation(code ^definition, en, Follow-up as a process of gathering information about performed therapies and cost coverage)
* investigation MS
* investigation ^short = "Status Follow-Up"
* investigation ^definition = "Status des Therapieplans im Hinblick auf das Follow-Up"
* insert Translation(investigation ^short, de-DE, Status Follow-Up)
* insert Translation(investigation ^definition, de-DE, Status des Therapieplans im Hinblick auf das Follow-Up)
* insert Translation(investigation ^short, en, Follow-Up Status)
* insert Translation(investigation ^definition, en, Status of the therapy plan with regard to follow-up)
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
* insert Translation(statusReason ^short, de-DE, Grund Nicht-Umsetzung)
* insert Translation(statusReason ^definition, de-DE, Grund fuer die Nicht-Umsetzung des gesamten Therapieplans)
* insert Translation(statusReason ^short, en, Reason for Non-Implementation)
* insert Translation(statusReason ^definition, en, Reason for non-implementation of the entire therapy plan)
* statusReason.coding 1..1
* statusReason.coding.system = $mii-cs-mtb-systemische-therapie-status-grund
* statusReason.coding.code 1..1 MS 
* statusReason.coding.code from MII_VS_MTB_Follow_Up_Grund_Nicht_Umsetzung

* subject MS

* previous 1..1 MS
* previous ^short = "MTB-Behandlungsepisode"
* previous ^definition = "MTB-Behandlungsepisode, auf die sich das Follow-Up bezieht"
* insert Translation(previous ^short, de-DE, MTB-Behandlungsepisode)
* insert Translation(previous ^definition, de-DE, MTB-Behandlungsepisode auf die sich das Follow-Up bezieht)
* insert Translation(previous ^short, en, MTB Treatment Episode)
* insert Translation(previous ^definition, en, MTB treatment episode to which the follow-up refers)
* previous only Reference(MII_PR_MTB_Behandlungsepisode)
* effective[x] MS
* effective[x] only dateTime
* effective[x] ^short = "Erfassungsdatum"
* effective[x] ^definition = "Erfassungsdatum Durchführung Follow-Up"
* insert Translation(effective[x] ^short, de-DE, Erfassungsdatum)
* insert Translation(effective[x] ^definition, de-DE, Erfassungsdatum Durchfuehrung Follow-Up)
* insert Translation(effective[x] ^short, en, Recording Date)
* insert Translation(effective[x] ^definition, en, Recording date of follow-up execution)

* supportingInfo 0..* MS
* supportingInfo ^slicing.discriminator.type = #type
* supportingInfo ^slicing.discriminator.path = "$this.resolve()"
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.description = "Slice für die durch das Follow-Up gewonnenen Informationen"
* supportingInfo ^slicing.ordered = false
* supportingInfo contains
    UmgesetzteTherapien 0..* MS and
    AntraegeKostenuebernahme 0..* MS and
    AntwortenKostenuebernahme 0..*

* supportingInfo[UmgesetzteTherapien] ^short = "Umgesetzte Therapien"
* supportingInfo[UmgesetzteTherapien] ^definition = "Umgesetzte Therapien mit oder auch ohne Bezug auf die MTB-Empfehlungen"
* insert Translation(supportingInfo[UmgesetzteTherapien] ^short, de-DE, Umgesetzte Therapien)
* insert Translation(supportingInfo[UmgesetzteTherapien] ^definition, de-DE, Umgesetzte Therapien mit oder auch ohne Bezug auf die MTB-Empfehlungen)
* insert Translation(supportingInfo[UmgesetzteTherapien] ^short, en, Implemented Therapies)
* insert Translation(supportingInfo[UmgesetzteTherapien] ^definition, en, Implemented therapies with or without reference to MTB recommendations)
* supportingInfo[UmgesetzteTherapien] only Reference(Procedure)
* supportingInfo[AntraegeKostenuebernahme] ^short = "Anträge Kostenübernahme"
* supportingInfo[AntraegeKostenuebernahme] ^definition = "Anträge Kostenübernahme für die empfohlenen Therapien"
* insert Translation(supportingInfo[AntraegeKostenuebernahme] ^short, de-DE, Antraege Kostenuebernahme)
* insert Translation(supportingInfo[AntraegeKostenuebernahme] ^definition, de-DE, Antraege Kostenuebernahme fuer die empfohlenen Therapien)
* insert Translation(supportingInfo[AntraegeKostenuebernahme] ^short, en, Cost Coverage Applications)
* insert Translation(supportingInfo[AntraegeKostenuebernahme] ^definition, en, Cost coverage applications for the recommended therapies)
* supportingInfo[AntraegeKostenuebernahme] only Reference(Claim)
* supportingInfo[AntwortenKostenuebernahme] ^short = "Antworten Kostenübernahme"
* supportingInfo[AntwortenKostenuebernahme] ^definition = "Antworten der Versicherungen auf die Anträge zur Kostenübernahme"
* insert Translation(supportingInfo[AntwortenKostenuebernahme] ^short, de-DE, Antworten Kostenuebernahme)
* insert Translation(supportingInfo[AntwortenKostenuebernahme] ^definition, de-DE, Antworten der Versicherungen auf die Antraege zur Kostenuebernahme)
* insert Translation(supportingInfo[AntwortenKostenuebernahme] ^short, en, Cost Coverage Responses)
* insert Translation(supportingInfo[AntwortenKostenuebernahme] ^definition, en, Responses from insurance companies to cost coverage applications)
* supportingInfo[AntwortenKostenuebernahme] only Reference(ClaimResponse)
 
