Profile: MII_PR_MTB_IMMUNOHISTOCHEMISTRY_HER2
Parent: MII_PR_MTB_Immunohistochemistry // 
Id: mii-pr-mtb-immunohistochemistry-her2
Title: "MII PR MTB Immunohistochemistry"
Description: "Immunhistrchemistry report"
* insert PR_Header

* code.coding[spezifisch] = $LNC#18474-7 "HER2 Ag [Presence] in Tissue by Immune stain"
* valueCodeableConcept.coding.system = $LNC
* valueCodeableConcept.coding.code from http://loinc.org/vs/LL4396-9 //
* valueCodeableConcept.coding ^short =  "0|1+|2+|3+|Indeterminate"
* component[gene-studied].valueCodeableConcept = $HGNC#HGNC:3430 "ERBB2"
//* component[protein-studied].valueCodeableConcept = $UNIPROT#P04626 "Receptor tyrosine-protein kinase erbB-2"
* component[biomarker-category].valueCodeableConcept.coding = #immuneStain // alternative: protein



Profile: MII_PR_MTB_INSITUHYBRIDIZATION_HER2
Parent: MII_PR_MTB_Biomarker_InSituHybridization
Id: mii-pr-mtb-insituhybridization-her2
Title: "MII PR MTB In Situ Hybridization HER2"
Description: "HER2/ERBB2 In Situ Hybridization (FISH) Bericht. Basiert auf LOINC Panel 74885-5."
* insert PR_Header

// Specific code for HER2/CEP17 ratio measurement
* code.coding[spezifisch] = $LNC#49683-6 "ERBB2 gene copy number/Chromosome 17 copy number in Tissue by FISH"

// Method defaults to FISH for HER2
* method = $SCT#1303773004 "Fluorescence in situ hybridization technique (qualifier value)"

// Value is typically a ratio (HER2/CEP17)
* valueRatio MS
* valueRatio ^short = "HER2/CEP17 Ratio"

// Override component codes for HER2 specific LOINC codes
* component[target-signals].code = $LNC#74860-8 "ERBB2 gene copy number/nucleus in Tissue by FISH"
* component[reference-signals].code = $LNC#74861-6 "Chromosome 17 copy number/nucleus in Tissue by FISH"

// Gene studied is ERBB2
* component[gene-studied].valueCodeableConcept = $HGNC#HGNC:3430 "ERBB2"

// Biomarker category
* component[biomarker-category].valueCodeableConcept.coding.code = #inSituHybridization

/* Reference: LOINC Panel 74885-5 - ERBB2 gene (HER2) duplication associated observations panel
 31150-6  ERBB2 gene duplication [Presence] in Tissue by FISH
 49683-6  ERBB2 gene copy number/Chromosome 17 copy number in Tissue by FISH (ratio)
 74860-8  ERBB2 gene copy number/nucleus in Tissue by FISH
 74861-6  Chromosome 17 copy number/nucleus in Tissue by FISH (CEP17)
 62361-1  Cells counted [#]
 19147-8  Referral lab test reference range
 */


Profile: MII_PR_MTB_BIOMARKER_HER2_STATUS
Parent: MII_PR_MTB_Molekularer_Biomarker // copy of CG STU3profile --> or is this a diagnostic / therapeutic implication?
Id: mii-pr-mtb-biomarker-her2-status
Title: "MII PR Biomarker Her2 Status"
Description: "..."
* insert PR_Header
* code.coding = $LNC#48676-1 "HER2 [Interpretation] in Tissue"
* valueCodeableConcept.coding.system = $LNC
* valueCodeableConcept.coding.code from http://loinc.org/vs/LL3593-2 //Pos|Weak pos|Neg -> maybe also Her2low as explicit response option in self-defined value set

* component[gene-studied].valueCodeableConcept = $HGNC#HGNC:3430 "ERBB2"
//* component[protein-studied].valueCodeableConcept = $UNIPROT#P04626 "Receptor tyrosine-protein kinase erbB-2"
* component[biomarker-category].valueCodeableConcept.coding.code = #molgen  //derived Biomarker or implication?  

