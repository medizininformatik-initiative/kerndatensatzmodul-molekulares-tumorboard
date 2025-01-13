Instance: MII-EXA-MTB-HRD-Score-1
InstanceOf: MII_PR_MTB_HRD_Score
Usage: #example
Title: "Beispiel HRD-Score"
Description: "Beispiel fuer einen HRD-Score, der den Grad der homologen Rekombinationsdefizienz beschreibt."

* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/molekularer-biomarker"
* status = #final
* category[labCategory] = ObsCat#laboratory "Laboratory"
* code = $mii-cs-mtb-molekulare-biomarker#hrd "HRD Score"

* subject = Reference(Patient/example)
* encounter = Reference(Encounter/example)
* specimen = Reference(Specimen/example)
* performer = Reference(Practitioner/example)

* valueQuantity = 42 "HRD-Score"
// interpretation
// component
