Instance: PatientKimMusterperson-MolecularPathologyReport-1
InstanceOf: MII_PR_MTB_MOLECULAR_PATHOLOGY_REPORT
Usage: #example
* status = #final
* code = $LNC#11526-1 "Pathology study" // not correct, have to do research here
* subject = Reference(PatientKimMusterperson)


/*
ggfs. Nachreport über einzelnen Bericht, aber vsl. nicht notwendig
Instance: PatientKimMusterperson-MolecularPathologyReport-2


*/

Instance: PatientKimMusterperson-AscitesSpecimen-2
InstanceOf: MII_PR_Onko_Specimen
Usage: #example
* subject = Reference(PatientKimMusterperson)
* type = $LNC#12235-5 "Ascites specimen" // falsch
* collection.collectedDateTime = "2023-02-01"
* accessionIdentifier.value = "Z230201/23"


Instance: PatientKimMusterperson-MolecularPathologyObservation-1-CA125
InstanceOf: MII_PR_MTB_IMMUNOHISTOCHEMISTRY
Usage: #example

* status = #final
* specimen = Reference(PatientKimMusterperson-AscitesSpecimen-2)
* code.coding = $LNC#48677-9 "Cancer Ag 125 [Presence] in Tissue by Immune stain"
* valueCodeableConcept.text = "Die Tumorzellen sind partiell positiv für CA125,..."
* valueCodeableConcept.coding = $LNC#LA6576-8 "Positive" 	


/*
Die Tumorzellen sind partiell positiv für CA125, durchgehend nukleär für Pax 8 und WT1, Östrogenrezeptorpositivität in ca. 70 % der Tumorzellen und das Progesteronrezeptorprotein wird in ca. 30 % der Tumorzellen exprimiert. Kräftige nukleäre Überexpression von p53. Zudem sind die Tumorzellen negativ für CDX2.
*/

Instance: PatientKimMusterperson-MolecularPathologyObservation-2-Pax8
InstanceOf: MII_PR_MTB_IMMUNOHISTOCHEMISTRY
Usage: #example
* status = #final
* specimen = Reference(PatientKimMusterperson-AscitesSpecimen-2)
* code.coding = $LNC#73910-2 "PAX8 Ag [Presence] in Tissue by Immune stain"
* valueCodeableConcept.coding = $LNC#LA6576-8 "Positive" 	
* valueCodeableConcept.text = "Tumorzellen durchgehend nukleär für Pax 8"


Instance: PatientKimMusterperson-MolecularPathologyObservation-3-WT1
InstanceOf: MII_PR_MTB_IMMUNOHISTOCHEMISTRY
Usage: #example
* status = #final
* specimen = Reference(PatientKimMusterperson-AscitesSpecimen-2)
* code.coding = $LNC#73910-2 "WT1 Ag [Presence] in Tissue by Immune stain" //cellular localisation?
* valueCodeableConcept.coding = $LNC#LA6576-8 "Positive" 	
* valueCodeableConcept.text = "Tumorzellen durchgehend nukleär für WT1" //durchgehend ist ein modifier? 
* component[+].code.coding.code = #protein-studied
* component[=].valueCodeableConcept[+].coding = $HGNC#HGNC:WT1
* component[=].valueCodeableConcept[=].coding = $LNC#LP65352-4 "WT-1 Ag" //extra LOINC Part!

* component[+].code.coding.code = #staining-localization  
* component[=].valueCodeableConcept.coding = $SCT#84640000 "Nucleus (cell structure)" //alternativ über bodySite
* component[=].valueCodeableConcept.text = "Nukleär"

Instance: PatientKimMusterperson-MolecularPathologyObservation-4-ER
InstanceOf: MII_PR_MTB_IMMUNOHISTOCHEMISTRY
Usage: #example
* status = #final
* specimen = Reference(PatientKimMusterperson-AscitesSpecimen-2)

* code.coding = $LNC#14228-1 "Cells.estrogen receptor/cells in Tissue by Immune stain" 
* valueQuantity.code = #/100
* valueQuantity.value = 70
* valueQuantity.unit = "%"

Instance: PatientKimMusterperson-MolecularPathologyObservation-5-PR
InstanceOf: MII_PR_MTB_IMMUNOHISTOCHEMISTRY
Usage: #example
* status = #final
* specimen = Reference(PatientKimMusterperson-AscitesSpecimen-2)

* code.coding = $LNC#14230-7 "Cells.progesteron receptor/cells in Tissue by Immune stain" 
* valueQuantity.code = #/100
* valueQuantity.value = 30
* valueQuantity.unit = "%"

Instance: PatientKimMusterperson-MolecularPathologyObservation-6-p53
InstanceOf: MII_PR_MTB_IMMUNOHISTOCHEMISTRY
Usage: #example
* status = #final
* specimen = Reference(PatientKimMusterperson-AscitesSpecimen-2)

* code.coding = $LNC#14229-9 "P53 protein Ag [Presence] in Tissue by Immune stain" 
* valueCodeableConcept.coding = $LNC#LA6576-8 "Positive" 	
* valueCodeableConcept.text = "Kräftige nukleäre Überexpression von p53"

Instance: PatientKimMusterperson-MolecularPathologyObservation-7-p53
InstanceOf: MII_PR_MTB_IMMUNOHISTOCHEMISTRY
Usage: #example
* status = #final
* specimen = Reference(PatientKimMusterperson-AscitesSpecimen-2)

* code.coding = $LNC#14229-9 "P53 protein Ag [Presence] in Tissue by Immune stain" 
* valueCodeableConcept.coding = $LNC#LA6576-8 "Positive" 	
* valueCodeableConcept.text = "Kräftige nukleäre Überexpression von p53"

