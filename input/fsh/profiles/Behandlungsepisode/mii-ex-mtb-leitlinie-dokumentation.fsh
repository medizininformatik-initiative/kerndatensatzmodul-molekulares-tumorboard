Extension: MII_EX_MTB_Leitlinie_Dokumentation
Id: mii-ex-mtb-leitlinie-dokumentation
Context: Element
Title: "MII EX MTB Leitlinie Dokumentation"
Description: "Dokumentation zur Leitlinien-konformen Umsetzung der Prozedur"
* insert EX_Header($mii-ex-mtb-leitlinie-dokumentation)
* extension contains Therapielinie 0..1 MS
* extension contains Zulassungsstatus 0..1 MS

* extension[Therapielinie].value[x] 1..1 MS
* extension[Therapielinie].value[x] only unsignedInt
* extension[Therapielinie].valueUnsignedInt ^short = "Therapielinie"
* extension[Therapielinie].valueUnsignedInt ^definition = "Therapielinie 0 bis 9"
* insert Translation(extension[Therapielinie].valueUnsignedInt ^short, de-DE, Therapielinie)
* insert Translation(extension[Therapielinie].valueUnsignedInt ^definition, de-DE, Therapielinie 0 bis 9)
* insert Translation(extension[Therapielinie].valueUnsignedInt ^short, en, Therapy Line)
* insert Translation(extension[Therapielinie].valueUnsignedInt ^definition, en, Therapy line 0 to 9)

* extension[Zulassungsstatus].valueCodeableConcept.coding 1..1 MS
* extension[Zulassungsstatus].valueCodeableConcept.coding.code 1..1 MS
* extension[Zulassungsstatus].valueCodeableConcept.coding.system = $mii-cs-mtb-zulassungsstatus
* extension[Zulassungsstatus].valueCodeableConcept.coding.code from MII_VS_MTB_Zulassungsstatus
* extension[Zulassungsstatus].valueCodeableConcept.coding ^short = "Zulassungsstatus"
* extension[Zulassungsstatus].valueCodeableConcept.coding ^definition = "Zulassungsstatus der Leitlinientherapie"
* insert Translation(extension[Zulassungsstatus].valueCodeableConcept.coding ^short, de-DE, Zulassungsstatus)
* insert Translation(extension[Zulassungsstatus].valueCodeableConcept.coding ^definition, de-DE, Zulassungsstatus der Leitlinientherapie)
* insert Translation(extension[Zulassungsstatus].valueCodeableConcept.coding ^short, en, Approval Status)
* insert Translation(extension[Zulassungsstatus].valueCodeableConcept.coding ^definition, en, Approval status of the guideline therapy)
