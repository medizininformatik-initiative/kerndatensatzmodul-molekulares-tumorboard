Instance: MII-EXA-MTB-BRCAness-1
InstanceOf: MII_PR_MTB_BRCAness
Usage: #example
Title: "Beispiel fuer BRCAness-Analyse"
Description: "Dieses Beispiel beschreibt eine BRCAness-Analyse, die das Verhalten eines Tumors in Bezug auf BRCA-ähnliche Eigenschaften darstellt."

* status = #final

* category[labCategory].coding.system = $fhir-observation-category
* category[labCategory].coding.code = #laboratory "Laboratory"
* category[geCategory].coding.system = $hl7-v2-0074
* category[geCategory].coding.code = #GE "Genetic Test"

* code = $mii-cs-mtb-molekulare-biomarker#brcaness "BRCAness"

* subject = Reference(Patient/example)
* encounter = Reference(Encounter/example)
* specimen = Reference(Specimen/example)

* interpretation = CodeableConcept{HighLowCodesVS#high, "High BRCAness"}

// Components
* component[gene-studied].code.coding.system = $LNC
* component[gene-studied].code.coding.code = #48018-6 "Gene studied"
* component[gene-studied].valueCodeableConcept = HGNC#HGNC:1100 "BRCA1"

* component[brcaness-score].code.coding.system = $LNC
* component[brcaness-score].code.coding.code = "81259-4"
* component[brcaness-score].code.text = "BRCAness Score"
* component[brcaness-score].valueQuantity.value = 45.2
* component[brcaness-score].valueQuantity.unit = "Score"
* component[brcaness-score].interpretation = CodeableConcept{HighLowCodesVS#high, "High"}
