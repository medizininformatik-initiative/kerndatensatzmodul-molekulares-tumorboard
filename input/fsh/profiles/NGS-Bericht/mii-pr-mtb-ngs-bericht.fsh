Profile: MII_PR_MTB_NGS_Bericht
Parent: DiagnosticReport
Id: mii-pr-mtb-ngs-bericht
Title: "MII PR MTB NGS-Bericht"
Description: "NGS-Bericht zu einer Probe"
* insert PR_Header

* issued MS
* issued ^short = "Erstellungsdatum"
* insert Translation(issued ^short, de-DE, Erstellungsdatum)
* insert Translation(issued ^short, en, Issue date)

* subject MS
* subject only Reference(Patient)
* subject ^short = "Referenz auf Patient"
* insert Translation(subject ^short, de-DE, Referenz auf Patient)
* insert Translation(subject ^short, en, Reference to Patient)

* specimen MS
* specimen only Reference(MII_PR_Onko_Specimen or MII_PR_Patho_Specimen or MII_PR_Biobank_Specimen_Bioprobe_Core or Specimen)
* specimen ^short = "Referenz auf Probe"
* insert Translation(specimen ^short, de-DE, Referenz auf Probe)
* insert Translation(specimen ^short, en, Reference to Specimen)

* result ^slicing.discriminator.type = #profile
* result ^slicing.discriminator.path = "$this.resolve()"
* result ^slicing.rules = #open
* result ^slicing.description = "Slice für Varianten & Biomarker des NGS-Berichts"
* result ^slicing.ordered = false

* result contains TumorMutionalBurden 0..1 MS
* result[TumorMutionalBurden] ^short = "Tumor Mutational Burden"
* result[TumorMutionalBurden] ^definition = "Verweis auf Tumor Mutational Burden"
* insert Translation(result[TumorMutionalBurden] ^short, de-DE, Tumormutationslast)
* insert Translation(result[TumorMutionalBurden] ^definition, de-DE, Verweis auf Tumormutationslast)
* insert Translation(result[TumorMutionalBurden] ^short, en, Tumor Mutational Burden)
* insert Translation(result[TumorMutionalBurden] ^definition, en, Reference to Tumor Mutational Burden)
* result[TumorMutionalBurden] 0..1 MS
* result[TumorMutionalBurden] only Reference(MII_PR_MTB_Mutationslast) // or MII_PR_Molgen_Mutationslast or MII_PR_MTB_Mutationslast
// Ich darf hier keine Referenz zu den MII_PR_Molgen_Mutationslast or MII_PR_MTB_Mutationslast Profilen machen
// obwohl ihr Basisprofil Observation ist .... - JG-IBSM


* result contains MSI 0..1 MS
* result[MSI] ^short = "Micro-Satellite Instabilities"
* result[MSI] ^definition = "Verweis auf Micro-Satellite Instabilities"
* insert Translation(result[MSI] ^short, de-DE, Mikrosatelliteninstabilitaeten)
* insert Translation(result[MSI] ^definition, de-DE, Verweis auf Mikrosatelliteninstabilitaeten)
* insert Translation(result[MSI] ^short, en, Micro-Satellite Instabilities)
* insert Translation(result[MSI] ^definition, en, Reference to Micro-Satellite Instabilities)
* result[MSI] 0..1 MS
* result[MSI] only Reference(MII_PR_MTB_Mikrosatelliteninstabilitaet) //MII_PR_MTB_Mikrosatelliteninstabilitaet or MII_PR_MolGen_Mikrosatelliteninstabilitaet
// Problem s.o. 

* result contains Ploidie 0..1 MS
* result[Ploidie] ^short = "Ploidie"
* result[Ploidie] ^definition = "Ploidie"
* insert Translation(result[Ploidie] ^short, de-DE, Ploidie)
* insert Translation(result[Ploidie] ^definition, de-DE, Ploidie)
* insert Translation(result[Ploidie] ^short, en, Ploidy)
* insert Translation(result[Ploidie] ^definition, en, Ploidy)
* result[Ploidie] 0..1 MS
* result[Ploidie] only Reference(MII_PR_MTB_Ploidie)

