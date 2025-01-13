Instance: MII-EXA-MTB-Einfache-Variante
InstanceOf: MII_PR_MTB_Einfache_Variante
Usage: #example
Title: "BRAF Variante"
Description: "Beispiel fuer einfache genetische Variante im BRAF Gen an Hand von NGS."

* meta.profile = "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant"
* status = #final
* category[labCategory] = ObsCat#laboratory "Laboratory"
* code = LNC#69548-6 "Genetic variant assessment"
* valueCodeableConcept = LNC#LA9633-4 "Present"
* method = LNC#LA26398-0 "Sequencing"

* component[chromosome-identifier].valueCodeableConcept = LNC#LA21270-6 "Chromosome 17"

* component[gene-studied].code = LNC#48018-6 "Gene studied [ID]"
* component[gene-studied].valueCodeableConcept = HGNC#HGNC:1097 "BRAF"

* component[transcript-ref-seq].valueCodeableConcept = RefSeq#NM_133433.4

* component[dna-region][+].code = LNC#47999-8 "DNA region name [Identifier]"
* component[dna-region][=].valueString = "Exon #15"
* component[dna-region][+].code = LNC#47999-8 "DNA region name [Identifier]"
* component[dna-region][=].valueString = "Codon #582 - #612"
* component[exact-start-end].valueRange = { "low": 43044295, "high": 43125364 }
// ref-allele
// alt-allele
* component[coding-hgvs].code = LNC#48004-6 "DNA change (c.HGVS)"
* component[coding-hgvs].valueCodeableConcept = HGVS#NM_004333.4:c.1799T>A
* component[protein-hgvs].code = LNC#48005-3 "Amino acid change (pHGVS)"
* component[protein-hgvs].valueCodeableConcept = HGVS#p.(Val600Glu)
* component[sample-allelic-frequency].code = LNC#81258-6 "Sample variant allelic frequency [NFr]"
* component[sample-allelic-frequency].valueQuantity = 30.25 '%'
* component[cytogenetic-location].code = LNC#48001-2 "Cytogenetic (chromosome) location"
* component[cytogenetic-location].valueCodeableConcept = ChromLoc#7q34
* component[coding-change-type].code = LNC#48019-4 "DNA change type"
* component[coding-change-type].valueCodeableConcept = SO#SO:1000008 "point_mutation"
* component[amino-acid-change-type].code = LNC#48006-1 "Amino acid change [Type]"
* component[amino-acid-change-type].valueCodeableConcept = LNC#LA6698-0 "Missense"
* component[variation-code].code = LNC#81252-9 "Discrete genetic variant"
* component[variation-code].valueCodeableConcept = dbSNP#rs113488022