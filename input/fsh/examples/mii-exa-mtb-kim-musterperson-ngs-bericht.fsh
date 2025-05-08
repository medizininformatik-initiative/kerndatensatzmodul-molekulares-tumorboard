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
* specimen = Reference(Specimen/PatientKimMusterperson-Ascites )
* result = Reference(mii-exa-mtb-kim-musterperson-EinfacheVariante-TP53)
* result = Reference(mii-exa-mtb-kim-musterperson-EinfacheVariante-PIK3R1)
* result = Reference(mii-exa-mtb-kim-musterperson-CNVariante-CCNE1)

Instance: mii-exa-mtb-kim-musterperson-genomic-study
InstanceOf: MII_PR_MTB_Genomic_Study
Title: "MTB-NGS-Bericht Kim Musterperson"
Description: "Details zur Durchführung NGS-Bericht von Kim Musterperson"
Usage: #example
* status = #completed
* subject = Reference(Patient/PatientKimMusterperson)

Instance: mii-exa-mtb-kim-musterperson-genomic-study-analysis-1
InstanceOf: MII_PR_MTB_Genomic_Study_Analysis
Title: "MTB-NGS-Bericht Kim Musterperson"
Description: "Details zur Analyse NGS-Bericht von Kim Musterperson - TSO500"
Usage: #example
* subject = Reference(Patient/PatientKimMusterperson)
* extension[+].url =  "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-method-type"
* extension[=].valueCodeableConcept = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/genomic-study-method-type-cs#ngs-mps "Next Generation Sequencing / Massively Parallel Sequencing" 
* extension[+].url =  "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-change-type"
* extension[=].valueCodeableConcept = http://www.sequenceontology.org#SO:0001483 "SNV" 
* extension[+].url =  "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-change-type"
* extension[=].valueCodeableConcept = http://www.sequenceontology.org#SO:0001483 "MNV" 
* extension[+].url =  "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-genome-build"
* extension[=].valueCodeableConcept = $LNC#LA30107-3 "GRCh38"
* extension[+].url =  "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-genome-build"
* extension[=].valueCodeableConcept = $LNC#LA30107-3 "GRCh38"



Instance: mii-exa-mtb-kim-musterperson-genomic-study-analysis-2
InstanceOf: MII_PR_MTB_Genomic_Study_Analysis
Title: "MTB-NGS-Bericht Kim Musterperson HLA Status"
Description: "Diagnostische Prozeduren  NGS-Bericht von Kim Musterperson - HLA-Statu - keine näheren Angaben weil Beispiel"
Usage: #example
* subject = Reference(Patient/PatientKimMusterperson)

Instance: mii-exa-mtb-kim-musterperson-genomic-study-analysis-3
InstanceOf: MII_PR_MTB_Genomic_Study_Analysis
Title: "MTB-NGS-Bericht Kim Musterperson"
Description: "Diagnostische Prozeduren  MolPatho-Bericht von Kim Musterperson - Immunhistochemie"
Usage: #example
* subject = Reference(Patient/PatientKimMusterperson)
* extension[+].url =  "http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/genomic-study-analysis-method-type"
* extension[=].valueCodeableConcept = http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/genomic-study-method-type-cs#histo "Next Generation Sequencing / Massively Parallel Sequencing" 
 
 

// Nachweis einer pathogenen TP53-Mutation ohne direkte therapeutische Relevanz.
Instance: mii-exa-mtb-kim-musterperson-EinfacheVariante-TP53
InstanceOf: MII_PR_MTB_Einfache_Variante
Title: "TP53 Einfache Variante"
Description: "Nachweis einer pathogenen TP53-Mutation"
Usage: #example
* status = #final
* category[labCategory] = $fhir-observation-category#laboratory "Laboratory"
* code = $LNC#69548-6 "Genetic variant assessment"
* valueCodeableConcept = $LNC#LA9633-4 "Present"
* subject = Reference(Patient/KimMusterperson)
* component[gene-studied].code = $LNC#48018-6 "Gene studied [ID]"
* component[gene-studied].valueCodeableConcept = $HGNC#HGNC:11998 "TP53"
* component[protein-hgvs].code = $LNC#48005-3 "Amino acid change (pHGVS)"
* component[protein-hgvs].valueCodeableConcept = $HGVS#NP_000537.3:p.Arg213Ter

