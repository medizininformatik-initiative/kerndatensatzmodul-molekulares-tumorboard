Instance: MII-EXA-MTB-Genomic-Study-Analysis-1
InstanceOf: MII_PR_MTB_Genomic_Study_Analysis
Usage: #example
Title: "Beispiel Genomic Study Analysis"
Description: "Beispiel fuer eine genomische Analyse, die Bestandteil einer genomischen Studie ist."

* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/genomic-study-analysis"
* status = #completed

* subject = Reference(Patient/example)

* extension[method-type].valueCodeableConcept = $mii-cs-mtb-genomic-analysis-method-type#whole-genome-sequencing "Whole Genome Sequencing (WGS)"
* extension[genome-build].valueCodeableConcept = $LNC#LA26806-2 "GRCh38"
* extension[focus].valueReference = Reference(Patient/example)
* extension[specimen].valueReference = Reference(Specimen/example)
* extension[device].extension[device].valueReference = Reference(Device/example)
