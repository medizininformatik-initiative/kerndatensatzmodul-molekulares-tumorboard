Instance: MII-EXA-MTB-Follow-Up-ClinicalImpression-Beispiel-1
InstanceOf: MII_PR_MTB_Follow_Up_ClinicalImpression
Usage: #example
Title: "Beispiel fuer eine Follow-Up Clinical Impression "

* subject = Reference(Patient/PatientExample)
* status = #completed
* code.coding = $SCT#390906007 "Follow-up encounter (procedure)"
* effectiveDateTime = "2024-07-07"
* investigation.code.coding = $mii-cs-mtb-follow-up-status#ongoing
* previous = Reference(mii-exa-mtb-kim-musterperson-behandlungsepisode)
* supportingInfo[UmgesetzteTherapien][+] = Reference(MII_PR_MTB_Systemische_Therapie/Example)
* supportingInfo[AntraegeKostenuebernahme][+] = Reference(MII_PR_MTB_Antrag_Kostenuebernahme/Example)
* supportingInfo[AntwortenKostenuebernahme][+] = Reference(MII_PR_MTB_Antwort_Kostenuebernahme/Example)