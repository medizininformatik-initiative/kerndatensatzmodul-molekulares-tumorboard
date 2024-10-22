Profile: MII_PR_MTB_Follow_Up_CarePlan
Parent: CarePlan
Id: mii-pr-mtb-follow-up-careplan
Title: "MII PR MTB Follow-Up Careplan"
Description: "Durchgefuehrte geplante Therapien"
* insert PR_Header

* status MS
* intent MS
* subject MS
// Systemtherapie ist eher MedicationStatement als ein MedicationRequest, 
// deshalb lassen wir die MedicationStatement Ressource auf Careplan referieren?
// * activity 0..* MS
// * activity.reference MS
// * activity.reference only Reference(MedicationRequest)

// m.M. die einzig mögliche sinnvolle Verknüpfung von Follow-Up (als CarePlan und Procedure) 
// mit den Claims ohne extensions - JG-IBSM
* supportingInfo 0..* MS
* supportingInfo only Reference(MII_PR_MTB_Antrag_Kostenuebernahme)