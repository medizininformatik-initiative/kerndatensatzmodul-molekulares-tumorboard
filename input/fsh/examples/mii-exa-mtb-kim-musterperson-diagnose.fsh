Instance: mii-exa-mtb-kim-diagnose
InstanceOf: MII_PR_MTB_Diagnose_Primaertumor
Usage: #example
Title: "Bestätigte Primärdiagnose"
Description: "Bestätigte Primärdiagnose C48.2 für Kim Musterperson"
* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-diagnose-primaertumor)
* extension[Feststellungsdatum].valueDateTime = 2021-06-10
* recordedDate = 2021-06-10
* subject = Reference(Patient/PatientKimMusterperson)
* clinicalStatus.coding = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus.coding[condition-ver-status][+] = $condition-ver-status#unconfirmed
* verificationStatus.coding[primaertumorDiagnosesicherung][+] = $mii-cs-onko-primaertumor-diagnosesicherung#2
* code.coding[+]  = $ICD10GM#C48.2 "Bösartige Neubildung: Peritoneum, nicht näher bezeichnet"
* code.coding[=].version = "2023"
* bodySite = $ICDO3#C56.9 "Ovar"
* stage[ErstdiagnoseZeitpunkt].assessment[+] = Reference(Observation/mii-exa-mtb-kim-tumorausbreitung)
* stage[OncoTree].assessment[+] = Reference(Observation/mii-exa-mtb-kim-oncotree)

Instance: mii-exa-mtb-kim-tumorausbreitung
InstanceOf: MII_PR_MTB_Tumorausbreitung
Usage: #example
Title: "Lokale Tumorausbreitung"
Description: "Lokale Tumorausbreitung bei Kim Musterperson"
* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-tumorausbreitung)
* status = #final
* category = $SCT#473302008 "Aware of diagnosis"
* subject = Reference(Patient/PatientKimMusterperson)
* effectiveDateTime = 2021-06-10 
* valueCodeableConcept = $SCT#255127006

Instance: mii-exa-mtb-kim-oncotree
InstanceOf: MII_PR_MTB_Oncotree
Usage: #example
Title: "High-Grade Neuroendocrine Carcinoma of the Ovary"
Description: "High-Grade Neuroendocrine Carcinoma of the Ovary (HGONEC) bei Kim Musterperson"
* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-oncotree)
* status = #final
* subject = Reference(Patient/PatientKimMusterperson)
* effectiveDateTime = 2021-06-10 
* valueCodeableConcept = $OT#HGONEC