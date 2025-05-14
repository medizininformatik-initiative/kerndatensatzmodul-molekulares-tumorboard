Extension: MII_EX_MTB_Leitlinienbehandlung_Status
Id: mii-ex-mtb-leitlinienbehandlung-status
Context: Condition
Title: "MII EX MTB Leitlinienbehandlung Status"
Description: "Status der Behandlung nach Leitlinie"
* insert EX_Header($mii-ex-mtb-leitlinienbehandlung-status)

* value[x] 1..1 MS
* value[x] only CodeableConcept

* valueCodeableConcept.coding 1..1 MS
* valueCodeableConcept.coding ^short = "Leitlinienbehandlungsstatus"
* valueCodeableConcept.coding ^definition = "Status der Behandlung nach Leitline zum Zeitpunkt des Einschlusses ins MTB"
* valueCodeableConcept.coding.code 1..1 MS
* valueCodeableConcept.coding.system = $mii-cs-mtb-leitlinienbehandlung-status
* valueCodeableConcept.coding.code from MII_VS_MTB_Leitlinienbehandlung_Status