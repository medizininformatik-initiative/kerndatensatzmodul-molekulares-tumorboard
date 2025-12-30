ValueSet: MII_VS_MTB_Immunhistochemistry_Specific_Codes
Id: mii-vs-mtb-immunohistochemistry-specific-codes
Title: "MII VS MTB Immunhistochemistry Specific Codes"
Description: "Spezifische LOINC und SNOMED Codes für immunhistochemische Untersuchungen. Diese Codes werden für das Slice 'spezifisch' im Immunohistochemistry Profil verwendet."
* insert VS_Header($mii-vs-mtb-immunohistochemistry-specific-codes)

// SNOMED: All descendants of "Observation using immunohistochemistry (observable entity)"
* include codes from system $SCT where concept descendent-of #1234806008

// LOINC: Specific IHC codes for tissue-based immune stain tests
// Generic IHC
* $LNC#55229-9 "Immune stain study"

// HER2/ERBB2
* $LNC#18474-7 "HER2 Ag [Presence] in Tissue by Immune stain"
* $LNC#48676-1 "HER2 [Interpretation] in Tissue"
* $LNC#85319-2 "HER2 [Presence] in Breast cancer specimen by Immune stain"

// Hormone receptors (ER, PR)
* $LNC#14228-1 "Cells.estrogen receptor/cells in Tissue by Immune stain"
* $LNC#14230-7 "Cells.progesterone receptor/cells in Tissue by Immune stain"

// Ki-67 proliferation marker
* $LNC#29593-1 "Cells.Ki-67 nuclear Ag/cells in Tissue by Immune stain"
* $LNC#33055-5 "Ki-67 nuclear Ag [Presence] in Tissue by Immune stain"
* $LNC#85330-9 "Cells.Ki-67 nuclear Ag/cells in Breast cancer specimen by Immune stain"

// PD-L1 (various clones)
* $LNC#83052-1 "PD-L1 by clone 22C3 [Presence] in Tissue by Immune stain"
* $LNC#83055-4 "PD-L1 by clone 28-8 [Presence] in Tissue by Immune stain"
* $LNC#83057-0 "PD-L1 by clone SP142 [Presence] in Tissue by Immune stain"

// MMR proteins (MLH1, MSH2, MSH6, PMS2)
* $LNC#81691-8 "DNA mismatch repair protein Mlh1 [Presence] in Cancer specimen by Immune stain"
* $LNC#81692-6 "DNA mismatch repair protein Msh2 [Presence] in Cancer specimen by Immune stain"
* $LNC#81693-4 "DNA mismatch repair protein Msh6 [Presence] in Cancer specimen by Immune stain"
* $LNC#81694-2 "Mismatch repair endonuclease PMS2 [Presence] in Cancer specimen by Immune stain"

// p53 tumor suppressor
* $LNC#14229-9 "P53 protein Ag [Presence] in Tissue by Immune stain"

// ALK (lung cancer)
* $LNC#47303-3 "Anaplastic lymphoma kinase Ag [Presence] in Tissue by Immune stain"

// Other common IHC markers
* $LNC#47021-1 "CDX2 Ag [Presence] in Tissue by Immune stain"
* $LNC#73910-2 "PAX8 Ag [Presence] in Tissue by Immune stain"
* $LNC#48677-9 "Cancer Ag 125 [Presence] in Tissue by Immune stain"
