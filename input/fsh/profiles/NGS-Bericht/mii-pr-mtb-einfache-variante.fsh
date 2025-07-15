Profile: MII_PR_MTB_Einfache_Variante
Parent: MII_PR_MolGen_Variante
Id: mii-pr-mtb-einfache-variante
Title: "MII PR MTB Einfache Variante"
Description: "Beschreibt eine gefundene genetische Variante."
* insert PR_Header

* identifier MS
* identifier ^short = "VariantenId im Kontext des NGS-Befundes"
* identifier ^definition = "Eindeutige ID der Variante im Kontext des NGS-Befundes."

* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "coding"
* category ^slicing.rules = #open
* category ^slicing.description = "Slices for category"
* category ^slicing.ordered = false


// * category contains labCategory 1..1 MS -> already in parent
// TODO Fhir comment about missing category and component


* focus MS 
* focus only Reference(MII_PR_Onko_Diagnose_Primaertumor or MII_PR_MTB_Diagnose_Primaertumor)

* component[chromosome-identifier] MS
* component[chromosome-identifier] ^definition = "Chromosome auf dem sich die Variante befindet (chr1 - chr22, chrX, chrY)."

* component[gene-studied] MS
* component[gene-studied] ^definition = "Gen auf dem sich die Variante befindet."

* component[representative-transcript-ref-seq] MS
* component[representative-transcript-ref-seq].valueCodeableConcept from $ENS (required)
* component[representative-transcript-ref-seq] ^short = "Transcript ID"
* component[representative-transcript-ref-seq] ^definition = "Ensemble Transcript ID ('ENST...')."

* component[dna-region] MS
* component[dna-region] ^short = "Exon"
* component[dna-region] ^definition = "Menschenlesbarer Name des Exons als Text, typischeweise Exon #"

* component[exact-start-end] MS
* component[exact-start-end].code MS
* component[exact-start-end].value[x] MS
* component[exact-start-end].valueRange MS
* component[exact-start-end] ^short = "Position" 
* component[exact-start-end] ^definition = "Genaue Position der genetischen Variante."

* component[ref-allele] MS
* component[ref-allele] ^definition = "Referenzsequenz am Ort der genetischen Variante."

* component[alt-allele] MS
* component[alt-allele] ^definition = "Veränderte Sequenz."

* component[representative-coding-hgvs] MS
* component[representative-coding-hgvs] ^definition = "HGVS-kodierte Variantenbeschreibung im kodierenden Bereich auf DNA-Baseneben."

* component[representative-protein-hgvs] MS
* component[representative-protein-hgvs] ^definition = "HGVS-kodierte Variantenbeschreibung im kodierenden Bereich auf Aminosäuren-Ebene."

* component[allelic-read-depth] MS
* component[allelic-read-depth] ^definition = "Lesetiefe am Ort der Variante."

* component[sample-allelic-frequency] MS
* component[sample-allelic-frequency] ^definition = "Relative Häufigkeit des Allels am Ort der Variante."

* component[variation-code] MS
* component[variation-code] ^definition = "Code der Variante in einer öffentlichen Datenbank (z.B. ClinVar)."
