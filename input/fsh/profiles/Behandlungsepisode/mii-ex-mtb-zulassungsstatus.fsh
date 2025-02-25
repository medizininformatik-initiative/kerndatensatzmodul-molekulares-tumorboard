Extension: MII_EX_MTB_Zulassungsstatus
Id: mii-ex-mtb-zulassungsstatus
Context: Extension, Procedure
Title: "MII EX MTB Zulassungsstatus"
Description: "Zulassungsstatus der Leitlinientherapie"
* insert EX_Header($mii-ex-mtb-zulassungsstatus)

* valueCodeableConcept.coding 1..1 MS
* valueCodeableConcept.coding.code 1..1 MS
* valueCodeableConcept.coding.system = $mii-cs-mtb-zulassungsstatus
* valueCodeableConcept.coding.code from MII_VS_MTB_Zulassungsstatus
* valueCodeableConcept.coding ^short = "Zulassungsstatus"
* valueCodeableConcept.coding ^definition = "Zulassungsstatus der Leitlinientherapie"