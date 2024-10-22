Profile: MII_PR_MTB_Molekularer_Biomarker
Parent: Observation
Id: mii-pr-mtb-molekularer-biomarker
Title: "MII PR MTB Molekularer Biomarker"
Description: "Stellt einen gefundenden Biomarker dar. Das Profil ist auf Basis von https://build.fhir.org/ig/HL7/genomics-reporting/StructureDefinition-molecular-biomarker.html nachgebaut."
* insert PR_Header

* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "coding"
* category ^slicing.rules = #open
* category ^slicing.description = "Slices for category"
* category ^slicing.ordered = false

* category contains labCategory 1..1 MS
* category[labCategory].coding.code 1..1
* category[labCategory].coding.system 1..1
* category[labCategory].coding.code = #laboratory
* category[labCategory].coding.system = $fhir-observation-category

// TODO Fhir comment about missing category and component
// mbCategory left out, since the code 'biomarker-category' does not yet exist in STU2.

* category contains geCategory 1..1
* category[geCategory].coding.code 1..1
* category[geCategory].coding.system 1..1
* category[geCategory].coding.code = #GE
* category[geCategory].coding.system = $hl7-v2-0074

* code 1..1
* code from $mii-vs-mtb-molekulare-biomarker (extensible)

* derivedFrom ^slicing.discriminator.type = #profile
* derivedFrom ^slicing.discriminator.path = "resolve()"
* derivedFrom ^slicing.rules = #open
* derivedFrom ^slicing.description = "Slices for derivedFrom"
* derivedFrom ^slicing.ordered = false

* derivedFrom contains variant 0..*
        and genotype 0..*
        and haplotype 0..*
// For some reason, the Publisher resolves these to STU3, despite their existence in STU2. Why?
* derivedFrom[variant] only Reference(Variant)
* derivedFrom[genotype] only Reference(Genotype)
* derivedFrom[haplotype] only Reference(Haplotype)

* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slices for component"
* component ^slicing.ordered = false

* component contains gene-studied 0..*

* component[gene-studied].code.coding.system = $LNC
* component[gene-studied].code.coding.code = #48018-6
* component[gene-studied].valueCodeableConcept ^short = "The HGNC gene symbol is to be used as display text and the HGNC gene ID used as the code. If no HGNC code issued for this gene yet, NCBI gene IDs SHALL be used."
* component[gene-studied].valueCodeableConcept from http://hl7.org/fhir/uv/genomics-reporting/ValueSet/hgnc-vs (extensible)
