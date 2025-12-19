Instance: MII-EXA-MTB-Mutationslast-1
InstanceOf: MII_PR_MTB_Mutationslast
Usage: #example
Title: "Beispiel Mutationslast in Tumorprobe (MTB)"
Description: "Beispiel fuer die Mutationslast in einer Tumorprobe mit Bezug zu molekularem Tumorboard."

* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-mutationslast)
* status = #final
* category[labCategory] = $fhir-observation-category#laboratory "Laboratory"
* code = $LNC#94076-7 "Mutations/Megabase [# Ratio] in Tumor"
* subject = Reference(Patient/example)
* encounter = Reference(Encounter/example)
* valueQuantity = 21 $UCUM#1/1000000{Base} "Mutations/Megabase"
* specimen = Reference(Specimen/example)
* interpretation = $hl7-v3-observation-interpretation#H "High"
