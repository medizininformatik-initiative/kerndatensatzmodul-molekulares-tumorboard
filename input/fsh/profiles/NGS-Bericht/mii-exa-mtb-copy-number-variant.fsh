Instance: MII-EXA-MTB-Copy-Number-Variant-1
InstanceOf: MII_PR_MTB_Copy_Number_Variant
Usage: #example
Title: "Beispiel fuer Copy Number Variant"
Description: "Beispiel fuer eine Copy Number Variant (CNV)."

* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/copy-number-variant"
* status = #final

* component[chromosome-identifier].valueString = "chr17"
* component[exact-start-end].valueRange = { "low": 43044295, "high": 43125364 }
* component[copy-number].valueQuantity = 3 UCUM#1 "Copy Number"
* component[relative-copy-number].valueQuantity = 1.5 UCUM#1 "Relative Copy Number"
* component[cna].valueQuantity = 1 UCUM#1 "Copy Number Allel A"
* component[cnb].valueQuantity = 2 UCUM#1 "Copy Number Allel B"
* component[gene-studied].valueCodeableConcept = HGNC#HGNC:1100 "BRCA1"
* component[reported-focality].valueQuantity = 100 UCUM#% "Reported focality"
* component[cnv-type].valueCodeableConcept = $bwhc-cnv-type#high-level-gain "high-level-gain"
// component[copy-number-neutral-loh].valueCodeableConcept = ?
