Instance: MII-EXA-MTB-Follow-Up-ClinicalImpression-Beispiel-1
InstanceOf: MII_PR_MTB_Follow_Up_ClinicalImpression
Usage: #example
Title: "Beispiel fuer eine Follow-Up Clinical Impression "

* subject = Reference(Patient/PatientExample)
* effectiveDateTime = "2024-07-07"
* investigation.code.coding.code = #on-going
* statusReason = #no-indication
* supportingInfo[UmgesetzteTherapien][0] = Reference(MII_PR_MTB_Systemische_Therapie/Example)
* supportingInfo[AntraegeKostenuebernahme][0] = Reference(MII_PR_MTB_Antrag_Kostenuebernahme/Example)
* supportingInfo[AntwortenKostenuebernahme][0] = Reference(MII_PR_MTB_Antwort_Kostenuebernahme/Example)