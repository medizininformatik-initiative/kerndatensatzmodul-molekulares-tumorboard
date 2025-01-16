Instance: MII-EXA-MTB-RNA-Fusion-1
InstanceOf: MII_PR_MTB_RNA_Fusion
Usage: #example
Title: "Beispiel für RNA Fusion"
Description: "Ein Beispiel fuer eine RNA-Fusion, die durch molekulare Tests identifiziert wurde."

* status = #final
* subject = Reference(Patient/example)

* component[effect].code.coding.system = "http://example.org/fhir/CodeSystem/rna-fusion-effects"
* component[effect].code.coding.code = $LNC#0000-1 //TODO
* component[effect].code.text = "Fusion Aktivierung"
* component[effect].valueQuantity.value = 1.5
* component[effect].valueQuantity.unit = "Score"

* component[cosmic-id].code.coding.system = "http://cancer.sanger.ac.uk/cosmic"
* component[cosmic-id].code.coding.code = $LNC#0000-1 //TODO
* component[cosmic-id].valueCodeableConcept.text = "COSMIC Fusion ID COSF12345" //TODO: realisitsches Beispielö finden

* component[allelic-read-depth].code = $LNC#82121-5
* component[allelic-read-depth].valueQuantity = 50 $UCUM#1 "Abdeckung der Fragmente"

* component[five-prime-gene].code = $LNC#0000-1 //TODO
* component[five-prime-gene].valueCodeableConcept.text = "ALK"

* component[five-prime-transcript-id].code = $LNC#0000-1 //TODO
* component[five-prime-transcript-id].valueCodeableConcept.text = "ENST00000389048"

* component[five-prime-exon-id].code = $LNC#0000-1 //TODO
* component[five-prime-exon-id].valueCodeableConcept.text = "Exon 20"

* component[five-prime-position].code = $LNC#0000-1 //TODO
* component[five-prime-position].valueRange.low.value = 41234567
* component[five-prime-position].valueRange.high.value = 41234589

* component[five-prime-strand].code = $LNC#0000-1 //TODO
* component[five-prime-strand].valueRange.low.value = 1 // Strand als Range?
* component[five-prime-strand].valueRange.high.value = 2

* component[three-prime-gene].code = $LNC#0000-1 //TODO
* component[three-prime-gene].valueCodeableConcept.text = "EML4"

* component[three-prime-transcript-id].code = $LNC#0000-1 //TODO
* component[three-prime-transcript-id].valueCodeableConcept.text = "ENST00000461467"

* component[three-prime-exon-id].code = $LNC#0000-1 //TODO
* component[three-prime-exon-id].valueCodeableConcept.text = "Exon 6"

* component[three-prime-position].code = $LNC#0000-1 //TODO
* component[three-prime-position].valueRange.low.value = 12345678
* component[three-prime-position].valueRange.high.value = 12345698

* component[three-prime-strand].code = $LNC#0000-1 //TODO
* component[three-prime-strand].valueRange.low.value = 1 // Strand als Range?
* component[three-prime-strand].valueRange.high.value = 2
