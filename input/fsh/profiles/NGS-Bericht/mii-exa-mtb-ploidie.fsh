Instance: MII-EXA-MTB-Ploidie-1
InstanceOf: MII_PR_MTB_Ploidie
Usage: #example
Title: "Ploidie Beispiel"
Description: "Beispiel für die Gesamtploidie des Tumors."

* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-ploidie)
* focus = Reference(MII_PR_MTB_Diagnose_Primaertumor/example)
* status = #registered
* valueQuantity.value = 2.4
* interpretation = $hl7-v3-observation-interpretation#H "High"
