Instance: MII-EXA-MTB-DNA-Fusion-1
InstanceOf: MII_PR_MTB_DNA_Fusion
Usage: #example
Title: "Beispiel DNA-Fusion"
Description: "Beispiel fuer eine DNA-Fusion in Tumorzellen."

* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/dna-fusion"
* status = #final

* subject = Reference(Patient/example)

* component[five-prime-chromosome].valueCodeableConcept = $SCT#372445009 "Chromosome 2"
* component[three-prime-chromosome].valueCodeableConcept = $SCT#372445009 "Chromosome 5"

* component[five-prime-position].valueRange.low.value = 12345678
* component[five-prime-position].valueRange.high.value = 12345680
* component[three-prime-position].valueRange.low.value = 87654321
* component[three-prime-position].valueRange.high.value = 87654323

* component[five-prime-gene].valueCodeableConcept = $SCT#259040001 "ALK gene"
* component[three-prime-gene].valueCodeableConcept = $SCT#15220000 "EML4 gene"

* component[allelic-read-depth].valueQuantity = 150 $UCUM#1 "Number of reported reads"
