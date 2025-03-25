// MTB-NGS-Bericht Kim Musterperson
Instance: mii-exa-mtb-kim-musterperson-ngs-bericht
InstanceOf: MII_PR_MTB_NGS_Bericht
Title: "MTB-NGS-Bericht Kim Musterperson"
Description: "Ergebnisse des NGS-Bericht von Kim Musterperson"
Usage: #example
* status = #active
* category = $ngs-category#GE "Genetics"
* code = $LNC#51969-4 "Genetic analysis report"
* issued = "2023-03-28T00:00:00.000Z" // Ist das Datum des NGS-Berichts irgendwo angegeben?
* subject = Reference(Patient/PatientKimMusterperson)
* specimen = Reference(Specimen/PatientKimMusterperson)
* result = Reference(mii-exa-mtb-kim-musterperson-EinfacheVariante-TP53)
* result = Reference(mii-exa-mtb-kim-musterperson-EinfacheVariante-PIK3R1)
* result = Reference(mii-exa-mtb-kim-musterperson-CNVariante-CCNE1)

// Nachweis einer pathogenen TP53-Mutation ohne direkte therapeutische Relevanz.
Instance: mii-exa-mtb-kim-musterperson-EinfacheVariante-TP53
InstanceOf: MII_PR_MTB_Einfache_Variante
Title: "TP53 Einfache Variante"
Description: "Nachweis einer pathogenen TP53-Mutation"
Usage: #example
* status = #final
* category[labCategory] = $fhir-observation-category#laboratory "Laboratory"
* code = $LNC#69548-6 "Genetic variant assessment"
* subject = Reference(Patient/KimMusterperson)
* component[gene-studied].code = $LNC#48018-6 "Gene studied [ID]"
* component[gene-studied].valueCodeableConcept = #HGNC:11998 "TP53"

// Nachweis einer PIK3R1-Mutation.
Instance: mii-exa-mtb-kim-musterperson-EinfacheVariante-PIK3R1
InstanceOf: MII_PR_MTB_Einfache_Variante
Title: "PIK3R1 Einfache Variante"
Description: "Nachweis einer PIK3R1-Mutation"
Usage: #example
* status = #final
* category[labCategory] = $fhir-observation-category#laboratory "Laboratory"
* code = $LNC#69548-6 "Genetic variant assessment"
* subject = Reference(Patient/KimMusterperson)
* component[gene-studied].code = $LNC#48018-6 "Gene studied [ID]"
* component[gene-studied].valueCodeableConcept = #HGNC:8979 "PIK3R1"

// Kopienzahlveränderung von CCNE1.
Instance: mii-exa-mtb-kim-musterperson-CNVariante-CCNE1
InstanceOf: MII_PR_MTB_Copy_Number_Variant
Title: "CCNE1 Einfache Variante 2"
Description: "Kopienzahlveränderung bei einer CCNE1-Mutation"
Usage: #example
* status = #final
* category[labCategory] = $fhir-observation-category#laboratory "Laboratory"
* code = $LNC#69548-6 "Genetic variant assessment"
* subject = Reference(Patient/KimMusterperson)
* component[gene-studied].code = $LNC#48018-6 "Gene studied [ID]"
* component[gene-studied].valueCodeableConcept = #HGNC:1589 "CCNE1"
* component[cnv-type].code = $bwhc-cnv-type#type
* component[cnv-type].valueCodeableConcept = $bwhc-cnv-type#high-level-gain "high-level-gain"
* component[copy-number].code = $LNC#82155-3 "Total Copy Number"
* component[copy-number].valueQuantity.value = 7
* component[copy-number].valueQuantity.system = $UCUM

