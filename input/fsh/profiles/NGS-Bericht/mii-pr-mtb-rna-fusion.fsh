Profile: MII_PR_MTB_RNA_Fusion
Parent: MII_PR_MolGen_Variante
Id: mii-pr-mtb-rna-fusion
Title: "MII PR MTB RNA Fusion"
Description: "RNA-Fusion"
* insert PR_Header

* identifier MS
* identifier ^short = "VariantenId innerhalb des NGS-Befundes"
* insert Translation(identifier ^short, de-DE, VariantenId innerhalb des NGS-Befundes)
* insert Translation(identifier ^short, en, Variant ID within the NGS report)
* focus MS
* focus only Reference(MII_PR_Onko_Diagnose_Primaertumor or MII_PR_MTB_Diagnose_Primaertumor)

* component contains
    five-prime-gene 1..1 MS and
    five-prime-transcript-id 1..1 MS and
    five-prime-exon-id 1..1 MS and
    five-prime-position 1..1 MS and
    five-prime-strand 1..1 MS and
    three-prime-gene 1..1 MS and
    three-prime-transcript-id 1..1 MS and
    three-prime-exon-id 1..1 MS and
    three-prime-position 1..1 MS and
    three-prime-strand 1..1 MS

* component[variation-code] MS
* component[variation-code] ^short = "Variant database ID (e.g. COSMIC)"
* insert Translation(component[variation-code] ^short, de-DE, [[Varianten-Datenbank-ID (z.B. COSMIC)]])
* insert Translation(component[variation-code] ^short, en, [[Variant database ID (e.g. COSMIC)]])

* component[allelic-read-depth] MS
* component[allelic-read-depth].code MS
* component[allelic-read-depth].valueQuantity MS
* component[allelic-read-depth] ^short = "Number reported reads"
* insert Translation(component[allelic-read-depth] ^short, de-DE, Anzahl berichteter Lesevorgaenge)
* insert Translation(component[allelic-read-depth] ^short, en, Number reported reads)

* component[five-prime-gene] MS
* component[five-prime-gene] ^short = "5' Domain - Gene"
* insert Translation(component[five-prime-gene] ^short, de-DE, 5' Domaene - Gen)
* insert Translation(component[five-prime-gene] ^short, en, 5' Domain - Gene)
* component[five-prime-gene].code = $mii-cs-mtb-molekulare-biomarker#five-prime-gene
* component[five-prime-gene].valueCodeableConcept MS

* component[five-prime-transcript-id] MS
* component[five-prime-transcript-id] ^short = "5' Transcript - Identifier"
* insert Translation(component[five-prime-transcript-id] ^short, de-DE, 5' Transkript - Identifier)
* insert Translation(component[five-prime-transcript-id] ^short, en, 5' Transcript - Identifier)
* component[five-prime-transcript-id].code = $mii-cs-mtb-molekulare-biomarker#five-prime-transcript-id
* component[five-prime-transcript-id].valueCodeableConcept MS

* component[five-prime-exon-id] MS
* component[five-prime-exon-id] ^short = "5' Exon - Identifier"
* insert Translation(component[five-prime-exon-id] ^short, de-DE, 5' Exon - Identifier)
* insert Translation(component[five-prime-exon-id] ^short, en, 5' Exon - Identifier)
* component[five-prime-exon-id].code = $mii-cs-mtb-molekulare-biomarker#five-prime-exon-id
* component[five-prime-exon-id].valueCodeableConcept MS

* component[five-prime-position] MS
* component[five-prime-position] ^short = "5' Domain - Position"
* insert Translation(component[five-prime-position] ^short, de-DE, 5' Domaene - Position)
* insert Translation(component[five-prime-position] ^short, en, 5' Domain - Position)
* component[five-prime-position].code = $mii-cs-mtb-molekulare-biomarker#five-prime-position
* component[five-prime-position].valueRange MS

* component[five-prime-strand] MS
* component[five-prime-strand] ^short = "5' Strand"
* insert Translation(component[five-prime-strand] ^short, de-DE, 5' Strang)
* insert Translation(component[five-prime-strand] ^short, en, 5' Strand)
* component[five-prime-strand].code = $mii-cs-mtb-molekulare-biomarker#five-prime-strand
* component[five-prime-strand].valueCodeableConcept MS

* component[three-prime-gene] MS
* component[three-prime-gene] ^short = "3' Domain - Gene"
* insert Translation(component[three-prime-gene] ^short, de-DE, 3' Domaene - Gen)
* insert Translation(component[three-prime-gene] ^short, en, 3' Domain - Gene)
* component[three-prime-gene].code = $mii-cs-mtb-molekulare-biomarker#three-prime-gene
* component[three-prime-gene].valueCodeableConcept MS

* component[three-prime-transcript-id] MS
* component[three-prime-transcript-id] ^short = "3' Transcript - Identifier"
* insert Translation(component[three-prime-transcript-id] ^short, de-DE, 3' Transkript - Identifier)
* insert Translation(component[three-prime-transcript-id] ^short, en, 3' Transcript - Identifier)
* component[three-prime-transcript-id].code = $mii-cs-mtb-molekulare-biomarker#three-prime-transcript-id
* component[three-prime-transcript-id].valueCodeableConcept MS

* component[three-prime-exon-id] MS
* component[three-prime-exon-id] ^short = "3' Exon - Identifier"
* insert Translation(component[three-prime-exon-id] ^short, de-DE, 3' Exon - Identifier)
* insert Translation(component[three-prime-exon-id] ^short, en, 3' Exon - Identifier)
* component[three-prime-exon-id].code = $mii-cs-mtb-molekulare-biomarker#three-prime-exon-id
* component[three-prime-exon-id].valueCodeableConcept MS

* component[three-prime-position] MS
* component[three-prime-position] ^short = "3' Domain - Position"
* insert Translation(component[three-prime-position] ^short, de-DE, 3' Domaene - Position)
* insert Translation(component[three-prime-position] ^short, en, 3' Domain - Position)
* component[three-prime-position].code = $mii-cs-mtb-molekulare-biomarker#three-prime-position
* component[three-prime-position].valueRange MS

* component[three-prime-strand] MS
* component[three-prime-strand] ^short = "3' Strand"
* insert Translation(component[three-prime-strand] ^short, de-DE, 3' Strang)
* insert Translation(component[three-prime-strand] ^short, en, 3' Strand)
* component[three-prime-strand].code = $mii-cs-mtb-molekulare-biomarker#three-prime-strand
* component[three-prime-strand].valueCodeableConcept MS
