Instance: MII-EXA-MTB-GenomicStudy-1
InstanceOf: MII_PR_MTB_Genomic_Study
Usage: #example
Title: "Beispiel fuer einen GenomicStudy"

* extension[genomic-study-analysis][+].valueReference = Reference(MII_EXA_MTB-GenomicStudyAnalysis-1)
* status = #completed
* subject = Reference(Patient/example)
* reasonReference = Reference(Condition/Primary_Tumor)

Instance: MII-EXA-MTB-GenomicStudyAnalysis-1
InstanceOf: MII_PR_MTB_Genomic_Study_Analysis
Usage: #example
Title: "Beispiel fuer einen GenomicStudyAnalysis"

* status = #completed
* subject = Reference(Patient/example)
* extension[method-type][+].valueCodeableConcept = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/genomic-study-method-type-cs#ngs-mps "Next-Generation (NGS)/Massively parallel sequencing (MPS)"
* extension[focus].valueReference = Reference(Patient/example)
* extension[device].extension[device].valueReference = Reference(Device/Sequencer-1)
* extension[genome-build].valueCodeableConcept =  $LNC#LA26806-2 "GRCh38"

Instance: MII-EXA-MTB-Device-Sequencer-1
InstanceOf: DeviceDefinition
Usage: #example
Title: "Beispiel fuer einen Sequencer"

* manufacturerString = "Sequenziergerät-Hersteller"
* deviceName.name = "Sequenziergerät-Name in Umgangssprache"
* deviceName.type = #user-friendly-name

Instance: MII-EXA-MTB-Device-SequencingKit-1
InstanceOf: DeviceDefinition
Usage: #example
Title: "Cool"

Instance: MII-EXA-MTB-Device-LibraryPreparation-Kit-1
InstanceOf: DeviceDefinition
Usage: #example
Title: "ExampleDefinition"