* result contains HRDScore 0..1 MS
* result[HRDScore] ^short = "HRD-Score"
* result[HRDScore] ^definition = "Verweis auf HRD-Score"
* insert Translation(result[HRDScore] ^short, de-DE, HRD-Score)
* insert Translation(result[HRDScore] ^definition, de-DE, Verweis auf HRD-Score)
* insert Translation(result[HRDScore] ^short, en, HRD Score)
* insert Translation(result[HRDScore] ^definition, en, Reference to HRD Score)
* result[HRDScore] 0..1 MS
* result[HRDScore] only Reference(MII_PR_MTB_HRD_Score) // or HRD-Profile

* result contains BRCAness 0..1 MS
* result[BRCAness] ^short = "BRCAness"
* result[BRCAness] ^definition = "Verweis auf BRCAness"
* insert Translation(result[BRCAness] ^short, de-DE, BRCAness)
* insert Translation(result[BRCAness] ^definition, de-DE, Verweis auf BRCAness)
* insert Translation(result[BRCAness] ^short, en, BRCAness)
* insert Translation(result[BRCAness] ^definition, en, Reference to BRCAness)
* result[BRCAness] 0..1 MS
* result[BRCAness] only Reference(MII_PR_MTB_BRCAness) // or BRCAness-Profile

* result contains EinfacheVariante 0..* MS
* result[EinfacheVariante] ^short = "Einfache Variante"
* result[EinfacheVariante] ^definition = "Verweis auf Einfache Variante"
* insert Translation(result[EinfacheVariante] ^short, de-DE, Einfache Variante)
* insert Translation(result[EinfacheVariante] ^definition, de-DE, Verweis auf Einfache Variante)
* insert Translation(result[EinfacheVariante] ^short, en, Simple Variant)
* insert Translation(result[EinfacheVariante] ^definition, en, Reference to Simple Variant)
* result[EinfacheVariante] only Reference(MII_PR_MTB_Einfache_Variante) // or Einfache Variante Profile

* result contains CopyNumberVariant 0..* MS
* result[CopyNumberVariant] ^short = "Copy Number Variant"
* result[CopyNumberVariant] ^definition = "Verweis auf Copy Number Variant"
* insert Translation(result[CopyNumberVariant] ^short, de-DE, Kopienzahlvariante)
* insert Translation(result[CopyNumberVariant] ^definition, de-DE, Verweis auf Kopienzahlvariante)
* insert Translation(result[CopyNumberVariant] ^short, en, Copy Number Variant)
* insert Translation(result[CopyNumberVariant] ^definition, en, Reference to Copy Number Variant)
* result[CopyNumberVariant] only Reference(MII_PR_MTB_Copy_Number_Variant) // or Copy Number Variant Profile

* result contains DNAFusion 0..* MS
* result[DNAFusion] ^short = "DNA-Fusion"
* result[DNAFusion] ^definition = "Verweis auf DNA-Fusion"
* insert Translation(result[DNAFusion] ^short, de-DE, DNA-Fusion)
* insert Translation(result[DNAFusion] ^definition, de-DE, Verweis auf DNA-Fusion)
* insert Translation(result[DNAFusion] ^short, en, DNA Fusion)
* insert Translation(result[DNAFusion] ^definition, en, Reference to DNA Fusion)
* result[DNAFusion] only Reference(MII_PR_MTB_DNA_Fusion) // or MTB DNA-Fusion Profil

* result contains RNAFusion 0..* MS
* result[RNAFusion] ^short = "RNA-Fusion"
* result[RNAFusion] ^definition = "Verweis auf RNA-Fusion"
* insert Translation(result[RNAFusion] ^short, de-DE, RNA-Fusion)
* insert Translation(result[RNAFusion] ^definition, de-DE, Verweis auf RNA-Fusion)
* insert Translation(result[RNAFusion] ^short, en, RNA Fusion)
* insert Translation(result[RNAFusion] ^definition, en, Reference to RNA Fusion)
* result[RNAFusion] only Reference(MII_PR_MTB_RNA_Fusion) // or MTB RNA-Fusion Profile

