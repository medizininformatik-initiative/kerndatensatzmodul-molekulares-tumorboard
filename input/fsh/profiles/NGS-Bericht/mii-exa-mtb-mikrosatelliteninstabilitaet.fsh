Instance: MII-EXA-MTB-Mikrosatelliteninstabilitaet-1
InstanceOf: MII_PR_MTB_Mikrosatelliteninstabilitaet
Usage: #example
Title: "Beispiel Mikrosatelliteninstabilität"
Description: "Beispiel fuer Mikrosatelliteninstabilität in Tumorzellen aufgrund von MMR-Störung."

* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-mikrosatelliteninstabilitaet)
* status = #final
* category[labCategory] = $fhir-observation-category#laboratory "Laboratory"
* code = $LNC#81695-9 "Microsatellite instability [Interpretation] in Cancer specimen Qualitative"
* subject = Reference(Patient/mii-exa-mtb-patient)
* valueQuantity = 2.61 $UCUM#% 
* method = $mii-cs-mtb-msi-method-type#bioinformatic "Sequenzierung"
* specimen = Reference(Specimen/mii-exa-mtb-specimen)
* interpretation = $LNC#LA14122-8 "Stable"
