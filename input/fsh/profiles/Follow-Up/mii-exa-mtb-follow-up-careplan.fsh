Instance: MII-EXA-MTB-Follow-Up-Careplan-Beispiel-1
InstanceOf: MII_PR_MTB_Follow_Up_CarePlan
Usage: #example
Title: "Beispiel fuer einen Follow-Up Careplan"

* status = #active
* intent = #plan
* subject = Reference(Patient/example)
* activity.reference = Reference(MedicationRequest/TherapieempfehlungExample)