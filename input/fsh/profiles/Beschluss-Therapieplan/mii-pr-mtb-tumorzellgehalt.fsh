Profile: MII_PR_MTB_Tumorzellgehalt
Parent: MII_PR_Patho_Finding
Id: mii-pr-mtb-tumorzellgehalt
Title: "MII PR MTB Tumorzellgehalt"
Description: "Bestimmter Tumorzellgehalt"
* insert PR_Header

// TODO: Zuordnung prüfen
* category[laboratory-category].coding = $fhir-observation-category#laboratory "Laboratory"
* category[section-type].coding = $LNC#22637-3 "Pathology report diagnosis"

// TODO: Zuordnung prüfen
//* code = $SCT#762656009 "Abnormal blood cell count"
* code = $LNC#93356-4 "Cells with cytogenetic abnormality [#] in Blood or Tissue by Molecular genetics method"

* value[x] 1..1 MS
* value[x] only Quantity
* valueQuantity.value 1..1 MS
* valueQuantity.unit = "percent"
* valueQuantity.system = $UCUM
* valueQuantity.code = #%

* method 1..1 MS
* method from MII_VS_MTB_BestimmungsmethodeTumorzellgehalt (preferred)
