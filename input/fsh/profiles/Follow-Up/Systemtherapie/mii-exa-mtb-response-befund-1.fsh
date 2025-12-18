Instance: MII-EXA-MTB-Response-Befund-Beispiel-1
InstanceOf: MII_PR_MTB_Response_Befund
Usage: #example
Title: "Beispiel fuer einen Response Befund"

* status = #registered
* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #396432002
* subject = Reference(Patient/Example)
* focus = Reference(Condition/Example)
* effectiveDateTime = "2014-02-12"
* method = $mii-cs-mtb-response-befund-beurteilungsmethode#RECIST "RECIST"
* valueCodeableConcept.coding = $mii-cs-mtb-response-befund-beurteilung#PD "Progressive Disease"
* partOf = Reference(Procedure/Example)
* component[Tumor_Verlauf].valueCodeableConcept.coding = $mii-cs-onko-verlauf-primaertumor#K "Kein Tumor nachweisbar"
* component[Tumor_Verlauf].code.coding.version = "2026"