Profile: MII_PR_MTB_Tumorzellgehalt
Parent: MII_PR_Patho_Finding
Id: mii-pr-mtb-tumorzellgehalt
Title: "MII PR MTB Tumorzellgehalt"
Description: "Bestimmter Tumorzellgehalt"
* insert PR_Header
* category[laboratory-category].coding = $fhir-observation-category#laboratory
// TODO: Zuordnung "Additional documentation" prüfen
* category[section-type].coding = $LNC#77599-9
* code = $LNC#93356-4 // Cells with cytogenetic abnormality [#] in Blood or Tissue by Molecular genetics method

* value[x] 1..1 MS
* value[x] only Quantity
* valueQuantity.value 1..1 MS
* valueQuantity.unit = "percent / 100"
* valueQuantity.system = $UCUM
* valueQuantity.code = #%/100

* method 1..1 MS
// TODO: Bindingstärke klären
* method from MII_VS_MTB_BestimmungsmethodeTumorzellgehalt (preferred)
