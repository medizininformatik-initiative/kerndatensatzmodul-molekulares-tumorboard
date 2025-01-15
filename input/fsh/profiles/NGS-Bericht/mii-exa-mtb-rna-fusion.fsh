Instance: MII-EXA-MTB-RNA-Fusion-1
InstanceOf: MII_PR_MTB_RNA_Fusion
Usage: #example
Title: "Beispiel für RNA Fusion"
Description: "Ein Beispiel fuer eine RNA-Fusion, die durch molekulare Tests identifiziert wurde."

* status = #final

* component[effect].code.coding.system = "http://example.org/fhir/CodeSystem/rna-fusion-effects"
* component[effect].code.coding.code = "fusion-activating"
* component[effect].code.text = "Fusion Aktivierung"
* component[effect].valueQuantity.value = 1.5
* component[effect].valueQuantity.unit = "Score"
* component[effect].short = "RNA Fusion Effect"

* component[cosmic-id].code.coding.system = "http://cancer.sanger.ac.uk/cosmic"
* component[cosmic-id].code.coding.code = "COSF12345"
* component[cosmic-id].valueCodeableConcept.text = "COSMIC Fusion ID COSF12345" //TODO
* component[cosmic-id].short = "RNA Fusion Cosmic-ID"

* component[allelic-read-depth].valueQuantity = 50 UCUM#1 "Abdeckung der Fragmente"

* component[gene-studied].valueCodeableConcept = HGNC#HGNC:1100 "BRCA1"

// weitere Attribute...
