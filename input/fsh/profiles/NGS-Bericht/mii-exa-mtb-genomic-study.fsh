Instance: MII-EXA-MTB-GenomicStudy-1
InstanceOf: MII_PR_MTB_Genomic_Study
Usage: #example
Title: "Beispiel fuer einen GenomicStudy"

* extension[genomic-study-analysis][+].valueReference = Reference(MII-EXA-MTB-GenomicStudyAnalysis-1)
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
* extension[device][+].extension[device].valueReference = Reference(MII-EXA-MTB-Device-Sequencer-1)
* extension[device][=].extension[function].valueCodeableConcept = MII_CS_MTB_GenomicStudyAnalysis_DeviceFunction#sequencing-device
* extension[device][+].extension[device].valueReference = Reference(MII-EXA-MTB-Device-SequencingKit-1)
* extension[device][=].extension[function].valueCodeableConcept = MII_CS_MTB_GenomicStudyAnalysis_DeviceFunction#sequencing-kit
* extension[device][+].extension[device].valueReference = Reference(MII-EXA-MTB-Device-LibraryPreparation-Kit-1)
* extension[device][=].extension[function].valueCodeableConcept = MII_CS_MTB_GenomicStudyAnalysis_DeviceFunction#library-preparation-kit
* extension[genome-build].valueCodeableConcept =  $LNC#LA26806-2 "GRCh38"

Instance: MII-EXA-MTB-Device-Sequencer-1
InstanceOf: Device
Usage: #example
Title: "Beispiel fuer einen Sequencer"

* manufacturer = "Sequenziergerät-Hersteller"
* deviceName.name = "Sequenziergerät-Name in Umgangssprache"
* deviceName.type = #user-friendly-name

Instance: MII-EXA-MTB-Device-SequencingKit-1
InstanceOf: Device
Usage: #example
Title: "Device"

Instance: MII-EXA-MTB-Device-LibraryPreparation-Kit-1
InstanceOf: Device
Usage: #example
Title: "ExampleDefinition"
