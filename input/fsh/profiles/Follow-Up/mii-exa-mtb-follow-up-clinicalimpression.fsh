Instance: MII-EXA-MTB-Follow-Up-ClinicalImpression-Beispiel-1
InstanceOf: MII_PR_MTB_Follow_Up_ClinicalImpression
Usage: #example
Title: "Beispiel fuer einen Follow-Up Procedure"

* subject = Reference(Patient/PatientExample)
* effectiveDateTime = "2024-07-07"
* investigation.code.coding.code = #on-going
* statusReason = #no-indication
* supportingInfo[UmgesetzteTherapien] = Reference(MII_PR_MTB_Systemische_Therapie/Example)