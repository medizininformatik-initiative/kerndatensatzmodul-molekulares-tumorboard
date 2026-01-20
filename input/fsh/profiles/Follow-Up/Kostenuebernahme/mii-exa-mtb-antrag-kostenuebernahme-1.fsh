Instance: MII-EXA-MTB-Antrag-Kostenuebernahme-Beispiel-1
InstanceOf: MII_PR_MTB_Antrag_Kostenuebernahme
Usage: #example
Title: "Beispiel fuer einen Antrag auf Kostenuebernahme"

* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-antrag-kostenuebernahme)
* type = #institutional
* use = #claim
* patient = Reference(Patient/example)
* created = "2024-07-07"
* provider = Reference(Organization/InstitutionID)
* prescription = Reference(MedicationRequest/TherapieempfehlungExample)
* insurance.sequence = 1
* insurance.coverage = Reference(Coverage/CoverageExample)
* careTeam[ZPMBeteiligung].provider = Reference(Organization/ZPMExample)
* careTeam[ZPMBeteiligung].responsible = true
* related.relationship.coding.code = #initial-claim