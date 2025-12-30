Instance: MII-EXA-MTB-Diagnostische-Implikation-1
InstanceOf: MII_PR_MTB_Diagnostische_Implikation
Usage: #example
Title: "Beispiel fuer BRAF Mutation MTB Diagnostische Implikation"
Description: "Beispiel fuer diagnostische Implikation im Kontext des Molecular Tumor Boards basierend auf einer BRAF-Mutation."

* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-diagnostische-implikation)
* status = #final
* category[labCategory] = $fhir-observation-category#laboratory "Laboratory"
* code = $TBD#diagnostic-implication "Diagnostic Implication"
* subject = Reference(Patient/example)
* performer = Reference(Practitioner/example)
* derivedFrom[variant] = Reference(Observation/EinfacheVarianteExample)

* component[clinical-significance].code = $LNC#53037-8 "Genetic variation clinical significance [Imp]"
* component[clinical-significance].valueCodeableConcept = $LNC#LA6668-3 "Pathogenic"
