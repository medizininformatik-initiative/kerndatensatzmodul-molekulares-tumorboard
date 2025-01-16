Instance: MII-EXA-MTB-DNA-Fusion-1
InstanceOf: MII_PR_MTB_DNA_Fusion
Usage: #example
Title: "Beispiel DNA-Fusion"
Description: "Beispiel fuer eine DNA-Fusion in Tumorzellen."

* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/dna-fusion"
* status = #final
* category[labCategory] = $fhir-observation-category#laboratory "Laboratory"
* code = $LNC#69548-6 "Genetic variant assessment"

* subject = Reference(Patient/example)

* component[five-prime-chromosome].valueCodeableConcept = $LNC#LA21255-7 "Chromosome 2"
* component[five-prime-chromosome].code = $LNC#00000-1 // TODO
* component[three-prime-chromosome].valueCodeableConcept = $LNC#LA21258-1 "Chromosome 5"
* component[three-prime-chromosome].code = $LNC#00000-1 // TODO

* component[five-prime-position].valueRange.low.value = 12345678
* component[five-prime-position].valueRange.high.value = 12345680
* component[five-prime-position].code = $LNC#00000-1 // TODO

* component[three-prime-position].valueRange.low.value = 87654321
* component[three-prime-position].valueRange.high.value = 87654323
* component[three-prime-position].code = $LNC#00000-1 // TODO

* component[five-prime-gene].valueCodeableConcept = #HGNC:1100 "BRCA1"
* component[five-prime-gene].code = $LNC#00000-1 // TODO
* component[three-prime-gene].valueCodeableConcept = #HGNC:9967 "RET"
* component[three-prime-gene].code = $LNC#00000-1 // TODO

* component[allelic-read-depth].valueQuantity = 150 $UCUM#1 "Number of reported reads"
* component[allelic-read-depth].code = $LNC#82121-5
