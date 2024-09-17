Instance: MII-EXA-MTB-Follow-Up-Procedure-Beispiel-1
InstanceOf: MII_PR_MTB_Follow_Up_Procedure
Usage: #example
Title: "Beispiel fuer einen Follow-Up Procedure"

* status = #preparation
* subject = Reference(Patient/PatientExample)
* performedDateTime = "2024-07-07"
* basedOn = Reference(CarePlan/CarePlanExample)
* followUp[Status].coding.code = #on-going
* followUp[GrundNichtUmsetzung].coding.code = #no-indication