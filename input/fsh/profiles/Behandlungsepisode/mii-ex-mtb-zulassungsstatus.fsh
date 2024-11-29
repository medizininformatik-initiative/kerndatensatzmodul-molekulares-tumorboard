Extension: MII_EX_MTB_Zulassungsstatus
Id: mii-ex-mtb-zulassungsstatus
Context: Procedure
Title: "MII EX MTB Zulassungsstatus"
Description: "Zulassungsstatus der Leitlinientherapie"
* insert EX_Header($mii-ex-mtb-zulassungsstatus)

* value[x] 1..1 MS
* value[x] only CodeableConcept

// TODO: CS/VS Zulassungsstatus
//* valueCodeableConcept.coding 1..1 MS
//* valueCodeableConcept.coding.system = $mii-cs-mtb-zulassungsstatus
//* valueCodeableConcept.coding.code 1..1 MS
//* valueCodeableConcept.coding.code from MII_VS_MTB_Zulassungsstatus