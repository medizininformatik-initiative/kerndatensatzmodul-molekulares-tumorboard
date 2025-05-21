Instance: MII-EXA-MTB-Einfache-Variante
InstanceOf: MII_PR_MTB_Einfache_Variante
Usage: #example
Title: "BRAF Variante"
Description: "Beispiel fuer einfache genetische Variante im BRAF Gen an Hand von NGS."

* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final
* category[labCategory] = $fhir-observation-category#laboratory "Laboratory"

* code = $LNC#69548-6 "Genetic variant assessment"
* valueCodeableConcept.coding = $LNC#LA9633-4 "Present"
* method = $LNC#LA26398-0 "Sequencing"

* subject = Reference(Patient/example)

* component[chromosome-identifier].valueCodeableConcept = $LNC#LA21270-6 "Chromosome 17"

* component[gene-studied].code = $LNC#48018-6 "Gene studied [ID]"
* component[gene-studied].valueCodeableConcept = #HGNC:1097 "BRAF"

* component[transcript-ref-seq].valueCodeableConcept = https://www.ncbi.nlm.nih.gov/refseq/#NM_133433.4

* component[dna-region][+].code = $LNC#47999-8 "DNA region name [Identifier]"
* component[dna-region][=].valueString = "Exon #15"
* component[dna-region][+].code = $LNC#47999-8 "DNA region name [Identifier]"
* component[dna-region][=].valueString = "Codon #582 - #612"

* component[exact-start-end].valueRange.low.value = 43044295
* component[exact-start-end].valueRange.high.value = 43125364

// ref-allele
// alt-allele

* component[coding-hgvs].code = $LNC#48004-6 "DNA change (c.HGVS)"
* component[coding-hgvs].valueCodeableConcept = #NM_004333.4:c.1799T>A

* component[protein-hgvs].code = $LNC#48005-3 "Amino acid change (pHGVS)"
* component[protein-hgvs].valueCodeableConcept = #p.(Val600Glu)

// allellic read-depth

* component[sample-allelic-frequency].code = $LNC#81258-6 "Sample variant allelic frequency [NFr]"
* component[sample-allelic-frequency].valueQuantity = 30.25 '%'

* component[variation-code].code = $LNC#81252-9 "Discrete genetic variant"
* component[variation-code].valueCodeableConcept = $SNP#rs113488022
