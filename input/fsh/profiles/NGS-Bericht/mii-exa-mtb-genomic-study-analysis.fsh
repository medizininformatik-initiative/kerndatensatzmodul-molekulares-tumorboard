Instance: MII-EXA-MTB-Genomic-Study-Analysis-1
InstanceOf: MII_PR_MTB_Genomic_Study_Analysis
Usage: #example
Title: "Beispiel Genomic Study Analysis"
Description: "Beispiel fuer eine genomische Analyse, die Bestandteil einer genomischen Studie ist."

* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/genomic-study-analysis"
* status = #final

* extension[method-type].valueCodeableConcept = $mii-vs-mtb-genomic-analysis-method-type#sequencing "Sequencing"
* extension[genome-build].valueString = "GRCh38"
* extension[focus].valueReference = Reference(mii-exa-molgen-gene-focus)
* extension[specimen].valueReference = Reference(Specimen/example)
* extension[device].valueReference = Reference(Device/example)
