Profile: MII_PR_MTB_Tumorzellgehalt
Parent: MII_PR_Patho_Finding
Id: mii-pr-mtb-tumorzellgehalt
Title: "MII PR MTB Tumorzellgehalt"
Description: "Bestimmter Tumorzellgehalt"
* insert PR_Header

// TODO: Zuordnung "Additional documentation" prüfen
* category[laboratory-category].coding = $fhir-observation-category#laboratory
* category[section-type].coding = $LNC#77599-9

// TODO: Zuordnung prüfen (Cells with cytogenetic abnormality [#] in Blood or Tissue by Molecular genetics method)
* code = $LNC#93356-4

* value[x] 1..1 MS
* value[x] only Quantity
* valueQuantity.value 1..1 MS
* valueQuantity.unit = "percent / 100"
* valueQuantity.system = $UCUM
* valueQuantity.code = #%/100

* method 1..1 MS
* method from MII_VS_MTB_BestimmungsmethodeTumorzellgehalt (preferred)
