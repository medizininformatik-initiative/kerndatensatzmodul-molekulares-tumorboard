Profile: MII_PR_MTB_NGS_Bericht
Parent: DiagnosticReport
Id: mii-pr-mtb-ngs-bericht
Title: "MII PR MTB NGS-Bericht"
Description: "NGS-Bericht zu einer Probe"
* insert PR_Header

* issued MS
* issued ^short = "Erstellungsdatum"

* subject MS
* subject only Reference(Patient)
* subject ^short = "Referenz auf Patient"

* specimen MS
* specimen only Reference(MII_PR_Onko_Specimen or MII_PR_Patho_Specimen or ProfileSpecimenBioprobe or Specimen)
* specimen ^short = "Referenz auf Probe"

* result ^slicing.discriminator.type = #type
* result ^slicing.discriminator.path = "reference.reference"
* result ^slicing.rules = #open
* result ^slicing.description = "Slice für Varianten & Biomarker des NGS-Berichts"
* result ^slicing.ordered = false

* result contains TumorMutionalBurden 0..1 MS
* result[TumorMutionalBurden] ^short = "Tumor Mutational Burden"
* result[TumorMutionalBurden] ^definition = "Verweis auf Tumor Mutational Burden"
* result[TumorMutionalBurden] 0..1 MS
* result[TumorMutionalBurden] only Reference(Observation) // or MII_PR_Molgen_Mutationslast or MII_PR_MTB_Mutationslast
// Ich darf hier keine Referenz zu den MII_PR_Molgen_Mutationslast or MII_PR_MTB_Mutationslast Profilen machen
// obwohl ihr Basisprofil Observation ist .... - JG-IBSM
 

* result contains MicroSatelliteInstabilities 0..1 MS
* result[MicroSatelliteInstabilities] ^short = "Micro-Satellite Instabilities"
* result[MicroSatelliteInstabilities] ^definition = "Verweis auf Micro-Satellite Instabilities"
* result[MicroSatelliteInstabilities] 0..1 MS
* result[MicroSatelliteInstabilities] only Reference(Observation) //MII_PR_MTB_Mikrosatelliteninstabilitaet or MII_PR_MolGen_Mikrosatelliteninstabilitaet
// Problem s.o. 

* result contains Ploidie 0..1 MS
* result[Ploidie] ^short = "Ploidie"
* result[Ploidie] ^definition = "Ploidie"
* result[Ploidie] 0..1 MS
* result[Ploidie] only Reference(Observation)

* result contains HRDScore 0..1 MS
* result[HRDScore] ^short = "HRD-Score"
* result[HRDScore] ^definition = "Verweis auf HRD-Score"
* result[HRDScore] 0..1 MS
* result[HRDScore] only Reference(MII_PR_MTB_HRD_Score) // or HRD-Profile

* result contains BRCAness 0..1 MS
* result[BRCAness] ^short = "BRCAness"
* result[BRCAness] ^definition = "Verweis auf BRCAness"
* result[BRCAness] 0..1 MS
* result[BRCAness] only Reference(MII_PR_MTB_BRCAness) // or BRCAness-Profile

* result contains EinfacheVariante 0..* MS
* result[EinfacheVariante] ^short = "Einfache Variante"
* result[EinfacheVariante] ^definition = "Verweis auf Einfache Variante"
* result[EinfacheVariante] 0..1 MS
* result[EinfacheVariante] only Reference(MII_PR_MTB_Einfache_Variante) // or Einfache Variante Profile

* result contains CopyNumberVariant 0..* MS
* result[CopyNumberVariant] ^short = "Copy Number Variant"
* result[CopyNumberVariant] ^definition = "Verweis auf Copy Number Variant"
* result[CopyNumberVariant] 0..1 MS
* result[CopyNumberVariant] only Reference(MII_PR_MTB_Copy_Number_Variant) // or Copy Number Variant Profile

* result contains DNAFusion 0..* MS
* result[DNAFusion] ^short = "DNA-Fusion"
* result[DNAFusion] ^definition = "Verweis auf DNA-Fusion"
* result[DNAFusion] 0..1 MS
* result[DNAFusion] only Reference(MII_PR_MTB_DNA_Fusion) // or MTB DNA-Fusion Profil

* result contains RNAFusion 0..* MS
* result[RNAFusion] ^short = "RNA-Fusion"
* result[RNAFusion] ^definition = "Verweis auf RNA-Fusion"
* result[RNAFusion] 0..1 MS
* result[RNAFusion] only Reference(MII_PR_MTB_RNA_Fusion) // or MTB RNA-Fusion Profile

* result contains RNASeq 0..* MS
* result[RNASeq] ^short = "RNASeq"
* result[RNASeq] ^definition = "Verweis auf RNASeq"
* result[RNASeq] 0..1 MS
* result[RNASeq] only Reference(MII_PR_MTB_RNA_Seq) // or MTB RNASeq Profile

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
* valueReference only Reference(MII_PR_MTB_Genomic_Study)


