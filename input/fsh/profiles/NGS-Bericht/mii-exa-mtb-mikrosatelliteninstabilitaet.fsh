Instance: MII-EXA-MTB-Mikrosatelliteninstabilitaet-1
InstanceOf: MII_PR_MTB_Mikrosatelliteninstabilitaet
Usage: #example
Title: "Beispiel Mikrosatelliteninstabilität"
Description: "Beispiel fuer Mikrosatelliteninstabilität in Tumorzellen aufgrund von MMR-Störung."

* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/mikrosatelliteninstabilitaet"
* status = #final
* category[labCategory] = $fhir-observation-category#laboratory "Laboratory"
* code = $LNC#81695-9 "Microsatellite instability [Interpretation] in Cancer specimen Qualitative"
* subject = Reference(Patient/example)

* interpretation = $hl7-v3-observation-high-low-codes#high "MSI-H"

* valueCodeableConcept = $LNC#LA26203-2 "MSI-H"
