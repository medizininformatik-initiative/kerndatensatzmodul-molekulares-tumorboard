Instance: PatientKimMusterperson-MolecularPathologyReport-1
InstanceOf: MII_PR_MTB_MOLECULAR_PATHOLOGY_REPORT
Usage: #example
* status = #final

* code = $LNC#11526-1 "Pathology study" // not correct, have to do research here
* subject = Reference(PatientKimMusterperson)
* result[+] = Reference(PatientKimMusterperson-MolecularPathologyObservation-0a-Her2neu)

/**
ggfs. Nachreport über einzelnen Bericht, aber vsl. nicht notwendig
Instance: PatientKimMusterperson-MolecularPathologyReport-2
**/

Instance: PatientKimMusterperson-AscitesSpecimen-2
InstanceOf: MII_PR_Onko_Specimen
Usage: #example
* subject = Reference(PatientKimMusterperson)
* type = $SCT#309201001 "Ascitic fluid specimen (specimen)"
* collection.collectedDateTime = "2023-02-01"
* accessionIdentifier.value = "Z230201/23"


Instance: PatientKimMusterperson-MolecularPathologyObservation-0a-Her2neu
InstanceOf: MII_PR_MTB_Immunohistochemistry
Usage: #example
* status = #fina
* subject = Reference(PatientKimMusterperson)
* specimen = Reference(PatientKimMusterperson-AscitesSpecimen-2)
* category[labCategory].coding = $fhir-observation-category#laboratory
* category[geCategory].coding = $hl7-v2-0074#GE

* code.coding = $LNC#18474-7 "HER2 Ag [Presence] in Tissue by Immune stain"
* valueCodeableConcept.coding[+] = $LNC#LA11842-4 "2+"
* component[+].code.coding.code = #gene-studied
* component[=].valueCodeableConcept[+].coding = $HGNC#HGNC:2064 "ERBB2"

Instance: PatientKimMusterperson-MolecularPathologyInterpret-0a-Her2neu
InstanceOf: MII_PR_MTB_Immunohistochemistry
Usage: #example
* status = #final
* subject = Reference(PatientKimMusterperson)
* specimen = Reference(PatientKimMusterperson-AscitesSpecimen-2)
* code.coding = $LNC#48676-1 "HER2 [Interpretation] in Tissue"
* valueCodeableConcept.coding = $LNC#LA6576-8 "Her2low"
* component[+].code.coding.code = #gene-studied
* component[=].valueCodeableConcept[+].coding = $HGNC#HGNC:2064 "ERBB2"


Instance: PatientKimMusterperson-MolecularPathologyObservation-0b-Folat-Ra
InstanceOf: MII_PR_MTB_Immunohistochemistry
Usage: #example
* status = #final
* subject = Reference(PatientKimMusterperson)
* specimen = Reference(PatientKimMusterperson-AscitesSpecimen-2)
* code.coding = $LNC#55229-9 "Immune stain study" // LOINC 105010-3 Folate receptor alpha [Interpretation] in Tissue by Immune stain Narrative -> does not fit, because data type is narraitve
* valueQuantity.code = #{/100}
* valueQuantity.value = 70
* valueQuantity.unit = "%"
* component[+].code.coding.code = #gene-studied
* component[=].valueCodeableConcept[+].coding = $HGNC#HGNC:3791 "FOLR1"
* component[=].valueCodeableConcept[=].coding = $LNC#LP440974-6 "Folate receptor alpha" //extra LOINC Part!


Instance: PatientKimMusterperson-MolecularPathologyObservation-0c-Trop2
InstanceOf: MII_PR_MTB_Immunohistochemistry
Usage: #example
* status = #final
* subject = Reference(PatientKimMusterperson)
* specimen = Reference(PatientKimMusterperson-AscitesSpecimen-2)
* code.coding = $LNC#55229-9 "Immune stain study" 
* valueCodeableConcept.coding = $LNC#LA6576-8 "Positive" 	
* component[+].code.coding.code = #gene-studied
* component[=].valueCodeableConcept[+].coding = $HGNC#HGNC:11530 "TACSTD2"
* component[=].valueCodeableConcept[=].coding = $UNIPROT#P09758  "Tumor-associated calcium signal transducer 2" 


Instance: PatientKimMusterperson-MolecularPathologyObservation-1-CA125
InstanceOf: MII_PR_MTB_Immunohistochemistry
Usage: #example

