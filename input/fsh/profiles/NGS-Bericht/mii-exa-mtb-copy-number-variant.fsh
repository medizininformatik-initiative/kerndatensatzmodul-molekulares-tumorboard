Instance: MII-EXA-MTB-Copy-Number-Variant-1
InstanceOf: MII_PR_MTB_Copy_Number_Variant
Usage: #example
Title: "Beispiel fuer Copy Number Variant"
Description: "Beispiel fuer eine Copy Number Variant (CNV)."

* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-copy-number-variant)
* status = #final
* category[labCategory] = $fhir-observation-category#laboratory "Laboratory"
* code = $LNC#69548-6 "Genetic variant assessment"

* subject = Reference(Patient/mii-exa-mtb-patient)

* component[chromosome-identifier].code = $LNC#48000-4
* component[chromosome-identifier].valueCodeableConcept = $LNC#LA21270-6 "Chromosome 17"

* component[exact-start-end].code = $LNC#81254-5
* component[exact-start-end].valueRange.low.value = 43044295
* component[exact-start-end].valueRange.high.value = 43125364

* component[copy-number].code = $LNC#82155-3
* component[copy-number].valueQuantity.value = 3
* component[copy-number].valueQuantity.code = #1
* component[copy-number].valueQuantity.system = $UCUM


* component[relative-copy-number].valueQuantity.value = 1.5 
* component[relative-copy-number].valueQuantity.code = #1
* component[relative-copy-number].valueQuantity.system = $UCUM


* component[cna].valueQuantity.value = 1  
* component[cna].valueQuantity.code = #1 
* component[cna].valueQuantity.system = $UCUM


* component[cnb].valueQuantity.value = 2 
* component[cnb].valueQuantity.code = #1
* component[cnb].valueQuantity.system = $UCUM

* component[gene-studied].code = $LNC#48018-6
* component[gene-studied].valueCodeableConcept = #HGNC:1100 "BRCA1"

* component[reported-focality].valueQuantity.value = 100 
* component[reported-focality].valueQuantity.code = #%
* component[reported-focality].valueQuantity.system = $UCUM


* component[cnv-type].code = $bwhc-cnv-type#type
* component[cnv-type].valueCodeableConcept = $bwhc-cnv-type#high-level-gain "high-level-gain"

* component[copy-number-neutral-loh].valueCodeableConcept = $LNC#LA33-6