* result contains RNASeq 0..* MS
* result[RNASeq] ^short = "RNASeq"
* result[RNASeq] ^definition = "Verweis auf RNASeq"
* insert Translation(result[RNASeq] ^short, de-DE, RNASeq)
* insert Translation(result[RNASeq] ^definition, de-DE, Verweis auf RNASeq)
* insert Translation(result[RNASeq] ^short, en, RNASeq)
* insert Translation(result[RNASeq] ^definition, en, Reference to RNASeq)
* result[RNASeq] only Reference(MII_PR_MTB_RNA_Seq) // or MTB RNASeq Profile

* result contains MolekularerBiomarkerHER2Status 0..* MS
* result[MolekularerBiomarkerHER2Status] ^short = "Molekularer Biomarker HER2 Status"
* result[MolekularerBiomarkerHER2Status] ^definition = "Verweis auf Molekularer Biomarker HER2 Status"
* insert Translation(result[MolekularerBiomarkerHER2Status] ^short, de-DE, Molekularer Biomarker HER2 Status)
* insert Translation(result[MolekularerBiomarkerHER2Status] ^definition, de-DE, Verweis auf Molekularer Biomarker HER2 Status)
* insert Translation(result[MolekularerBiomarkerHER2Status] ^short, en, Molecular Biomarker HER2 Status)
* insert Translation(result[MolekularerBiomarkerHER2Status] ^definition, en, Reference to Molecular Biomarker HER2 Status)
* result[MolekularerBiomarkerHER2Status] 0..* MS
* result[MolekularerBiomarkerHER2Status] only Reference(
    MII_PR_MTB_BIOMARKER_HER2_STATUS)

// für andere Biomarker
* result contains MolekularerBiomarker 0..* MS
* result[MolekularerBiomarker] ^short = "Molekularer Biomarker"
* result[MolekularerBiomarker] ^definition = "Verweis auf Molekularer Biomarker"
* insert Translation(result[MolekularerBiomarker] ^short, de-DE, Molekularer Biomarker)
* insert Translation(result[MolekularerBiomarker] ^definition, de-DE, Verweis auf Molekularer Biomarker)
* insert Translation(result[MolekularerBiomarker] ^short, en, Molecular Biomarker)
* insert Translation(result[MolekularerBiomarker] ^definition, en, Reference to Molecular Biomarker)
* result[MolekularerBiomarker] 0..* MS
* result[MolekularerBiomarker] only Reference(
    MII_PR_MTB_Molekularer_Biomarker)


* result contains Tumorzellgehalt 0..1 MS

Extension: MII_EX_MTB_NGS_Bericht_Genomic_Study
Id: mii-ex-mtb-ngs-bericht-genomic-study
Context: DiagnosticReport
Title: "MII EX MTB NGS Bericht Metadaten"
Description: "Metadaten des NGS-Berichts"
* insert EX_Header($mii-ex-mtb-ngs-bericht-genomic-study)

* value[x] only Reference
* value[x] 1..1 MS

* valueReference ^short = "Metadaten des NGS-Berichts"
* valueReference ^definition = "Genomic-Study mit Metadaten als Genomic-Study-Analysis des NGS-Berichts"
* insert Translation(valueReference ^short, de-DE, Metadaten des NGS-Berichts)
* insert Translation(valueReference ^definition, de-DE, Genomic-Study mit Metadaten als Genomic-Study-Analysis des NGS-Berichts)
* insert Translation(valueReference ^short, en, Metadata of the NGS report)
* insert Translation(valueReference ^definition, en, Genomic Study with metadata as Genomic Study Analysis of the NGS report)
* valueReference only Reference(MII_PR_MTB_Genomic_Study)


