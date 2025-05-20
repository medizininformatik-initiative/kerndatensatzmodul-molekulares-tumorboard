Instance: MII-EXA-MTB-HRD-Score-1
InstanceOf: MII_PR_MTB_HRD_Score
Usage: #example
Title: "Beispiel HRD-Score"
Description: "Beispiel fuer einen HRD-Score, der den Grad der homologen Rekombinationsdefizienz beschreibt."

* status = #final
* category[labCategory] = $fhir-observation-category#laboratory "Laboratory"
* category[geCategory] = $hl7-v2-0074#GE
* code = $LNC#107286-7 "HRD Score"

* subject = Reference(Patient/example)
* encounter = Reference(Encounter/example)
* specimen = Reference(Specimen/example)
* performer = Reference(Practitioner/example)

* valueInteger = 43

* interpretation = $hl7-v3-observation-high-low-codes#high "high HRD"

* component[LOH].valueInteger = 14
* component[TAI].valueInteger = 12
* component[LST].valueInteger = 17