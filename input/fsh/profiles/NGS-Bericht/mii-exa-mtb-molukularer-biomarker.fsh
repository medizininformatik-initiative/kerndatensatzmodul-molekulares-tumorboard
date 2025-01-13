Instance: MII-EXA-MTB-Molekularer-Biomarker-1
InstanceOf: MII_PR_MTB_Molekularer_Biomarker
Usage: #example
Title: "Beispiel fuer Molekularen Biomarker"
Description: "Ein Beispiel für einen molekularen Biomarker, der im Rahmen eines genetischen Tests identifiziert wurde."

* status = #final

* category[labCategory].coding.system = $fhir-observation-category
* category[labCategory].coding.code = #laboratory "Laboratory"

* category[geCategory].coding.code = #GE "Genetic Test"
* category[geCategory].coding.system = $hl7-v2-0074

* code.coding.system = "http://example.org/mii-vs-mtb-molekulare-biomarker"
* code.coding.code = "BRCA1-Biomarker"
* code.text = "BRCA1 Biomarker"

* subject = Reference(Patient/example)
* encounter = Reference(Encounter/example)
* specimen = Reference(Specimen/example)
* derivedFrom[variant] = Reference(Variant/example)
* derivedFrom[genotype] = Reference(Genotype/example)

* component[gene-studied].code.coding.system = $LNC
* component[gene-studied].code.coding.code = #48018-6 "Gene studied"
* component[gene-studied].valueCodeableConcept = HGNC#HGNC:1100 "BRCA1"
