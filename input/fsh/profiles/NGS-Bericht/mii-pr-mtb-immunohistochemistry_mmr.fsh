Profile: MII_PR_MTB_Immunohistochemistry_MMR
Parent: MII_PR_MTB_Molekularer_Biomarker // Evtl von Observation von MolecularBiomarker erben
Id: mii-pr-mtb-immunohistochemistry-mmr
Title: "MII PR MTB Immunohistochemistry Mismatch Repair Status"
Description: "Immunhistorchemistry report"
* insert PR_Header

* identifier MS
* specimen MS
* specimen ^definition = "Probe"
* specimen ^short = "Probe"
// Eingangs/Journal-Nr -> DiagnosticReport(Identifier) kein Teil von Observationm
// Block-/Material Nr -> Wie mache ich das am Besten?

// wie erstelle ich ein eigenes CodeableConcept
* value[x] MS
* valueCodeableConcept MS
* valueCodeableConcept from $mii-vs-mtb-mmr-proficiency 

//* valueCodeableConcept from 

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Immunohistochemische Ergebnisse"
* component ^slicing.ordered = false
// Evtl. Binding auf High-Low-ValueSet aus MolgenBefundbericht als preferred oder als CodeableConcept

* component contains 
    mmr-mlh1 0..1 MS and
    mmr-msh2 0..1 MS and
    mmr-msh6 0..1 MS and
    mmr-pms2 0..1 MS and
    mmr-msh3 0..1 MS and
    mmr-mlh3 0..1 MS 

* component[mmr-mlh1].code.coding = $LNC#81691-8 "DNA mismatch repair protein Mlh1 [Presence] in Cancer specimen by Immune stain"
* component[mmr-mlh1].valueCodeableConcept.coding from $mii-vs-mtb-mmr-expression
* component[mmr-msh2].code.coding = $LNC#81692-6  "DNA mismatch repair protein Msh2 [Presence] in Cancer specimen by Immune stain"
* component[mmr-msh2].valueCodeableConcept.coding from $mii-vs-mtb-mmr-expression
* component[mmr-msh6].code.coding = $LNC#81693-4 "DNA mismatch repair protein Msh6 [Presence] in Cancer specimen by Immune stain"
* component[mmr-msh6].valueCodeableConcept.coding from $mii-vs-mtb-mmr-expression
* component[mmr-pms2].code.coding = $LNC#81694-2 "Mismatch repair endonuclease PMS2 [Presence] in Cancer specimen by Immune stain"
* component[mmr-pms2].valueCodeableConcept.coding from $mii-vs-mtb-mmr-expression
* component[mmr-msh3].code.coding = $LNC#96271-2 "DNA mismatch repair protein Msh3 [Presence] in Cancer specimen by Immune stain"
* component[mmr-msh3].valueCodeableConcept.coding from $mii-vs-mtb-mmr-expression
* component[mmr-mlh3].code.coding = $LNC#96272-0 "DNA mismatch repair protein Mlh3 [Presence] in Cancer specimen by Immune stain"
* component[mmr-mlh3].valueCodeableConcept.coding from $mii-vs-mtb-mmr-expression


// Evtl component gene-studied oder Erweiterung von Code (bei häufigen auch Loinc-Liste oder HGNC)
// CodeSystem -> mii-molekulare-biomarker