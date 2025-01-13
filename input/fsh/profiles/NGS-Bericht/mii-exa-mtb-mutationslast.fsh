Instance: MII-EXA-MTB-Mutationslast-1
InstanceOf: MII_PR_MTB_Mutationslast
Usage: #example
Title: "Beispiel Mutationslast in Tumorprobe (MTB)"
Description: "Beispiel fuer die Mutationslast in einer Tumorprobe mit Bezug zu molekularem Tumorboard."
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/mutationslast"
* status = #final
* category[labCategory] = ObsCat#laboratory "Laboratory"
* code = LNC#94076-7 "Mutations/Megabase [# Ratio] in Tumor"
* subject = Reference(Patient/example)
* performer = Reference(Practitioner/example)
* valueQuantity = 12 UCUM#1/1000000{Base} "Mutations/Megabase"
* specimen = Reference(Specimen/example)
// interpretation
