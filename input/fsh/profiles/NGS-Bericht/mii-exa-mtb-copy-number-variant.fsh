Instance: MII-EXA-MTB-Copy-Number-Variant-1
InstanceOf: MII_PR_MTB_Copy_Number_Variant
Usage: #example
Title: "Beispiel fuer Copy Number Variant"
Description: "Beispiel fuer eine Copy Number Variant (CNV)."

* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/copy-number-variant"
* status = #final
* category[labCategory] = $fhir-observation-category#laboratory "Laboratory"
* code = $LNC#69548-6 "Genetic variant assessment"

* subject = Reference(Patient/example)

* component[chromosome-identifier].code = $LNC#48000-4
* component[chromosome-identifier].valueCodeableConcept = #LA21270-6 "Chromosome 17"

* component[exact-start-end].code = $LNC#81254-5
* component[exact-start-end].valueRange.low.value = 43044295
* component[exact-start-end].valueRange.high.value = 43125364

* component[copy-number].code = $LNC#82155-3
* component[copy-number].valueQuantity = 3 UCUM#1 "Copy Number"

* component[relative-copy-number].code = $LNC#00000-1
* component[relative-copy-number].valueQuantity = 1.5 UCUM#1 "Relative Copy Number"

* component[cna].code = $LNC#00000-1 // TODO We need LOINC codes
* component[cna].valueQuantity = 1 UCUM#1 "Copy Number Allel A"

* component[cnb].code = $LNC#00000-1 // TODO We need LOINC codes
* component[cnb].valueQuantity = 2 UCUM#1 "Copy Number Allel B"

* component[gene-studied].code = $LNC#48018-6
* component[gene-studied].valueCodeableConcept = #HGNC:1100 "BRCA1"

* component[reported-focality].code = $LNC#00000-1 // TODO We need LOINC codes
* component[reported-focality].valueQuantity = 100 UCUM#% "Reported focality"

* component[cnv-type].code = $bwhc-cnv-type#type
* component[cnv-type].valueCodeableConcept = $bwhc-cnv-type#high-level-gain "high-level-gain"

* component[copy-number-neutral-loh].code = $LNC#00000-1 // TODO We need LOINC codes
* component[copy-number-neutral-loh].valueCodeableConcept = $LNC#LA33-6