* status = #final
* subject = Reference(PatientKimMusterperson)
* specimen = Reference(PatientKimMusterperson-AscitesSpecimen-2)
* code.coding = $LNC#48677-9 "Cancer Ag 125 [Presence] in Tissue by Immune stain"
* valueCodeableConcept.text = "Die Tumorzellen sind partiell positiv für CA125,..."
* valueCodeableConcept.coding = $LNC#LA6576-8 "Positive"
* component[+].code.coding.code = #gene-studied
* component[=].valueCodeableConcept[+].coding = $HGNC#HGNC:11530 "TACSTD2"
* component[=].valueCodeableConcept[=].coding = $UNIPROT#P09758  "Tumor-associated calcium signal transducer 2" 



/*
Die Tumorzellen sind partiell positiv für CA125, durchgehend nukleär für Pax 8 und WT1, Östrogenrezeptorpositivität in ca. 70 % der Tumorzellen und das Progesteronrezeptorprotein wird in ca. 30 % der Tumorzellen exprimiert. Kräftige nukleäre Überexpression von p53. Zudem sind die Tumorzellen negativ für CDX2.
*/



Instance: PatientKimMusterperson-MolecularPathologyObservation-2-Pax8
InstanceOf: MII_PR_MTB_Immunohistochemistry
Usage: #example
* status = #final
* subject = Reference(PatientKimMusterperson)
* specimen = Reference(PatientKimMusterperson-AscitesSpecimen-2)
* code.coding = $LNC#73910-2 "PAX8 Ag [Presence] in Tissue by Immune stain"
* valueCodeableConcept.coding = $LNC#LA6576-8 "Positive" 	
* valueCodeableConcept.text = "Tumorzellen durchgehend nukleär für Pax 8"


Instance: PatientKimMusterperson-MolecularPathologyObservation-3-WT1
InstanceOf: MII_PR_MTB_Immunohistochemistry
Usage: #example
* status = #final
* subject = Reference(PatientKimMusterperson)
* specimen = Reference(PatientKimMusterperson-AscitesSpecimen-2)
* code.coding = $LNC#73910-2 "WT1 Ag [Presence] in Tissue by Immune stain" //cellular localisation?
* valueCodeableConcept.coding = $LNC#LA6576-8 "Positive" 	
* valueCodeableConcept.text = "Tumorzellen durchgehend nukleär für WT1" //durchgehend ist ein modifier? 
* component[+].code.coding.code = #protein-studied
* component[=].valueCodeableConcept.coding[+] = $HGNC#HGNC:WT1
* component[=].valueCodeableConcept.coding[+] = $LNC#LP65352-4 "WT-1 Ag" //extra LOINC Part!

* bodySite.coding = $SCT#84640000 "Nucleus (cell structure)" //alternativ über bodySite
* bodySite.text = "Nukleär"

Instance: PatientKimMusterperson-MolecularPathologyObservation-4-ER
InstanceOf: MII_PR_MTB_Immunohistochemistry
Usage: #example
* status = #final
* subject = Reference(PatientKimMusterperson)
* specimen = Reference(PatientKimMusterperson-AscitesSpecimen-2)
* code.coding = $LNC#14228-1 "Cells.estrogen receptor/cells in Tissue by Immune stain" 
* valueQuantity.code = #/100
* valueQuantity.value = 70
* valueQuantity.unit = "%"

Instance: PatientKimMusterperson-MolecularPathologyObservation-5-PR
InstanceOf: MII_PR_MTB_Immunohistochemistry
Usage: #example
* status = #final
* subject = Reference(PatientKimMusterperson)
* specimen = Reference(PatientKimMusterperson-AscitesSpecimen-2)
* code.coding = $LNC#14230-7 "Cells.progesteron receptor/cells in Tissue by Immune stain" 
* valueQuantity.code = #/100
* valueQuantity.value = 30
* valueQuantity.unit = "%"

Instance: PatientKimMusterperson-MolecularPathologyObservation-6-p53
InstanceOf: MII_PR_MTB_Immunohistochemistry
Usage: #example
* status = #final
* subject = Reference(PatientKimMusterperson)
* specimen = Reference(PatientKimMusterperson-AscitesSpecimen-2)
* code.coding = $LNC#14229-9 "P53 protein Ag [Presence] in Tissue by Immune stain" 
* valueCodeableConcept.coding = $LNC#LA6576-8 "Positive" 	
* valueCodeableConcept.text = "Kräftige nukleäre Überexpression von p53"

Instance: PatientKimMusterperson-MolecularPathologyObservation-7-p53
InstanceOf: MII_PR_MTB_Immunohistochemistry
Usage: #example
* status = #final
* subject = Reference(PatientKimMusterperson)
* specimen = Reference(PatientKimMusterperson-AscitesSpecimen-2)
* code.coding = $LNC#14229-9 "P53 protein Ag [Presence] in Tissue by Immune stain" 
* valueCodeableConcept.coding = $LNC#LA6576-8 "Positive" 	
* valueCodeableConcept.text = "Kräftige nukleäre Überexpression von p53"

