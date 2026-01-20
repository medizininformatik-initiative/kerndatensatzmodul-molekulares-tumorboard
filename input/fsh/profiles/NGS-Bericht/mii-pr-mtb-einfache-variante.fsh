Profile: MII_PR_MTB_Einfache_Variante
Parent: MII_PR_MolGen_Variante
Id: mii-pr-mtb-einfache-variante
Title: "MII PR MTB Einfache Variante"
Description: "Beschreibt eine gefundene genetische Variante."
* insert PR_Header

* identifier MS
* identifier ^short = "VariantenId im Kontext des NGS-Befundes"
* identifier ^definition = "Eindeutige ID der Variante im Kontext des NGS-Befundes."
* insert Translation(identifier ^short, de-DE, VariantenId im Kontext des NGS-Befundes)
* insert Translation(identifier ^definition, de-DE, Eindeutige ID der Variante im Kontext des NGS-Befundes.)
* insert Translation(identifier ^short, en, Variant ID in the context of the NGS report)
* insert Translation(identifier ^definition, en, Unique ID of the variant in the context of the NGS report.)

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
* insert Translation(component[chromosome-identifier] ^definition, de-DE, Chromosom auf dem sich die Variante befindet - chr1 - chr22 - chrX - chrY)
* insert Translation(component[chromosome-identifier] ^definition, en, Chromosome on which the variant is located - chr1 - chr22 - chrX - chrY)

* component[gene-studied] MS
* component[gene-studied] ^definition = "Gen auf dem sich die Variante befindet."
* insert Translation(component[gene-studied] ^definition, de-DE, Gen auf dem sich die Variante befindet.)
* insert Translation(component[gene-studied] ^definition, en, Gene on which the variant is located.)

* component[representative-transcript-ref-seq] MS
* component[representative-transcript-ref-seq].valueCodeableConcept from $ENS (required)
* component[representative-transcript-ref-seq] ^short = "Transcript ID"
* component[representative-transcript-ref-seq] ^definition = "Ensemble Transcript ID ('ENST...')."
* insert Translation(component[representative-transcript-ref-seq] ^short, de-DE, Transkript-ID)
* insert Translation(component[representative-transcript-ref-seq] ^definition, de-DE, Ensemble Transkript-ID - ENST...)
* insert Translation(component[representative-transcript-ref-seq] ^short, en, Transcript ID)
* insert Translation(component[representative-transcript-ref-seq] ^definition, en, Ensemble Transcript ID - ENST...)

* component[dna-region] MS
* component[dna-region] ^short = "Exon"
* component[dna-region] ^definition = "Menschenlesbarer Name des Exons als Text, typischeweise Exon #"
* insert Translation(component[dna-region] ^short, de-DE, Exon)
* insert Translation(component[dna-region] ^definition, de-DE, Menschenlesbarer Name des Exons als Text - typischerweise Exon #)
* insert Translation(component[dna-region] ^short, en, Exon)
* insert Translation(component[dna-region] ^definition, en, Human-readable name of the exon as text - typically Exon #)

* component[exact-start-end] MS
* component[exact-start-end].code MS
* component[exact-start-end].value[x] MS
* component[exact-start-end].valueRange MS
* component[exact-start-end] ^short = "Position"
* component[exact-start-end] ^definition = "Genaue Position der genetischen Variante."
* insert Translation(component[exact-start-end] ^short, de-DE, Position)
* insert Translation(component[exact-start-end] ^definition, de-DE, Genaue Position der genetischen Variante.)
* insert Translation(component[exact-start-end] ^short, en, Position)
* insert Translation(component[exact-start-end] ^definition, en, Exact position of the genetic variant.)

* component[ref-allele] MS
* component[ref-allele] ^definition = "Referenzsequenz am Ort der genetischen Variante."
* insert Translation(component[ref-allele] ^definition, de-DE, Referenzsequenz am Ort der genetischen Variante.)
* insert Translation(component[ref-allele] ^definition, en, Reference sequence at the location of the genetic variant.)

* component[alt-allele] MS
* component[alt-allele] ^definition = "Veränderte Sequenz."
* insert Translation(component[alt-allele] ^definition, de-DE, Veraenderte Sequenz.)
* insert Translation(component[alt-allele] ^definition, en, Altered sequence.)

* component[representative-coding-hgvs] MS
* component[representative-coding-hgvs] ^definition = "HGVS-kodierte Variantenbeschreibung im kodierenden Bereich auf DNA-Baseneben."
* insert Translation(component[representative-coding-hgvs] ^definition, de-DE, HGVS-kodierte Variantenbeschreibung im kodierenden Bereich auf DNA-Basenebene.)
* insert Translation(component[representative-coding-hgvs] ^definition, en, HGVS-coded variant description in the coding region at DNA base level.)

* component[representative-protein-hgvs] MS
* component[representative-protein-hgvs] ^definition = "HGVS-kodierte Variantenbeschreibung im kodierenden Bereich auf Aminosäuren-Ebene."
* insert Translation(component[representative-protein-hgvs] ^definition, de-DE, HGVS-kodierte Variantenbeschreibung im kodierenden Bereich auf Aminosaeuren-Ebene.)
* insert Translation(component[representative-protein-hgvs] ^definition, en, HGVS-coded variant description in the coding region at amino acid level.)

* component[allelic-read-depth] MS
* component[allelic-read-depth] ^definition = "Lesetiefe am Ort der Variante."
* insert Translation(component[allelic-read-depth] ^definition, de-DE, Lesetiefe am Ort der Variante.)
* insert Translation(component[allelic-read-depth] ^definition, en, Read depth at the location of the variant.)

* component[sample-allelic-frequency] MS
* component[sample-allelic-frequency] ^definition = "Relative Häufigkeit des Allels am Ort der Variante."
* insert Translation(component[sample-allelic-frequency] ^definition, de-DE, Relative Haeufigkeit des Allels am Ort der Variante.)
* insert Translation(component[sample-allelic-frequency] ^definition, en, Relative frequency of the allele at the location of the variant.)

* component[variation-code] MS
* component[variation-code] ^definition = "Code der Variante in einer öffentlichen Datenbank (z.B. ClinVar)."
* insert Translation(component[variation-code] ^definition, de-DE, Code der Variante in einer oeffentlichen Datenbank - z.B. ClinVar)
* insert Translation(component[variation-code] ^definition, en, Code of the variant in a public database - e.g. ClinVar)