// Diagnostische Implikation der TP53 Mutation (Pathogenität)
Instance: mii-exa-mtb-kim-musterperson-DiagnostischeImplikation-TP53
InstanceOf: MII_PR_MTB_Diagnostische_Implikation
Title: "TP53 Diagnostische Implikation"
Description: "Diagnostische Bedeutung der festgestellten TP53 Mutation"
Usage: #example
* status = #final
* category[labCategory] = $fhir-observation-category#laboratory "Laboratory"
* code = $TBD#diagnostic-implication "Diagnostische Implikation"
* subject = Reference(Patient/PatientKimMusterperson)
* derivedFrom = Reference(mii-exa-mtb-kim-musterperson-EinfacheVariante-TP53)
* component[clinical-significance].code = $LNC#53037-8
* component[clinical-significance].valueCodeableConcept = $LNC#LA6668-3 "Pathogenic"

// Nachweis einer PIK3R1-Mutation.
Instance: mii-exa-mtb-kim-musterperson-EinfacheVariante-PIK3R1
InstanceOf: MII_PR_MTB_Einfache_Variante
Title: "PIK3R1 Einfache Variante"
Description: "Nachweis einer PIK3R1-Mutation"
Usage: #example
* status = #final
* category[labCategory] = $fhir-observation-category#laboratory "Laboratory"
* code = $LNC#69548-6 "Genetic variant assessment"
* valueCodeableConcept = $LNC#LA9633-4 "Present"
* subject = Reference(Patient/KimMusterperson)
* component[gene-studied].code = $LNC#48018-6 "Gene studied [ID]"
* component[gene-studied].valueCodeableConcept = $HGNC#HGNC:8979 "PIK3R1"
* component[protein-hgvs].code = $LNC#48005-3 "Amino acid change (pHGVS)"
* component[protein-hgvs].valueCodeableConcept = $HGVS#NM_181523.2:p.E160*
// 

// Add diagnostic implication for PIK3R1 mutation
// clinical significance = oncogenic/pathogenic

// Therapeutische Implikation der PIK3R1 Mutation
Instance: mii-exa-mtb-kim-musterperson-TherapeutischeImplikation-PIK3R1
InstanceOf: MII_PR_MTB_Therapeutische_Implikation
Title: "PIK3R1 Therapeutische Implikation"
Description: "Therapeutische Bedeutung der festgestellten PIK3R1 Mutation"
Usage: #example
* status = #final
* category[labCategory] = $fhir-observation-category#laboratory "Laboratory"
* code = $TBD#therapeutic-implication "Therapeutische Implikation"
* subject = Reference(Patient/PatientKimMusterperson)
* derivedFrom = Reference(mii-exa-mtb-kim-musterperson-EinfacheVariante-PIK3R1)
* component[conclusion-string].code = $TBD#conclusion-string
* component[conclusion-string].valueString = "Ausweislich praeklinischer Daten liegt ein Ansprechen auf MEK-Inhibition nahe (PMID: 31209687, EL m3)."
* component[medication-assessed].code = $LNC#51963-7 "Medication assessed [ID]"
* component[medication-assessed].valueCodeableConcept = $ATC_DE#L01EE "Mitogen-akivierte Proteinkinase (MEK)-Inhibitoren"
* extension[Evidenzgraduierung].valueCodeableConcept.coding[Evidenzgrad] = #m3

// Kopienzahlveränderung von CCNE1.
Instance: mii-exa-mtb-kim-musterperson-CNVariante-CCNE1
InstanceOf: MII_PR_MTB_Copy_Number_Variant
Title: "CCNE1 Einfache Variante 2"
Description: "Kopienzahlveränderung bei einer CCNE1-Mutation"
Usage: #example
* status = #final
* category[labCategory] = $fhir-observation-category#laboratory "Laboratory"
* code = $LNC#69548-6 "Genetic variant assessment"
* valueCodeableConcept = $LNC#LA9633-4 "Present"
* subject = Reference(Patient/KimMusterperson)
* component[gene-studied].code = $LNC#48018-6 "Gene studied [ID]"
* component[gene-studied].valueCodeableConcept = $HGNC#HGNC:1589 "CCNE1"
* component[cnv-type].code = $bwhc-cnv-type#type
* component[cnv-type].valueCodeableConcept = $bwhc-cnv-type#high-level-gain "high-level-gain"
* component[copy-number].code = $LNC#82155-3 "Total Copy Number"
* component[copy-number].valueQuantity.value = 7
* component[copy-number].valueQuantity.system = $UCUM

