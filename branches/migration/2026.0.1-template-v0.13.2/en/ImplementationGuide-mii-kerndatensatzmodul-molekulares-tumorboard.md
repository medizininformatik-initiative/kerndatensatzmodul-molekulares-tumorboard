# MII ImplementationGuide Resource - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* **MII ImplementationGuide Resource**

## MII ImplementationGuide Resource

This ImplementationGuide resource defines the technical details of this publication, including dependencies and publishing parameters.

* [XML](../ImplementationGuide-mii-kerndatensatzmodul-molekulares-tumorboard.xml)
* [JSON](../ImplementationGuide-mii-kerndatensatzmodul-molekulares-tumorboard.json)

### Cross Version Analysis

This is an R4 IG that is not compatible with R4B" because: 

* [Bundle/mii-exa-mtb-kim-musterperson-bundle](Bundle-mii-exa-mtb-kim-musterperson-bundle.md) has type EvidenceVariable
* [EvidenceVariable/mii-exa-mtb-study-cldn6-evidence-variable-0](EvidenceVariable-mii-exa-mtb-study-cldn6-evidence-variable-0.md) has type EvidenceVariable
* [EvidenceVariable/mii-exa-mtb-study-cldn6-evidence-variable-1](EvidenceVariable-mii-exa-mtb-study-cldn6-evidence-variable-1.md) has type EvidenceVariable

### IG Dependencies

This IG contains the following dependencies on other IGs.





































> **Where the versions come from.** Every package in the table is pinned directly in [`sushi-config.yaml`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/blob/main/sushi-config.yaml) (`dependencies:`) — including `hl7.terminology.r4` (THO) and `hl7.fhir.uv.extensions.r4`, and those two deliberately so: the IG Publisher's [automatic-packages rule](https://build.fhir.org/ig/FHIR/ig-guidance/versions.html#automatic-packages) consults only this guide's **own** dependency list, so without a direct pin every build would silently inject the latest THO/extensions release — a version pinned by the MII meta package alone cannot control the build (verified in the publisher source at the pinned release). A weekly check warns when these two pins drift from what the pinned meta package ships, and the exact versions a concrete build used are recorded in its `qa-versions.json` output.

### Global Profiles

This IG declares the following global profiles — profiles that apply to every instance of their resource type exchanged under this guide. An empty table means this module declares none.

*There are no Global profiles defined*

### Copyrights

This publication includes IP covered under the following statements.

* BfArM - Bundesinstitut für Arzneimittel und Medizinprodukte

* [ATC](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=http://fhir.de/CodeSystem/bfarm/atc): [Bundle/mii-exa-mtb-kim-musterperson-bundle](Bundle-mii-exa-mtb-kim-musterperson-bundle.md), [MII_PR_MTB_Systemische_Therapie_Medication_Statement](StructureDefinition-mii-pr-mtb-systemtherapie-medication-statement.md)... Show 32 more, [MII_PR_MTB_Therapieempfehlung](StructureDefinition-mii-pr-mtb-therapieempfehlung.md), [MedicationRequest/mii-exa-mtb-medication-request-carboplatin](MedicationRequest-mii-exa-mtb-medication-request-carboplatin.md), [MedicationRequest/mii-exa-mtb-medication-request-mirvetuximab](MedicationRequest-mii-exa-mtb-medication-request-mirvetuximab.md), [MedicationRequest/mii-exa-mtb-medication-request-trastuzumab-deruxtecan](MedicationRequest-mii-exa-mtb-medication-request-trastuzumab-deruxtecan.md), [MedicationRequest/mii-exa-mtb-therapieempfehlung-dabrafenib](MedicationRequest-mii-exa-mtb-therapieempfehlung-dabrafenib.md), [MedicationRequest/mii-exa-mtb-therapieempfehlung-trametinib](MedicationRequest-mii-exa-mtb-therapieempfehlung-trametinib.md), [MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-1](MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-1.md), [MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-2](MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-2.md), [MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-3](MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-3.md), [MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-4](MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-4.md), [MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-5](MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-5.md), [MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-6](MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-6.md), [MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-Beispiel-1](MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-Beispiel-1.md), [MedicationStatement/MTBChemo1MedicationStatement1-1](MedicationStatement-MTBChemo1MedicationStatement1-1.md), [MedicationStatement/MTBChemo1MedicationStatement1-2](MedicationStatement-MTBChemo1MedicationStatement1-2.md), [MedicationStatement/MTBChemo1MedicationStatement2-1](MedicationStatement-MTBChemo1MedicationStatement2-1.md), [MedicationStatement/MTBChemo1MedicationStatement2-2](MedicationStatement-MTBChemo1MedicationStatement2-2.md), [MedicationStatement/MTBChemo1MedicationStatement3-1](MedicationStatement-MTBChemo1MedicationStatement3-1.md), [MedicationStatement/MTBChemo1MedicationStatement3-2](MedicationStatement-MTBChemo1MedicationStatement3-2.md), [MedicationStatement/MTBChemo1MedicationStatement4-1](MedicationStatement-MTBChemo1MedicationStatement4-1.md), [MedicationStatement/MTBChemo1MedicationStatement4-2](MedicationStatement-MTBChemo1MedicationStatement4-2.md), [MedicationStatement/MTBChemo1MedicationStatement5-1](MedicationStatement-MTBChemo1MedicationStatement5-1.md), [MedicationStatement/MTBChemo1MedicationStatement5-2](MedicationStatement-MTBChemo1MedicationStatement5-2.md), [MedicationStatement/MTBChemo1MedicationStatement6-1](MedicationStatement-MTBChemo1MedicationStatement6-1.md), [MedicationStatement/MTBChemo1MedicationStatement6-2](MedicationStatement-MTBChemo1MedicationStatement6-2.md), [MedicationStatement/MTBChemo2MedicationStatement1](MedicationStatement-MTBChemo2MedicationStatement1.md), [MedicationStatement/MTBChemo2MedicationStatement2](MedicationStatement-MTBChemo2MedicationStatement2.md), [MedicationStatement/MTBChemo2MedicationStatement3](MedicationStatement-MTBChemo2MedicationStatement3.md), [MedicationStatement/MTBChemo2MedicationStatement4](MedicationStatement-MTBChemo2MedicationStatement4.md), [MedicationStatement/MTBChemo2MedicationStatement5](MedicationStatement-MTBChemo2MedicationStatement5.md), [MedicationStatement/MTBChemo2MedicationStatement6](MedicationStatement-MTBChemo2MedicationStatement6.md) and [Observation/mii-exa-mtb-kim-musterperson-TherapeutischeImplikation-PIK3R1](Observation-mii-exa-mtb-kim-musterperson-TherapeutischeImplikation-PIK3R1.md)


* BfArM 1994 - 2024 - Die Erstellung erfolgt unter Verwendung der maschinenlesbaren Fassung des Bundesinstituts für Arzneimittel und Medizinprodukte (BfArM)

* [Alpha-ID](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=http://fhir.de/CodeSystem/bfarm/alpha-id): [MII_PR_MTB_Diagnose_Primaertumor](StructureDefinition-mii-pr-mtb-diagnose-primaertumor.md)
* [OPS](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=http://fhir.de/CodeSystem/bfarm/ops): [Bundle/mii-exa-mtb-kim-musterperson-bundle](Bundle-mii-exa-mtb-kim-musterperson-bundle.md), [MII_PR_MTB_Systemische_Therapie](StructureDefinition-mii-pr-mtb-systemische-therapie.md)... Show 17 more, [MII_PR_MTB_Systemische_Vortherapie](StructureDefinition-mii-pr-mtb-systemische-vortherapie.md), [Procedure/MII-EXA-MTB-Systemische-Therapie-1](Procedure-MII-EXA-MTB-Systemische-Therapie-1.md), [Procedure/MII-EXA-MTB-Systemtherapie-Beispiel-1](Procedure-MII-EXA-MTB-Systemtherapie-Beispiel-1.md), [Procedure/PatientKimMusterperson-Procedure-1](Procedure-PatientKimMusterperson-Procedure-1.md), [Procedure/PatientKimMusterperson-Procedure-2](Procedure-PatientKimMusterperson-Procedure-2.md), [Procedure/PatientKimMusterperson-Procedure-3](Procedure-PatientKimMusterperson-Procedure-3.md), [Procedure/PatientKimMusterperson-Procedure-4](Procedure-PatientKimMusterperson-Procedure-4.md), [Procedure/PatientKimMusterperson-Procedure-4a](Procedure-PatientKimMusterperson-Procedure-4a.md), [Procedure/PatientKimMusterperson-Procedure-4b](Procedure-PatientKimMusterperson-Procedure-4b.md), [Procedure/PatientKimMusterperson-Procedure-4c](Procedure-PatientKimMusterperson-Procedure-4c.md), [Procedure/PatientKimMusterperson-Procedure-4d](Procedure-PatientKimMusterperson-Procedure-4d.md), [Procedure/PatientKimMusterperson-Procedure-5](Procedure-PatientKimMusterperson-Procedure-5.md), [Procedure/PatientKimMusterperson-Procedure-6](Procedure-PatientKimMusterperson-Procedure-6.md), [Procedure/PatientKimMusterperson-Procedure-7](Procedure-PatientKimMusterperson-Procedure-7.md), [Procedure/PatientKimMusterperson-SystemicTherapy-1](Procedure-PatientKimMusterperson-SystemicTherapy-1.md), [Procedure/PatientKimMusterperson-SystemicTherapy-2](Procedure-PatientKimMusterperson-SystemicTherapy-2.md) and [Procedure/PatientKimMusterperson-SystemicTherapy-3](Procedure-PatientKimMusterperson-SystemicTherapy-3.md)


* IFA GmbH

* [PZN](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=http://fhir.de/CodeSystem/ifa/pzn): [MII_PR_MTB_Systemische_Therapie_Medication_Statement](StructureDefinition-mii-pr-mtb-systemtherapie-medication-statement.md) and [MII_PR_MTB_Therapieempfehlung](StructureDefinition-mii-pr-mtb-therapieempfehlung.md)


* ISO maintains the copyright on the country codes, and controls its use carefully. For further details see the ISO 3166 web page: [https://www.iso.org/iso-3166-country-codes.html](https://www.iso.org/iso-3166-country-codes.html)

* [ISO 3166-1 Codes for the representation of names of countries and their subdivisions — Part 1: Country code](http://terminology.hl7.org/6.5.0/CodeSystem-ISO3166Part1.html): [DNPM_LM_CarePlan](StructureDefinition-dnpm-lm-care-plan.md), [DNPM_LM_NGSReport](StructureDefinition-dnpm-lm-ngs-report.md)... Show 117 more, [DNPM_LM_PatientRecord](StructureDefinition-dnpm-lm-patient-record.md), [MII CM MTB Therapiestatusgrund SNOMED CT Mapping](ConceptMap-mii-cm-mtb-therapiestatusgrund-sct.md), [MII CM MTB Therapiestatusgrund oBDS Mapping](ConceptMap-mii-cm-mtb-therapiestatusgrund-obds.md), [MII_CPS_MTB_CapabilityStatement](CapabilityStatement-mii-cps-mtb-capabilitystatement.md), [MII_CS_MTB_Antrag_Kostenuebernahme_Antragsstadium](CodeSystem-mii-cs-mtb-antrag-kostenuebernahme-antragsstadium.md), [MII_CS_MTB_Antwort_Kostenuebernahme_Ablehnungsgrund](CodeSystem-mii-cs-mtb-antwort-kostenuebernahme-ablehnungsgrund.md), [MII_CS_MTB_Antwort_Kostenuebernahme_Entscheidung](CodeSystem-mii-cs-mtb-antwort-kostenuebernahme-entscheidung.md), [MII_CS_MTB_AuftragBegruendung](CodeSystem-mii-cs-mtb-auftrag-begruendung.md), [MII_CS_MTB_BestimmungsmethodeTumorzellgehalt](CodeSystem-mii-cs-mtb-bestimmungsmethode-tumorzellgehalt.md), [MII_CS_MTB_Dosisdichte](CodeSystem-mii-cs-mtb-dosisdichte.md), [MII_CS_MTB_Empfehlung_Evidenzgrad](CodeSystem-mii-cs-mtb-empfehlung-evidenzgrad-nct.md), [MII_CS_MTB_Empfehlung_EvidenzgradZusatzverweis](CodeSystem-mii-cs-mtb-empfehlung-evidenzgrad-zusatzverweis.md), [MII_CS_MTB_Empfehlung_StatusBegruendung](CodeSystem-mii-cs-mtb-empfehlung-status-begruendung.md), [MII_CS_MTB_Follow_Up_Status](CodeSystem-mii-cs-mtb-follow-up-status.md), [MII_CS_MTB_GenomicStudyAnalysis_DeviceFunction](CodeSystem-mii-cs-mtb-genomicanalysis-devicefunction.md), [MII_CS_MTB_Genomic_Analysis_Method_Type](CodeSystem-mii-cs-mtb-genomic-analysis-method-type.md), [MII_CS_MTB_Leitlinienbehandlung_Status](CodeSystem-mii-cs-mtb-leitlinienbehandlung-status.md), [MII_CS_MTB_MSI_Method_Type](CodeSystem-mii-cs-mtb-msi-method-type.md), [MII_CS_MTB_Molekulare_Biomarker](CodeSystem-mii-cs-mtb-molekulare-biomarker.md), [MII_CS_MTB_Response_Befund_Beurteilung](CodeSystem-mii-cs-mtb-response-befund-beurteilung.md), [MII_CS_MTB_Response_Befund_Beurteilungsmethode](CodeSystem-mii-cs-mtb-response-befund-beurteilungsmethode.md), [MII_CS_MTB_Therapiestatusgrund](CodeSystem-mii-cs-mtb-therapiestatusgrund.md), [MII_CS_MTB_Zulassungsstatus](CodeSystem-mii-cs-mtb-zulassungsstatus.md), [MII_EX_MTB_Antrag_Kostenuebernahme_Antragsstadium](StructureDefinition-mii-ex-mtb-antrag-kostenuebernahme-antragsstadium.md), [MII_EX_MTB_Antwort_Kostenuebernahme_Ablehnungsgrund](StructureDefinition-mii-ex-mtb-antwort-kostenuebernahme-ablehnungsgrund.md), [MII_EX_MTB_Antwort_Kostenuebernahme_Entscheidung](StructureDefinition-mii-ex-mtb-antwort-kostenuebernahme-entscheidung.md), [MII_EX_MTB_Diagnose](StructureDefinition-mii-ex-mtb-diagnose.md), [MII_EX_MTB_Empfehlung_Evidenzgraduierung](StructureDefinition-mii-ex-mtb-empfehlung-evidenzgraduierung.md), [MII_EX_MTB_Empfehlung_Prioritaet](StructureDefinition-mii-ex-mtb-empfehlung-prioritaet.md), [MII_EX_MTB_Empfehlung_Publikation](StructureDefinition-mii-ex-mtb-empfehlung-publikation.md), [MII_EX_MTB_GenomicStudyAnalysis_QC](StructureDefinition-mii-ex-mtb-genomic-study-analysis-qc.md), [MII_EX_MTB_Leitlinie_Dokumentation](StructureDefinition-mii-ex-mtb-leitlinie-dokumentation.md), [MII_EX_MTB_Leitlinienbehandlung_Status](StructureDefinition-mii-ex-mtb-leitlinienbehandlung-status.md), [MII_EX_MTB_NGS_Bericht_Genomic_Study](StructureDefinition-mii-ex-mtb-ngs-bericht-genomic-study.md), [MII_IG_MTB_DE](index.md), [MII_LM_MTB](StructureDefinition-mii-lm-mtb.md), [MII_NS_MTB_NCT](NamingSystem-mii-ns-mtb-nct.md), [MII_NS_Studie_DRKS](NamingSystem-mii-ns-studie-drks.md), [MII_NS_Studie_EudraCT](NamingSystem-mii-ns-studie-eudract.md), [MII_PR_MTB_Antrag_Kostenuebernahme](StructureDefinition-mii-pr-mtb-antrag-kostenuebernahme.md), [MII_PR_MTB_Antwort_Kostenuebernahme](StructureDefinition-mii-pr-mtb-antwort-kostenuebernahme.md), [MII_PR_MTB_BIOMARKER_HER2_STATUS](StructureDefinition-mii-pr-mtb-biomarker-her2-status.md), [MII_PR_MTB_BRCAness](StructureDefinition-mii-pr-mtb-brcaness.md), [MII_PR_MTB_Behandlungsepisode](StructureDefinition-mii-pr-mtb-behandlungsepisode.md), [MII_PR_MTB_Biomarker_InSituHybridization](StructureDefinition-mii-pr-mtb-insituhybridization.md), [MII_PR_MTB_Biopsie_Auftrag](StructureDefinition-mii-pr-mtb-biopsie-auftrag.md), [MII_PR_MTB_Consent_Given](StructureDefinition-mii-pr-mtb-consent-given.md), [MII_PR_MTB_Copy_Number_Variant](StructureDefinition-mii-pr-mtb-copy-number-variant.md), [MII_PR_MTB_DNA_Fusion](StructureDefinition-mii-pr-mtb-dna-fusion.md), [MII_PR_MTB_Diagnose_Primaertumor](StructureDefinition-mii-pr-mtb-diagnose-primaertumor.md), [MII_PR_MTB_Diagnostische_Implikation](StructureDefinition-mii-pr-mtb-diagnostische-implikation.md), [MII_PR_MTB_Einfache_Variante](StructureDefinition-mii-pr-mtb-einfache-variante.md), [MII_PR_MTB_Follow_Up_ClinicalImpression](StructureDefinition-mii-pr-mtb-follow-up-clinicalimpression.md), [MII_PR_MTB_Genomic_Study](StructureDefinition-mii-pr-mtb-genomic-study.md), [MII_PR_MTB_Genomic_Study_Analysis](StructureDefinition-mii-pr-mtb-genomic-study-analysis.md), [MII_PR_MTB_Genomic_Study_Device](StructureDefinition-genomic-study-device.md), [MII_PR_MTB_HRD_Score](StructureDefinition-mii-pr-mtb-hrd-score.md), [MII_PR_MTB_Histologie_Evaluation_Auftrag](StructureDefinition-mii-pr-mtb-histologie-evaluation-auftrag.md), [MII_PR_MTB_Humangenetische_Beratung_Auftrag](StructureDefinition-mii-pr-mtb-humangenetische-beratung-auftrag.md), [MII_PR_MTB_IMMUNOHISTOCHEMISTRY_HER2](StructureDefinition-mii-pr-mtb-immunohistochemistry-her2.md), [MII_PR_MTB_INSITUHYBRIDIZATION_HER2](StructureDefinition-mii-pr-mtb-insituhybridization-her2.md), [MII_PR_MTB_Immunohistochemistry](StructureDefinition-mii-pr-mtb-immunohistochemistry.md), [MII_PR_MTB_Immunohistochemistry_MMR](StructureDefinition-mii-pr-mtb-immunohistochemistry-mmr.md), [MII_PR_MTB_Immunohistochemistry_MSI](StructureDefinition-mii-pr-mtb-msi.md), [MII_PR_MTB_Immunohistochemistry_PDL1](StructureDefinition-mii-pr-mtb-immunohistochemistry-pdl1.md), [MII_PR_MTB_Immunohistochemistry_Phosphorylation](StructureDefinition-mii-pr-mtb-immunohistochemistry-phosphorylation.md), [MII_PR_MTB_Mikrosatelliteninstabilitaet](StructureDefinition-mii-pr-mtb-mikrosatelliteninstabilitaet.md), [MII_PR_MTB_Molecular_Pathology_Report](StructureDefinition-mii-pr-mtb-molecular-pathology-report.md), [MII_PR_MTB_Molekularer_Biomarker](StructureDefinition-mii-pr-mtb-molekularer-biomarker.md), [MII_PR_MTB_Mutationslast](StructureDefinition-mii-pr-mtb-mutationslast.md), [MII_PR_MTB_NGS_Bericht](StructureDefinition-mii-pr-mtb-ngs-bericht.md), [MII_PR_MTB_Oncotree](StructureDefinition-mii-pr-mtb-oncotree.md), [MII_PR_MTB_Ploidie](StructureDefinition-mii-pr-mtb-ploidie.md), [MII_PR_MTB_RNA_Fusion](StructureDefinition-mii-pr-mtb-rna-fusion.md), [MII_PR_MTB_RNA_Seq](StructureDefinition-mii-pr-mtb-rna-seq.md), [MII_PR_MTB_Response_Befund](StructureDefinition-mii-pr-mtb-response-befund.md), [MII_PR_MTB_Studie](StructureDefinition-mii-pr-mtb-studie.md), [MII_PR_MTB_Studieneinschluss_Anfrage](StructureDefinition-mii-pr-mtb-studieneinschluss-anfrage.md), [MII_PR_MTB_Systemische_Therapie](StructureDefinition-mii-pr-mtb-systemische-therapie.md), [MII_PR_MTB_Systemische_Therapie_Medication_Statement](StructureDefinition-mii-pr-mtb-systemtherapie-medication-statement.md), [MII_PR_MTB_Systemische_Vortherapie](StructureDefinition-mii-pr-mtb-systemische-vortherapie.md), [MII_PR_MTB_Therapeutische_Implikation](StructureDefinition-mii-pr-mtb-therapeutische-implikation.md), [MII_PR_MTB_Therapieempfehlung](StructureDefinition-mii-pr-mtb-therapieempfehlung.md), [MII_PR_MTB_Therapieempfehlung_Kombination](StructureDefinition-mii-pr-mtb-therapieempfehlung-kombination.md), [MII_PR_MTB_Therapieplan](StructureDefinition-mii-pr-mtb-therapieplan.md), [MII_PR_MTB_Tumorausbreitung](StructureDefinition-mii-pr-mtb-tumorausbreitung.md), [MII_PR_MTB_Tumorzellgehalt](StructureDefinition-mii-pr-mtb-tumorzellgehalt.md), [MII_PR_MTB_WHO_Grad_Tumor_ZNS](StructureDefinition-mii-pr-mtb-who-grad-tumor-zns.md), [MII_VS_MTB_Antrag_Kostenuebernahme_Antragsstadium](ValueSet-mii-vs-mtb-antrag-kostenuebernahme-antragsstadium.md), [MII_VS_MTB_Antrag_Kostenuebernahme_Type](ValueSet-mii-vs-mtb-antrag-kostenuebernahme.md), [MII_VS_MTB_Antwort_Kostenuebernahme_Ablehnungsgrund](ValueSet-mii-vs-mtb-antwort-kostenuebernahme-ablehnungsgrund.md), [MII_VS_MTB_Antwort_Kostenuebernahme_Entscheidung](ValueSet-mii-vs-mtb-antwort-kostenuebernahme-entscheidung.md), [MII_VS_MTB_AuftragBegruendung](ValueSet-mii-vs-mtb-auftrag-begruendung.md), [MII_VS_MTB_BestimmungsmethodeTumorzellgehalt](ValueSet-mii-vs-mtb-bestimmungsmethode-tumorzellgehalt.md), [MII_VS_MTB_Beurteilungsmethode](ValueSet-mii-vs-mtb-beurteilungsmethode-response-befund.md), [MII_VS_MTB_Dosisdichte](ValueSet-mii-vs-mtb-dosisdichte.md), [MII_VS_MTB_Empfehlung_Evidenzgrad](ValueSet-mii-vs-mtb-empfehlung-evidenzgrad.md), [MII_VS_MTB_Empfehlung_EvidenzgradZusatzverweis](ValueSet-mii-vs-mtb-empfehlung-evidenzgrad-zusatzverweis.md), [MII_VS_MTB_Empfehlung_StatusBegruendung](ValueSet-mii-vs-mtb-empfehlung-status-begruendung.md), [MII_VS_MTB_Follow_Up_Grund_Nicht_Umsetzung](ValueSet-mii-vs-mtb-follow-grund-nicht-umsetzung.md), [MII_VS_MTB_Follow_Up_Status](ValueSet-mii-vs-mtb-follow-up-status.md), [MII_VS_MTB_Genomic_Analysis_Method_Type](ValueSet-mii-vs-mtb-genomic-analysis-method-type.md), [MII_VS_MTB_ISH_Method](ValueSet-mii-vs-mtb-ish-method.md), [MII_VS_MTB_Immunhistochemistry_Specific_Codes](ValueSet-mii-vs-mtb-immunohistochemistry-specific-codes.md), [MII_VS_MTB_Leitlinienbehandlung_Status](ValueSet-mii-vs-mtb-leitlinienbehandlung-status.md), [MII_VS_MTB_MMR_Expression](ValueSet-mii-vs-mtb-mmr-expression.md), [MII_VS_MTB_MMR_Proficiency](ValueSet-mii-vs-mtb-mmr-proficiency.md), [MII_VS_MTB_MSI_Method_Type](ValueSet-mii-vs-mtb-msi-method-type.md), [MII_VS_MTB_Microsatellite_Instability](ValueSet-mii-vs-mtb-msi.md), [MII_VS_MTB_Molekulare_Biomarker](ValueSet-mii-vs-mtb-molekulare-biomarker.md), [MII_VS_MTB_OncoTree](ValueSet-mii-vs-mtb-oncotree.md), [MII_VS_MTB_Response_Befund_Beurteilung](ValueSet-mii-vs-mtb-response-befund-beurteilung.md), [MII_VS_MTB_Systemische_Therapie_Status](ValueSet-mii-vs-mtb-systemische-therapie-status.md), [MII_VS_MTB_Therapiestatusgrund](ValueSet-mii-vs-mtb-therapiestatusgrund.md), [MII_VS_MTB_Tumorausbreitung](ValueSet-mii-vs-mtb-tumorausbreitung.md), [MII_VS_MTB_WHO_Grad_Tumor_ZNS](ValueSet-mii-vs-mtb-who-grad-tumor-zns.md) and [MII_VS_MTB_Zulassungsstatus](ValueSet-mii-vs-mtb-zulassungsstatus.md)


* The Sequence Ontology: A tool for the unification of genome annotations. Eilbeck K., Lewis S.E., Mungall C.J., Yandell M., Stein L., Durbin R., Ashburner M. [Genome Biology (2005) 6:R44](http://genomebiology.com/2005/6/5/R44) Please also include the version of SO used.Sequence Ontology data and data products are licensed under the [Creative Commons Attribution 4.0 Unported License](https://creativecommons.org/licenses/by/4.0/legalcode) .

* [Sequence Ontology](http://terminology.hl7.org/6.5.0/CodeSystem-SO.html): [Bundle/mii-exa-mtb-kim-musterperson-bundle](Bundle-mii-exa-mtb-kim-musterperson-bundle.md), [Observation/MII-EXA-MTB-RNA-Fusion-1](Observation-MII-EXA-MTB-RNA-Fusion-1.md) and [Procedure/mii-exa-mtb-kim-musterperson-genomic-study-analysis-1](Procedure-mii-exa-mtb-kim-musterperson-genomic-study-analysis-1.md)


* The UCUM codes, UCUM table (regardless of format), and UCUM Specification are copyright 1999-2009, Regenstrief Institute, Inc. and the Unified Codes for Units of Measures (UCUM) Organization. All rights reserved. [https://ucum.org/trac/wiki/TermsOfUse](https://ucum.org/trac/wiki/TermsOfUse)

* [Unified Code for Units of Measure (UCUM)](http://hl7.org/fhir/uv/xver-r5.r4/0.1.0/CodeSystem-v3-ucum.html): [Bundle/mii-exa-mtb-kim-musterperson-bundle](Bundle-mii-exa-mtb-kim-musterperson-bundle.md), [Group/mii-exa-mtb-study-cldn6-eligibility-criteria](Group-mii-exa-mtb-study-cldn6-eligibility-criteria.md)... Show 45 more, [MII_PR_MTB_Therapieempfehlung](StructureDefinition-mii-pr-mtb-therapieempfehlung.md), [MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-1](MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-1.md), [MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-2](MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-2.md), [MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-3](MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-3.md), [MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-4](MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-4.md), [MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-5](MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-5.md), [MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-6](MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-6.md), [MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-Beispiel-1](MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-Beispiel-1.md), [MedicationStatement/MTBChemo1MedicationStatement1-1](MedicationStatement-MTBChemo1MedicationStatement1-1.md), [MedicationStatement/MTBChemo1MedicationStatement1-2](MedicationStatement-MTBChemo1MedicationStatement1-2.md), [MedicationStatement/MTBChemo1MedicationStatement2-1](MedicationStatement-MTBChemo1MedicationStatement2-1.md), [MedicationStatement/MTBChemo1MedicationStatement2-2](MedicationStatement-MTBChemo1MedicationStatement2-2.md), [MedicationStatement/MTBChemo1MedicationStatement3-1](MedicationStatement-MTBChemo1MedicationStatement3-1.md), [MedicationStatement/MTBChemo1MedicationStatement3-2](MedicationStatement-MTBChemo1MedicationStatement3-2.md), [MedicationStatement/MTBChemo1MedicationStatement4-1](MedicationStatement-MTBChemo1MedicationStatement4-1.md), [MedicationStatement/MTBChemo1MedicationStatement4-2](MedicationStatement-MTBChemo1MedicationStatement4-2.md), [MedicationStatement/MTBChemo1MedicationStatement5-1](MedicationStatement-MTBChemo1MedicationStatement5-1.md), [MedicationStatement/MTBChemo1MedicationStatement5-2](MedicationStatement-MTBChemo1MedicationStatement5-2.md), [MedicationStatement/MTBChemo1MedicationStatement6-1](MedicationStatement-MTBChemo1MedicationStatement6-1.md), [MedicationStatement/MTBChemo1MedicationStatement6-2](MedicationStatement-MTBChemo1MedicationStatement6-2.md), [MedicationStatement/MTBChemo2MedicationStatement1](MedicationStatement-MTBChemo2MedicationStatement1.md), [MedicationStatement/MTBChemo2MedicationStatement2](MedicationStatement-MTBChemo2MedicationStatement2.md), [MedicationStatement/MTBChemo2MedicationStatement3](MedicationStatement-MTBChemo2MedicationStatement3.md), [MedicationStatement/MTBChemo2MedicationStatement4](MedicationStatement-MTBChemo2MedicationStatement4.md), [MedicationStatement/MTBChemo2MedicationStatement5](MedicationStatement-MTBChemo2MedicationStatement5.md), [MedicationStatement/MTBChemo2MedicationStatement6](MedicationStatement-MTBChemo2MedicationStatement6.md), [Observation/MII-EXA-MTB-Copy-Number-Variant-1](Observation-MII-EXA-MTB-Copy-Number-Variant-1.md), [Observation/MII-EXA-MTB-DNA-Fusion-1](Observation-MII-EXA-MTB-DNA-Fusion-1.md), [Observation/MII-EXA-MTB-Einfache-Variante](Observation-MII-EXA-MTB-Einfache-Variante.md), [Observation/MII-EXA-MTB-Mikrosatelliteninstabilitaet-1](Observation-MII-EXA-MTB-Mikrosatelliteninstabilitaet-1.md), [Observation/MII-EXA-MTB-Mutationslast-1](Observation-MII-EXA-MTB-Mutationslast-1.md), [Observation/MII-EXA-MTB-RNA-Fusion-1](Observation-MII-EXA-MTB-RNA-Fusion-1.md), [Observation/MTBObservationCA125-1](Observation-MTBObservationCA125-1.md), [Observation/MTBObservationCA125-2](Observation-MTBObservationCA125-2.md), [Observation/MTBObservationCA125-3](Observation-MTBObservationCA125-3.md), [Observation/MTBObservationCA125-4](Observation-MTBObservationCA125-4.md), [Observation/MTBObservationCA125-5](Observation-MTBObservationCA125-5.md), [Observation/MTBObservationCA125-6](Observation-MTBObservationCA125-6.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-0b-Folat-Ra](Observation-PatientKimMusterperson-MolecularPathologyObservation-0b-Folat-Ra.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-4-ER](Observation-PatientKimMusterperson-MolecularPathologyObservation-4-ER.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-5-PR](Observation-PatientKimMusterperson-MolecularPathologyObservation-5-PR.md), [Observation/PatientKimMusterperson-Observation-16](Observation-PatientKimMusterperson-Observation-16.md), [Observation/mii-exa-mtb-kim-musterperson-CNVariante-CCNE1](Observation-mii-exa-mtb-kim-musterperson-CNVariante-CCNE1.md), [Observation/mii-exa-mtb-kim-tumorzellgehalt-aszites](Observation-mii-exa-mtb-kim-tumorzellgehalt-aszites.md) and [Specimen/PatientKimMusterperson-Specimen-1](Specimen-PatientKimMusterperson-Specimen-1.md)


* This material contains content from [LOINC](http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the [license](http://loinc.org/license). LOINC® is a registered United States trademark of Regenstrief Institute, Inc.

* [LOINC](http://terminology.hl7.org/6.5.0/CodeSystem-v3-loinc.html): [Bundle/mii-exa-mtb-kim-musterperson-bundle](Bundle-mii-exa-mtb-kim-musterperson-bundle.md), [ClinicalImpression/mii-exa-mtb-behandlungsepisode-1](ClinicalImpression-mii-exa-mtb-behandlungsepisode-1.md)... Show 68 more, [ClinicalImpression/mii-exa-mtb-kim-musterperson-behandlungsepisode](ClinicalImpression-mii-exa-mtb-kim-musterperson-behandlungsepisode.md), [DiagnosticReport/PatientKimMusterperson-MolecularPathologyReport-1](DiagnosticReport-PatientKimMusterperson-MolecularPathologyReport-1.md), [DiagnosticReport/mii-exa-mtb-kim-musterperson-ngs-bericht](DiagnosticReport-mii-exa-mtb-kim-musterperson-ngs-bericht.md), [MII_PR_MTB_BIOMARKER_HER2_STATUS](StructureDefinition-mii-pr-mtb-biomarker-her2-status.md), [MII_PR_MTB_BRCAness](StructureDefinition-mii-pr-mtb-brcaness.md), [MII_PR_MTB_Behandlungsepisode](StructureDefinition-mii-pr-mtb-behandlungsepisode.md), [MII_PR_MTB_Biomarker_InSituHybridization](StructureDefinition-mii-pr-mtb-insituhybridization.md), [MII_PR_MTB_Consent_Given](StructureDefinition-mii-pr-mtb-consent-given.md), [MII_PR_MTB_Copy_Number_Variant](StructureDefinition-mii-pr-mtb-copy-number-variant.md), [MII_PR_MTB_DNA_Fusion](StructureDefinition-mii-pr-mtb-dna-fusion.md), [MII_PR_MTB_Diagnostische_Implikation](StructureDefinition-mii-pr-mtb-diagnostische-implikation.md), [MII_PR_MTB_Einfache_Variante](StructureDefinition-mii-pr-mtb-einfache-variante.md), [MII_PR_MTB_HRD_Score](StructureDefinition-mii-pr-mtb-hrd-score.md), [MII_PR_MTB_IMMUNOHISTOCHEMISTRY_HER2](StructureDefinition-mii-pr-mtb-immunohistochemistry-her2.md), [MII_PR_MTB_INSITUHYBRIDIZATION_HER2](StructureDefinition-mii-pr-mtb-insituhybridization-her2.md), [MII_PR_MTB_Immunohistochemistry](StructureDefinition-mii-pr-mtb-immunohistochemistry.md), [MII_PR_MTB_Immunohistochemistry_MMR](StructureDefinition-mii-pr-mtb-immunohistochemistry-mmr.md), [MII_PR_MTB_Immunohistochemistry_MSI](StructureDefinition-mii-pr-mtb-msi.md), [MII_PR_MTB_Immunohistochemistry_PDL1](StructureDefinition-mii-pr-mtb-immunohistochemistry-pdl1.md), [MII_PR_MTB_Immunohistochemistry_Phosphorylation](StructureDefinition-mii-pr-mtb-immunohistochemistry-phosphorylation.md), [MII_PR_MTB_Mikrosatelliteninstabilitaet](StructureDefinition-mii-pr-mtb-mikrosatelliteninstabilitaet.md), [MII_PR_MTB_Molecular_Pathology_Report](StructureDefinition-mii-pr-mtb-molecular-pathology-report.md), [MII_PR_MTB_Molekularer_Biomarker](StructureDefinition-mii-pr-mtb-molekularer-biomarker.md), [MII_PR_MTB_Mutationslast](StructureDefinition-mii-pr-mtb-mutationslast.md), [MII_PR_MTB_Ploidie](StructureDefinition-mii-pr-mtb-ploidie.md), [MII_PR_MTB_RNA_Fusion](StructureDefinition-mii-pr-mtb-rna-fusion.md), [MII_PR_MTB_RNA_Seq](StructureDefinition-mii-pr-mtb-rna-seq.md), [MII_PR_MTB_Therapeutische_Implikation](StructureDefinition-mii-pr-mtb-therapeutische-implikation.md), [MII_PR_MTB_Tumorzellgehalt](StructureDefinition-mii-pr-mtb-tumorzellgehalt.md), [MII_VS_MTB_Immunhistochemistry_Specific_Codes](ValueSet-mii-vs-mtb-immunohistochemistry-specific-codes.md), [MII_VS_MTB_MMR_Expression](ValueSet-mii-vs-mtb-mmr-expression.md), [MII_VS_MTB_Microsatellite_Instability](ValueSet-mii-vs-mtb-msi.md), [Observation/MII-EXA-MTB-BRCAness-1](Observation-MII-EXA-MTB-BRCAness-1.md), [Observation/MII-EXA-MTB-Copy-Number-Variant-1](Observation-MII-EXA-MTB-Copy-Number-Variant-1.md), [Observation/MII-EXA-MTB-DNA-Fusion-1](Observation-MII-EXA-MTB-DNA-Fusion-1.md), [Observation/MII-EXA-MTB-Diagnostische-Implikation-1](Observation-MII-EXA-MTB-Diagnostische-Implikation-1.md), [Observation/MII-EXA-MTB-Einfache-Variante](Observation-MII-EXA-MTB-Einfache-Variante.md), [Observation/MII-EXA-MTB-HRD-Score-1](Observation-MII-EXA-MTB-HRD-Score-1.md), [Observation/MII-EXA-MTB-Mikrosatelliteninstabilitaet-1](Observation-MII-EXA-MTB-Mikrosatelliteninstabilitaet-1.md), [Observation/MII-EXA-MTB-Mutationslast-1](Observation-MII-EXA-MTB-Mutationslast-1.md), [Observation/MII-EXA-MTB-RNA-Fusion-1](Observation-MII-EXA-MTB-RNA-Fusion-1.md), [Observation/MTBObservationCA125-1](Observation-MTBObservationCA125-1.md), [Observation/MTBObservationCA125-2](Observation-MTBObservationCA125-2.md), [Observation/MTBObservationCA125-3](Observation-MTBObservationCA125-3.md), [Observation/MTBObservationCA125-4](Observation-MTBObservationCA125-4.md), [Observation/MTBObservationCA125-5](Observation-MTBObservationCA125-5.md), [Observation/MTBObservationCA125-6](Observation-MTBObservationCA125-6.md), [Observation/PatientKimMusterperson-MolecularPathologyInterpret-0a-Her2neu](Observation-PatientKimMusterperson-MolecularPathologyInterpret-0a-Her2neu.md), [Observation/PatientKimMusterperson-MolecularPathologyObs-FISH-0a-Her2neu-](Observation-PatientKimMusterperson-MolecularPathologyObs-FISH-0a-Her2neu-.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-0a-Her2neu](Observation-PatientKimMusterperson-MolecularPathologyObservation-0a-Her2neu.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-0b-Folat-Ra](Observation-PatientKimMusterperson-MolecularPathologyObservation-0b-Folat-Ra.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-0c-Trop2](Observation-PatientKimMusterperson-MolecularPathologyObservation-0c-Trop2.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-1-CA125](Observation-PatientKimMusterperson-MolecularPathologyObservation-1-CA125.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-2-Pax8](Observation-PatientKimMusterperson-MolecularPathologyObservation-2-Pax8.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-3-WT1](Observation-PatientKimMusterperson-MolecularPathologyObservation-3-WT1.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-4-ER](Observation-PatientKimMusterperson-MolecularPathologyObservation-4-ER.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-5-PR](Observation-PatientKimMusterperson-MolecularPathologyObservation-5-PR.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-6-p53](Observation-PatientKimMusterperson-MolecularPathologyObservation-6-p53.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-7-p53](Observation-PatientKimMusterperson-MolecularPathologyObservation-7-p53.md), [Observation/mii-exa-mtb-kim-musterperson-CNVariante-CCNE1](Observation-mii-exa-mtb-kim-musterperson-CNVariante-CCNE1.md), [Observation/mii-exa-mtb-kim-musterperson-DiagnostischeImplikation-TP53](Observation-mii-exa-mtb-kim-musterperson-DiagnostischeImplikation-TP53.md), [Observation/mii-exa-mtb-kim-musterperson-EinfacheVariante-PIK3R1](Observation-mii-exa-mtb-kim-musterperson-EinfacheVariante-PIK3R1.md), [Observation/mii-exa-mtb-kim-musterperson-EinfacheVariante-TP53](Observation-mii-exa-mtb-kim-musterperson-EinfacheVariante-TP53.md), [Observation/mii-exa-mtb-kim-musterperson-TherapeutischeImplikation-PIK3R1](Observation-mii-exa-mtb-kim-musterperson-TherapeutischeImplikation-PIK3R1.md), [Observation/mii-exa-mtb-kim-musterperson-aufklaerung](Observation-mii-exa-mtb-kim-musterperson-aufklaerung.md), [Observation/mii-exa-mtb-kim-tumorzellgehalt-aszites](Observation-mii-exa-mtb-kim-tumorzellgehalt-aszites.md), [Procedure/MII-EXA-MTB-GenomicStudyAnalysis-1](Procedure-MII-EXA-MTB-GenomicStudyAnalysis-1.md) and [Procedure/mii-exa-mtb-kim-musterperson-genomic-study-analysis-1](Procedure-mii-exa-mtb-kim-musterperson-genomic-study-analysis-1.md)


* This material contains content that is copyright of SNOMED International. Implementers of these specifications must have the appropriate SNOMED CT Affiliate license - for more information contact [https://www.snomed.org/get-snomed](https://www.snomed.org/get-snomed) or [info@snomed.org](mailto:info@snomed.org).

* [SNOMED Clinical Terms&reg; (SNOMED CT&reg;)](http://hl7.org/fhir/R4/codesystem-snomedct.html): [Bundle/mii-exa-mtb-kim-musterperson-bundle](Bundle-mii-exa-mtb-kim-musterperson-bundle.md), [ClinicalImpression/MII-EXA-MTB-Follow-Up-ClinicalImpression-1](ClinicalImpression-MII-EXA-MTB-Follow-Up-ClinicalImpression-1.md)... Show 110 more, [ClinicalImpression/MII-EXA-MTB-Follow-Up-ClinicalImpression-Beispiel-1](ClinicalImpression-MII-EXA-MTB-Follow-Up-ClinicalImpression-Beispiel-1.md), [ClinicalImpression/mii-exa-mtb-behandlungsepisode-1](ClinicalImpression-mii-exa-mtb-behandlungsepisode-1.md), [ClinicalImpression/mii-exa-mtb-kim-musterperson-behandlungsepisode](ClinicalImpression-mii-exa-mtb-kim-musterperson-behandlungsepisode.md), [Condition/mii-exa-mtb-kim-diagnose](Condition-mii-exa-mtb-kim-diagnose.md), [EvidenceVariable/mii-exa-mtb-study-cldn6-evidence-variable-0](EvidenceVariable-mii-exa-mtb-study-cldn6-evidence-variable-0.md), [EvidenceVariable/mii-exa-mtb-study-cldn6-evidence-variable-1](EvidenceVariable-mii-exa-mtb-study-cldn6-evidence-variable-1.md), [Group/mii-exa-mtb-study-cldn6-eligibility-criteria-age-groups](Group-mii-exa-mtb-study-cldn6-eligibility-criteria-age-groups.md), [MII_PR_MTB_Behandlungsepisode](StructureDefinition-mii-pr-mtb-behandlungsepisode.md), [MII_PR_MTB_Biomarker_InSituHybridization](StructureDefinition-mii-pr-mtb-insituhybridization.md), [MII_PR_MTB_Biopsie_Auftrag](StructureDefinition-mii-pr-mtb-biopsie-auftrag.md), [MII_PR_MTB_Diagnose_Primaertumor](StructureDefinition-mii-pr-mtb-diagnose-primaertumor.md), [MII_PR_MTB_Follow_Up_ClinicalImpression](StructureDefinition-mii-pr-mtb-follow-up-clinicalimpression.md), [MII_PR_MTB_Histologie_Evaluation_Auftrag](StructureDefinition-mii-pr-mtb-histologie-evaluation-auftrag.md), [MII_PR_MTB_Humangenetische_Beratung_Auftrag](StructureDefinition-mii-pr-mtb-humangenetische-beratung-auftrag.md), [MII_PR_MTB_IMMUNOHISTOCHEMISTRY_HER2](StructureDefinition-mii-pr-mtb-immunohistochemistry-her2.md), [MII_PR_MTB_INSITUHYBRIDIZATION_HER2](StructureDefinition-mii-pr-mtb-insituhybridization-her2.md), [MII_PR_MTB_Immunohistochemistry](StructureDefinition-mii-pr-mtb-immunohistochemistry.md), [MII_PR_MTB_Immunohistochemistry_PDL1](StructureDefinition-mii-pr-mtb-immunohistochemistry-pdl1.md), [MII_PR_MTB_Immunohistochemistry_Phosphorylation](StructureDefinition-mii-pr-mtb-immunohistochemistry-phosphorylation.md), [MII_PR_MTB_Oncotree](StructureDefinition-mii-pr-mtb-oncotree.md), [MII_PR_MTB_Response_Befund](StructureDefinition-mii-pr-mtb-response-befund.md), [MII_PR_MTB_Studieneinschluss_Anfrage](StructureDefinition-mii-pr-mtb-studieneinschluss-anfrage.md), [MII_PR_MTB_Systemische_Therapie](StructureDefinition-mii-pr-mtb-systemische-therapie.md), [MII_PR_MTB_Systemische_Therapie_Medication_Statement](StructureDefinition-mii-pr-mtb-systemtherapie-medication-statement.md), [MII_PR_MTB_Systemische_Vortherapie](StructureDefinition-mii-pr-mtb-systemische-vortherapie.md), [MII_PR_MTB_Therapieempfehlung](StructureDefinition-mii-pr-mtb-therapieempfehlung.md), [MII_PR_MTB_Tumorausbreitung](StructureDefinition-mii-pr-mtb-tumorausbreitung.md), [MII_PR_MTB_WHO_Grad_Tumor_ZNS](StructureDefinition-mii-pr-mtb-who-grad-tumor-zns.md), [MII_VS_MTB_ISH_Method](ValueSet-mii-vs-mtb-ish-method.md), [MII_VS_MTB_Immunhistochemistry_Specific_Codes](ValueSet-mii-vs-mtb-immunohistochemistry-specific-codes.md), [MII_VS_MTB_Tumorausbreitung](ValueSet-mii-vs-mtb-tumorausbreitung.md), [MII_VS_MTB_WHO_Grad_Tumor_ZNS](ValueSet-mii-vs-mtb-who-grad-tumor-zns.md), [Observation/MII-EXA-MTB-Response-Befund-1](Observation-MII-EXA-MTB-Response-Befund-1.md), [Observation/MII-EXA-MTB-Response-Befund-2](Observation-MII-EXA-MTB-Response-Befund-2.md), [Observation/MII-EXA-MTB-Response-Befund-Beispiel-1](Observation-MII-EXA-MTB-Response-Befund-Beispiel-1.md), [Observation/PatientKimMusterperson-MolecularPathologyInterpret-0a-Her2neu](Observation-PatientKimMusterperson-MolecularPathologyInterpret-0a-Her2neu.md), [Observation/PatientKimMusterperson-MolecularPathologyObs-FISH-0a-Her2neu-](Observation-PatientKimMusterperson-MolecularPathologyObs-FISH-0a-Her2neu-.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-0a-Her2neu](Observation-PatientKimMusterperson-MolecularPathologyObservation-0a-Her2neu.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-0b-Folat-Ra](Observation-PatientKimMusterperson-MolecularPathologyObservation-0b-Folat-Ra.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-0c-Trop2](Observation-PatientKimMusterperson-MolecularPathologyObservation-0c-Trop2.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-1-CA125](Observation-PatientKimMusterperson-MolecularPathologyObservation-1-CA125.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-2-Pax8](Observation-PatientKimMusterperson-MolecularPathologyObservation-2-Pax8.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-3-WT1](Observation-PatientKimMusterperson-MolecularPathologyObservation-3-WT1.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-4-ER](Observation-PatientKimMusterperson-MolecularPathologyObservation-4-ER.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-5-PR](Observation-PatientKimMusterperson-MolecularPathologyObservation-5-PR.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-6-p53](Observation-PatientKimMusterperson-MolecularPathologyObservation-6-p53.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-7-p53](Observation-PatientKimMusterperson-MolecularPathologyObservation-7-p53.md), [Observation/PatientKimMusterperson-Observation-1](Observation-PatientKimMusterperson-Observation-1.md), [Observation/PatientKimMusterperson-Observation-10](Observation-PatientKimMusterperson-Observation-10.md), [Observation/PatientKimMusterperson-Observation-11](Observation-PatientKimMusterperson-Observation-11.md), [Observation/PatientKimMusterperson-Observation-12](Observation-PatientKimMusterperson-Observation-12.md), [Observation/PatientKimMusterperson-Observation-13](Observation-PatientKimMusterperson-Observation-13.md), [Observation/PatientKimMusterperson-Observation-14](Observation-PatientKimMusterperson-Observation-14.md), [Observation/PatientKimMusterperson-Observation-15](Observation-PatientKimMusterperson-Observation-15.md), [Observation/PatientKimMusterperson-Observation-16](Observation-PatientKimMusterperson-Observation-16.md), [Observation/PatientKimMusterperson-Observation-17](Observation-PatientKimMusterperson-Observation-17.md), [Observation/PatientKimMusterperson-Observation-18](Observation-PatientKimMusterperson-Observation-18.md), [Observation/PatientKimMusterperson-Observation-19](Observation-PatientKimMusterperson-Observation-19.md), [Observation/PatientKimMusterperson-Observation-2](Observation-PatientKimMusterperson-Observation-2.md), [Observation/PatientKimMusterperson-Observation-20](Observation-PatientKimMusterperson-Observation-20.md), [Observation/PatientKimMusterperson-Observation-21](Observation-PatientKimMusterperson-Observation-21.md), [Observation/PatientKimMusterperson-Observation-22](Observation-PatientKimMusterperson-Observation-22.md), [Observation/PatientKimMusterperson-Observation-23](Observation-PatientKimMusterperson-Observation-23.md), [Observation/PatientKimMusterperson-Observation-24](Observation-PatientKimMusterperson-Observation-24.md), [Observation/PatientKimMusterperson-Observation-25](Observation-PatientKimMusterperson-Observation-25.md), [Observation/PatientKimMusterperson-Observation-26](Observation-PatientKimMusterperson-Observation-26.md), [Observation/PatientKimMusterperson-Observation-27](Observation-PatientKimMusterperson-Observation-27.md), [Observation/PatientKimMusterperson-Observation-29](Observation-PatientKimMusterperson-Observation-29.md), [Observation/PatientKimMusterperson-Observation-3](Observation-PatientKimMusterperson-Observation-3.md), [Observation/PatientKimMusterperson-Observation-30](Observation-PatientKimMusterperson-Observation-30.md), [Observation/PatientKimMusterperson-Observation-4](Observation-PatientKimMusterperson-Observation-4.md), [Observation/PatientKimMusterperson-Observation-5](Observation-PatientKimMusterperson-Observation-5.md), [Observation/PatientKimMusterperson-Observation-6](Observation-PatientKimMusterperson-Observation-6.md), [Observation/PatientKimMusterperson-Observation-7](Observation-PatientKimMusterperson-Observation-7.md), [Observation/PatientKimMusterperson-Observation-8](Observation-PatientKimMusterperson-Observation-8.md), [Observation/PatientKimMusterperson-Observation-9](Observation-PatientKimMusterperson-Observation-9.md), [Observation/mii-exa-mtb-kim-musterperson-aufklaerung](Observation-mii-exa-mtb-kim-musterperson-aufklaerung.md), [Observation/mii-exa-mtb-kim-oncotree](Observation-mii-exa-mtb-kim-oncotree.md), [Observation/mii-exa-mtb-kim-tumorausbreitung](Observation-mii-exa-mtb-kim-tumorausbreitung.md), [Observation/mii-exa-mtb-who-grad-tumor-zns-1](Observation-mii-exa-mtb-who-grad-tumor-zns-1.md), [Observation/mii-exa-onko-allgemeiner-leistungszustand-ecog](Observation-mii-exa-onko-allgemeiner-leistungszustand-ecog.md), [PractitionerRole/mii-exa-mtb-study-investigator-biontech](PractitionerRole-mii-exa-mtb-study-investigator-biontech.md), [Procedure/MII-EXA-MTB-Systemische-Therapie-1](Procedure-MII-EXA-MTB-Systemische-Therapie-1.md), [Procedure/MII-EXA-MTB-Systemtherapie-Beispiel-1](Procedure-MII-EXA-MTB-Systemtherapie-Beispiel-1.md), [Procedure/MTBChemo1Procedure](Procedure-MTBChemo1Procedure.md), [Procedure/MTBChemo2Procedure](Procedure-MTBChemo2Procedure.md), [Procedure/PatientKimMusterperson-Procedure-1](Procedure-PatientKimMusterperson-Procedure-1.md), [Procedure/PatientKimMusterperson-Procedure-2](Procedure-PatientKimMusterperson-Procedure-2.md), [Procedure/PatientKimMusterperson-Procedure-3](Procedure-PatientKimMusterperson-Procedure-3.md), [Procedure/PatientKimMusterperson-Procedure-4](Procedure-PatientKimMusterperson-Procedure-4.md), [Procedure/PatientKimMusterperson-Procedure-4a](Procedure-PatientKimMusterperson-Procedure-4a.md), [Procedure/PatientKimMusterperson-Procedure-4b](Procedure-PatientKimMusterperson-Procedure-4b.md), [Procedure/PatientKimMusterperson-Procedure-4c](Procedure-PatientKimMusterperson-Procedure-4c.md), [Procedure/PatientKimMusterperson-Procedure-4d](Procedure-PatientKimMusterperson-Procedure-4d.md), [Procedure/PatientKimMusterperson-Procedure-5](Procedure-PatientKimMusterperson-Procedure-5.md), [Procedure/PatientKimMusterperson-Procedure-6](Procedure-PatientKimMusterperson-Procedure-6.md), [Procedure/PatientKimMusterperson-Procedure-7](Procedure-PatientKimMusterperson-Procedure-7.md), [Procedure/PatientKimMusterperson-SystemicTherapy-1](Procedure-PatientKimMusterperson-SystemicTherapy-1.md), [Procedure/PatientKimMusterperson-SystemicTherapy-2](Procedure-PatientKimMusterperson-SystemicTherapy-2.md), [Procedure/PatientKimMusterperson-SystemicTherapy-3](Procedure-PatientKimMusterperson-SystemicTherapy-3.md), [ResearchStudy/mii-exa-mtb-study-cldn6](ResearchStudy-mii-exa-mtb-study-cldn6.md), [ServiceRequest/mii-exa-mtb-kim-histologie-evaluation-aszites](ServiceRequest-mii-exa-mtb-kim-histologie-evaluation-aszites.md), [ServiceRequest/mii-exa-mtb-kim-humangenetische-beratung-aszites](ServiceRequest-mii-exa-mtb-kim-humangenetische-beratung-aszites.md), [ServiceRequest/mii-exa-mtb-kim-rebiopsie-aszites](ServiceRequest-mii-exa-mtb-kim-rebiopsie-aszites.md), [ServiceRequest/mii-exa-mtb-study-request-ccne1](ServiceRequest-mii-exa-mtb-study-request-ccne1.md), [ServiceRequest/mii-exa-mtb-study-request-cldn6](ServiceRequest-mii-exa-mtb-study-request-cldn6.md), [ServiceRequest/mii-exa-mtb-study-request-tedova](ServiceRequest-mii-exa-mtb-study-request-tedova.md), [Specimen/PatientKimMusterperson-AscitesSpecimen-2](Specimen-PatientKimMusterperson-AscitesSpecimen-2.md), [Specimen/PatientKimMusterperson-Specimen-1](Specimen-PatientKimMusterperson-Specimen-1.md) and [Specimen/mii-exa-mtb-specimen](Specimen-mii-exa-mtb-specimen.md)


* This material derives from the HL7 Terminology (THO). THO is copyright ©1989+ Health Level Seven International and is made available under the CC0 designation. For more licensing information see: [https://terminology.hl7.org/license.html](https://terminology.hl7.org/license.html)

* [Claim Type Codes](http://terminology.hl7.org/7.3.0/CodeSystem-claim-type.html): [MII_PR_MTB_Antrag_Kostenuebernahme](StructureDefinition-mii-pr-mtb-antrag-kostenuebernahme.md), [MII_PR_MTB_Antwort_Kostenuebernahme](StructureDefinition-mii-pr-mtb-antwort-kostenuebernahme.md) and [MII_VS_MTB_Antrag_Kostenuebernahme_Type](ValueSet-mii-vs-mtb-antrag-kostenuebernahme.md)
* [Condition Clinical Status Codes](http://terminology.hl7.org/7.3.0/CodeSystem-condition-clinical.html): [Bundle/mii-exa-mtb-kim-musterperson-bundle](Bundle-mii-exa-mtb-kim-musterperson-bundle.md), [Condition/PatientKimMusterperson-PrimaryDiagnosis-2](Condition-PatientKimMusterperson-PrimaryDiagnosis-2.md) and [Condition/mii-exa-mtb-kim-diagnose](Condition-mii-exa-mtb-kim-diagnose.md)
* [ConditionVerificationStatus](http://terminology.hl7.org/7.3.0/CodeSystem-condition-ver-status.html): [Bundle/mii-exa-mtb-kim-musterperson-bundle](Bundle-mii-exa-mtb-kim-musterperson-bundle.md), [Condition/PatientKimMusterperson-PrimaryDiagnosis-2](Condition-PatientKimMusterperson-PrimaryDiagnosis-2.md), [Condition/mii-exa-mtb-kim-diagnose](Condition-mii-exa-mtb-kim-diagnose.md) and [MII_PR_MTB_Diagnose_Primaertumor](StructureDefinition-mii-pr-mtb-diagnose-primaertumor.md)
* [Observation Category Codes](http://terminology.hl7.org/7.3.0/CodeSystem-observation-category.html): [Bundle/mii-exa-mtb-kim-musterperson-bundle](Bundle-mii-exa-mtb-kim-musterperson-bundle.md), [MII_PR_MTB_BIOMARKER_HER2_STATUS](StructureDefinition-mii-pr-mtb-biomarker-her2-status.md)... Show 63 more, [MII_PR_MTB_BRCAness](StructureDefinition-mii-pr-mtb-brcaness.md), [MII_PR_MTB_Biomarker_InSituHybridization](StructureDefinition-mii-pr-mtb-insituhybridization.md), [MII_PR_MTB_Copy_Number_Variant](StructureDefinition-mii-pr-mtb-copy-number-variant.md), [MII_PR_MTB_DNA_Fusion](StructureDefinition-mii-pr-mtb-dna-fusion.md), [MII_PR_MTB_Diagnostische_Implikation](StructureDefinition-mii-pr-mtb-diagnostische-implikation.md), [MII_PR_MTB_Einfache_Variante](StructureDefinition-mii-pr-mtb-einfache-variante.md), [MII_PR_MTB_Genomic_Study](StructureDefinition-mii-pr-mtb-genomic-study.md), [MII_PR_MTB_Genomic_Study_Analysis](StructureDefinition-mii-pr-mtb-genomic-study-analysis.md), [MII_PR_MTB_HRD_Score](StructureDefinition-mii-pr-mtb-hrd-score.md), [MII_PR_MTB_IMMUNOHISTOCHEMISTRY_HER2](StructureDefinition-mii-pr-mtb-immunohistochemistry-her2.md), [MII_PR_MTB_INSITUHYBRIDIZATION_HER2](StructureDefinition-mii-pr-mtb-insituhybridization-her2.md), [MII_PR_MTB_Immunohistochemistry](StructureDefinition-mii-pr-mtb-immunohistochemistry.md), [MII_PR_MTB_Immunohistochemistry_MMR](StructureDefinition-mii-pr-mtb-immunohistochemistry-mmr.md), [MII_PR_MTB_Immunohistochemistry_MSI](StructureDefinition-mii-pr-mtb-msi.md), [MII_PR_MTB_Immunohistochemistry_PDL1](StructureDefinition-mii-pr-mtb-immunohistochemistry-pdl1.md), [MII_PR_MTB_Immunohistochemistry_Phosphorylation](StructureDefinition-mii-pr-mtb-immunohistochemistry-phosphorylation.md), [MII_PR_MTB_Mikrosatelliteninstabilitaet](StructureDefinition-mii-pr-mtb-mikrosatelliteninstabilitaet.md), [MII_PR_MTB_Molekularer_Biomarker](StructureDefinition-mii-pr-mtb-molekularer-biomarker.md), [MII_PR_MTB_Mutationslast](StructureDefinition-mii-pr-mtb-mutationslast.md), [MII_PR_MTB_Ploidie](StructureDefinition-mii-pr-mtb-ploidie.md), [MII_PR_MTB_RNA_Fusion](StructureDefinition-mii-pr-mtb-rna-fusion.md), [MII_PR_MTB_RNA_Seq](StructureDefinition-mii-pr-mtb-rna-seq.md), [MII_PR_MTB_Therapeutische_Implikation](StructureDefinition-mii-pr-mtb-therapeutische-implikation.md), [MII_PR_MTB_Tumorzellgehalt](StructureDefinition-mii-pr-mtb-tumorzellgehalt.md), [Observation/MII-EXA-MTB-BRCAness-1](Observation-MII-EXA-MTB-BRCAness-1.md), [Observation/MII-EXA-MTB-Copy-Number-Variant-1](Observation-MII-EXA-MTB-Copy-Number-Variant-1.md), [Observation/MII-EXA-MTB-DNA-Fusion-1](Observation-MII-EXA-MTB-DNA-Fusion-1.md), [Observation/MII-EXA-MTB-Diagnostische-Implikation-1](Observation-MII-EXA-MTB-Diagnostische-Implikation-1.md), [Observation/MII-EXA-MTB-Einfache-Variante](Observation-MII-EXA-MTB-Einfache-Variante.md), [Observation/MII-EXA-MTB-HRD-Score-1](Observation-MII-EXA-MTB-HRD-Score-1.md), [Observation/MII-EXA-MTB-Mikrosatelliteninstabilitaet-1](Observation-MII-EXA-MTB-Mikrosatelliteninstabilitaet-1.md), [Observation/MII-EXA-MTB-Mutationslast-1](Observation-MII-EXA-MTB-Mutationslast-1.md), [Observation/MII-EXA-MTB-Ploidie-1](Observation-MII-EXA-MTB-Ploidie-1.md), [Observation/MII-EXA-MTB-RNA-Fusion-1](Observation-MII-EXA-MTB-RNA-Fusion-1.md), [Observation/MTBObservationCA125-1](Observation-MTBObservationCA125-1.md), [Observation/MTBObservationCA125-2](Observation-MTBObservationCA125-2.md), [Observation/MTBObservationCA125-3](Observation-MTBObservationCA125-3.md), [Observation/MTBObservationCA125-4](Observation-MTBObservationCA125-4.md), [Observation/MTBObservationCA125-5](Observation-MTBObservationCA125-5.md), [Observation/MTBObservationCA125-6](Observation-MTBObservationCA125-6.md), [Observation/PatientKimMusterperson-MolecularPathologyInterpret-0a-Her2neu](Observation-PatientKimMusterperson-MolecularPathologyInterpret-0a-Her2neu.md), [Observation/PatientKimMusterperson-MolecularPathologyObs-FISH-0a-Her2neu-](Observation-PatientKimMusterperson-MolecularPathologyObs-FISH-0a-Her2neu-.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-0a-Her2neu](Observation-PatientKimMusterperson-MolecularPathologyObservation-0a-Her2neu.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-0b-Folat-Ra](Observation-PatientKimMusterperson-MolecularPathologyObservation-0b-Folat-Ra.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-0c-Trop2](Observation-PatientKimMusterperson-MolecularPathologyObservation-0c-Trop2.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-1-CA125](Observation-PatientKimMusterperson-MolecularPathologyObservation-1-CA125.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-2-Pax8](Observation-PatientKimMusterperson-MolecularPathologyObservation-2-Pax8.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-3-WT1](Observation-PatientKimMusterperson-MolecularPathologyObservation-3-WT1.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-4-ER](Observation-PatientKimMusterperson-MolecularPathologyObservation-4-ER.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-5-PR](Observation-PatientKimMusterperson-MolecularPathologyObservation-5-PR.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-6-p53](Observation-PatientKimMusterperson-MolecularPathologyObservation-6-p53.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-7-p53](Observation-PatientKimMusterperson-MolecularPathologyObservation-7-p53.md), [Observation/mii-exa-mtb-kim-musterperson-CNVariante-CCNE1](Observation-mii-exa-mtb-kim-musterperson-CNVariante-CCNE1.md), [Observation/mii-exa-mtb-kim-musterperson-DiagnostischeImplikation-TP53](Observation-mii-exa-mtb-kim-musterperson-DiagnostischeImplikation-TP53.md), [Observation/mii-exa-mtb-kim-musterperson-EinfacheVariante-PIK3R1](Observation-mii-exa-mtb-kim-musterperson-EinfacheVariante-PIK3R1.md), [Observation/mii-exa-mtb-kim-musterperson-EinfacheVariante-TP53](Observation-mii-exa-mtb-kim-musterperson-EinfacheVariante-TP53.md), [Observation/mii-exa-mtb-kim-musterperson-TherapeutischeImplikation-PIK3R1](Observation-mii-exa-mtb-kim-musterperson-TherapeutischeImplikation-PIK3R1.md), [Procedure/MII-EXA-MTB-GenomicStudy-1](Procedure-MII-EXA-MTB-GenomicStudy-1.md), [Procedure/MII-EXA-MTB-GenomicStudyAnalysis-1](Procedure-MII-EXA-MTB-GenomicStudyAnalysis-1.md), [Procedure/mii-exa-mtb-kim-musterperson-genomic-study](Procedure-mii-exa-mtb-kim-musterperson-genomic-study.md), [Procedure/mii-exa-mtb-kim-musterperson-genomic-study-analysis-1](Procedure-mii-exa-mtb-kim-musterperson-genomic-study-analysis-1.md), [Procedure/mii-exa-mtb-kim-musterperson-genomic-study-analysis-2](Procedure-mii-exa-mtb-kim-musterperson-genomic-study-analysis-2.md) and [Procedure/mii-exa-mtb-kim-musterperson-genomic-study-analysis-3](Procedure-mii-exa-mtb-kim-musterperson-genomic-study-analysis-3.md)
* [Organization type](http://terminology.hl7.org/7.3.0/CodeSystem-organization-type.html): [BioNTech Cell & Gene Therapies GmbH](Organization-mii-exa-mtb-study-sponsor-biontech.md), [Bundle/mii-exa-mtb-kim-musterperson-bundle](Bundle-mii-exa-mtb-kim-musterperson-bundle.md), [Example General Hospital](Organization-MyHospital.md) and [Example Health Insurance Co.](Organization-MyInsurer.md)
* [Process Priority Codes](http://terminology.hl7.org/7.3.0/CodeSystem-processpriority.html): [Bundle/mii-exa-mtb-kim-musterperson-bundle](Bundle-mii-exa-mtb-kim-musterperson-bundle.md), [Claim/MII-EXA-MTB-Antrag-Kostenuebernahme-1](Claim-MII-EXA-MTB-Antrag-Kostenuebernahme-1.md), [Claim/MII-EXA-MTB-Antrag-Kostenuebernahme-Beispiel-1](Claim-MII-EXA-MTB-Antrag-Kostenuebernahme-Beispiel-1.md) and [MII_PR_MTB_Antrag_Kostenuebernahme](StructureDefinition-mii-pr-mtb-antrag-kostenuebernahme.md)
* [diagnosticServiceSectionId](http://terminology.hl7.org/7.3.0/CodeSystem-v2-0074.html): [Bundle/mii-exa-mtb-kim-musterperson-bundle](Bundle-mii-exa-mtb-kim-musterperson-bundle.md), [DiagnosticReport/mii-exa-mtb-kim-musterperson-ngs-bericht](DiagnosticReport-mii-exa-mtb-kim-musterperson-ngs-bericht.md)... Show 35 more, [MII_PR_MTB_BIOMARKER_HER2_STATUS](StructureDefinition-mii-pr-mtb-biomarker-her2-status.md), [MII_PR_MTB_BRCAness](StructureDefinition-mii-pr-mtb-brcaness.md), [MII_PR_MTB_Biomarker_InSituHybridization](StructureDefinition-mii-pr-mtb-insituhybridization.md), [MII_PR_MTB_Copy_Number_Variant](StructureDefinition-mii-pr-mtb-copy-number-variant.md), [MII_PR_MTB_DNA_Fusion](StructureDefinition-mii-pr-mtb-dna-fusion.md), [MII_PR_MTB_Diagnostische_Implikation](StructureDefinition-mii-pr-mtb-diagnostische-implikation.md), [MII_PR_MTB_Einfache_Variante](StructureDefinition-mii-pr-mtb-einfache-variante.md), [MII_PR_MTB_HRD_Score](StructureDefinition-mii-pr-mtb-hrd-score.md), [MII_PR_MTB_IMMUNOHISTOCHEMISTRY_HER2](StructureDefinition-mii-pr-mtb-immunohistochemistry-her2.md), [MII_PR_MTB_INSITUHYBRIDIZATION_HER2](StructureDefinition-mii-pr-mtb-insituhybridization-her2.md), [MII_PR_MTB_Immunohistochemistry](StructureDefinition-mii-pr-mtb-immunohistochemistry.md), [MII_PR_MTB_Immunohistochemistry_MMR](StructureDefinition-mii-pr-mtb-immunohistochemistry-mmr.md), [MII_PR_MTB_Immunohistochemistry_MSI](StructureDefinition-mii-pr-mtb-msi.md), [MII_PR_MTB_Immunohistochemistry_PDL1](StructureDefinition-mii-pr-mtb-immunohistochemistry-pdl1.md), [MII_PR_MTB_Immunohistochemistry_Phosphorylation](StructureDefinition-mii-pr-mtb-immunohistochemistry-phosphorylation.md), [MII_PR_MTB_Mikrosatelliteninstabilitaet](StructureDefinition-mii-pr-mtb-mikrosatelliteninstabilitaet.md), [MII_PR_MTB_Molekularer_Biomarker](StructureDefinition-mii-pr-mtb-molekularer-biomarker.md), [MII_PR_MTB_Mutationslast](StructureDefinition-mii-pr-mtb-mutationslast.md), [MII_PR_MTB_Ploidie](StructureDefinition-mii-pr-mtb-ploidie.md), [MII_PR_MTB_RNA_Fusion](StructureDefinition-mii-pr-mtb-rna-fusion.md), [MII_PR_MTB_RNA_Seq](StructureDefinition-mii-pr-mtb-rna-seq.md), [MII_PR_MTB_Therapeutische_Implikation](StructureDefinition-mii-pr-mtb-therapeutische-implikation.md), [Observation/MII-EXA-MTB-BRCAness-1](Observation-MII-EXA-MTB-BRCAness-1.md), [Observation/MII-EXA-MTB-Copy-Number-Variant-1](Observation-MII-EXA-MTB-Copy-Number-Variant-1.md), [Observation/MII-EXA-MTB-DNA-Fusion-1](Observation-MII-EXA-MTB-DNA-Fusion-1.md), [Observation/MII-EXA-MTB-Diagnostische-Implikation-1](Observation-MII-EXA-MTB-Diagnostische-Implikation-1.md), [Observation/MII-EXA-MTB-Einfache-Variante](Observation-MII-EXA-MTB-Einfache-Variante.md), [Observation/MII-EXA-MTB-HRD-Score-1](Observation-MII-EXA-MTB-HRD-Score-1.md), [Observation/MII-EXA-MTB-RNA-Fusion-1](Observation-MII-EXA-MTB-RNA-Fusion-1.md), [Observation/PatientKimMusterperson-MolecularPathologyObservation-0a-Her2neu](Observation-PatientKimMusterperson-MolecularPathologyObservation-0a-Her2neu.md), [Observation/mii-exa-mtb-kim-musterperson-CNVariante-CCNE1](Observation-mii-exa-mtb-kim-musterperson-CNVariante-CCNE1.md), [Observation/mii-exa-mtb-kim-musterperson-DiagnostischeImplikation-TP53](Observation-mii-exa-mtb-kim-musterperson-DiagnostischeImplikation-TP53.md), [Observation/mii-exa-mtb-kim-musterperson-EinfacheVariante-PIK3R1](Observation-mii-exa-mtb-kim-musterperson-EinfacheVariante-PIK3R1.md), [Observation/mii-exa-mtb-kim-musterperson-EinfacheVariante-TP53](Observation-mii-exa-mtb-kim-musterperson-EinfacheVariante-TP53.md) and [Observation/mii-exa-mtb-kim-musterperson-TherapeutischeImplikation-PIK3R1](Observation-mii-exa-mtb-kim-musterperson-TherapeutischeImplikation-PIK3R1.md)
* [ActCode](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActCode.html): [Bundle/mii-exa-mtb-kim-musterperson-bundle](Bundle-mii-exa-mtb-kim-musterperson-bundle.md) and [Coverage/MyCoverage](Coverage-MyCoverage.md)
* [ObservationInterpretation](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ObservationInterpretation.html): [MII_PR_MTB_BRCAness](StructureDefinition-mii-pr-mtb-brcaness.md), [MII_PR_MTB_HRD_Score](StructureDefinition-mii-pr-mtb-hrd-score.md)... Show 6 more, [MII_PR_MTB_Mutationslast](StructureDefinition-mii-pr-mtb-mutationslast.md), [MII_PR_MTB_Ploidie](StructureDefinition-mii-pr-mtb-ploidie.md), [Observation/MII-EXA-MTB-BRCAness-1](Observation-MII-EXA-MTB-BRCAness-1.md), [Observation/MII-EXA-MTB-HRD-Score-1](Observation-MII-EXA-MTB-HRD-Score-1.md), [Observation/MII-EXA-MTB-Mutationslast-1](Observation-MII-EXA-MTB-Mutationslast-1.md) and [Observation/MII-EXA-MTB-Ploidie-1](Observation-MII-EXA-MTB-Ploidie-1.md)


* Unless otherwise noted, the contents of the FDA website (www.fda.gov) — both text and graphics — are not copyrighted. They are in the public domain and may be republished, reprinted and otherwise used freely by anyone without the need to obtain permission from FDA. Credit to the U.S. Food and Drug Administration as the source is appreciated but not required.

* [Unique Ingredient Identifier (UNII)](http://terminology.hl7.org/6.5.0/CodeSystem-UNII.html): [Bundle/mii-exa-mtb-kim-musterperson-bundle](Bundle-mii-exa-mtb-kim-musterperson-bundle.md), [MII_PR_MTB_Systemische_Therapie_Medication_Statement](StructureDefinition-mii-pr-mtb-systemtherapie-medication-statement.md)... Show 19 more, [MII_PR_MTB_Therapieempfehlung](StructureDefinition-mii-pr-mtb-therapieempfehlung.md), [MedicationRequest/mii-exa-mtb-medication-request-adavosertib](MedicationRequest-mii-exa-mtb-medication-request-adavosertib.md), [MedicationRequest/mii-exa-mtb-medication-request-camonsertib](MedicationRequest-mii-exa-mtb-medication-request-camonsertib.md), [MedicationRequest/mii-exa-mtb-medication-request-cobimetinib](MedicationRequest-mii-exa-mtb-medication-request-cobimetinib.md), [MedicationRequest/mii-exa-mtb-medication-request-lunresertib](MedicationRequest-mii-exa-mtb-medication-request-lunresertib.md), [MedicationRequest/mii-exa-mtb-medication-request-mirvetuximab](MedicationRequest-mii-exa-mtb-medication-request-mirvetuximab.md), [MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-1](MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-1.md), [MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-2](MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-2.md), [MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-3](MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-3.md), [MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-4](MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-4.md), [MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-5](MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-5.md), [MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-6](MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-6.md), [MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-Beispiel-1](MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-Beispiel-1.md), [MedicationStatement/MTBChemo2MedicationStatement1](MedicationStatement-MTBChemo2MedicationStatement1.md), [MedicationStatement/MTBChemo2MedicationStatement2](MedicationStatement-MTBChemo2MedicationStatement2.md), [MedicationStatement/MTBChemo2MedicationStatement3](MedicationStatement-MTBChemo2MedicationStatement3.md), [MedicationStatement/MTBChemo2MedicationStatement4](MedicationStatement-MTBChemo2MedicationStatement4.md), [MedicationStatement/MTBChemo2MedicationStatement5](MedicationStatement-MTBChemo2MedicationStatement5.md) and [MedicationStatement/MTBChemo2MedicationStatement6](MedicationStatement-MTBChemo2MedicationStatement6.md)


* WHO, BfArM 1994 - 2024 - Die Erstellung erfolgt unter Verwendung der maschinenlesbaren Fassung des Bundesinstituts für Arzneimittel und Medizinprodukte (BfArM)

* [ICD-10-GM](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.onkologie@2026.0.3&canonical=http://fhir.de/CodeSystem/bfarm/icd-10-gm): [Bundle/mii-exa-mtb-kim-musterperson-bundle](Bundle-mii-exa-mtb-kim-musterperson-bundle.md), [Condition/PatientKimMusterperson-PrimaryDiagnosis-2](Condition-PatientKimMusterperson-PrimaryDiagnosis-2.md), [Condition/mii-exa-mtb-kim-diagnose](Condition-mii-exa-mtb-kim-diagnose.md) and [MII_PR_MTB_Diagnose_Primaertumor](StructureDefinition-mii-pr-mtb-diagnose-primaertumor.md)


### IG Parameter Settings and Expansion Parameters

Expansion parameters are query parameters that can be passed to a `ValueSet` `$expand` operation to control how the ValueSet is expanded — that is, how the full list of codes is generated from the ValueSet definition. The [IG Parameters](https://hl7.org/fhir/tools/en/CodeSystem-ig-parameters.html) used for this IG are declared in [`sushi-config.yaml`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/blob/main/sushi-config.yaml) (`parameters:`). A module that pins its expansion parameters through a CRMI manifest additionally links the generated `Parameters` resource from here (see the commented manifest blocks in `sushi-config.yaml` and the Metadata Overview page, if the module keeps it).



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "mii-kerndatensatzmodul-molekulares-tumorboard",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableimplementationguide",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableimplementationguide",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-implementationguide"]
  },
  "language" : "en",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-approvalDate",
    "valueDate" : "2026-03-30"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "shareable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "publishable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionPolicy",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/artifact-version-policy-codes",
        "code" : "package",
        "display" : "Package"
      }]
    }
  },
  {
    "extension" : [{
      "url" : "packageId",
      "valueId" : "de.medizininformatikinitiative.kerndatensatz.mtb"
    },
    {
      "url" : "version",
      "valueString" : "2026.0.1"
    },
    {
      "url" : "uri",
      "valueUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb"
    }],
    "url" : "http://hl7.org/fhir/StructureDefinition/package-source"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod",
    "valuePeriod" : {
      "start" : "2026"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-author",
    "valueContactDetail" : {
      "telecom" : [{
        "system" : "email",
        "value" : "thomas.debertshaeuser@charite.de"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-editor",
    "valueContactDetail" : {
      "name" : "Taskforce Core Data Set"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-reviewer",
    "valueContactDetail" : {
      "name" : "Interoperability Working Group",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-reviewer",
    "valueContactDetail" : {
      "name" : "National Steering Committee",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-endorser",
    "valueContactDetail" : {
      "name" : "Interoperability Working Group",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-endorser",
    "valueContactDetail" : {
      "name" : "National Steering Committee",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-expansionParameters",
    "valueReference" : {
      "reference" : "Parameters/mii-param-mtb-manifest"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm",
    "valueCoding" : {
      "system" : "http://hl7.org/fhir/version-algorithm",
      "code" : "semver"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-usage",
    "valueMarkdown" : "Use this ImplementationGuide resource as a computable definition of all the parts of the corresponding module of the Medical Informatics Initiative core data set."
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-purpose",
    "valueMarkdown" : "Provide the computable publication unit for the MII Core Dataset Molecular Tumor Board module, enabling implementers to discover, validate, version, and apply the specification consistently."
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-topic",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
        "code" : "C3262"
      }]
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ImplementationGuide/mii-kerndatensatzmodul-molekulares-tumorboard",
  "version" : "2026.0.1",
  "name" : "MII_IG_MTB_DE",
  "title" : "MII IG Kerndatensatz-Modul Molekulares Tumorboard",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-03-30",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "description" : "FHIR profiles for molecular tumor board (MTB) documentation based on the DNPM dataset (Deutsches Netzwerk für Personalisierte Medizin), complementing the MII core dataset oncology module.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "packageId" : "de.medizininformatikinitiative.kerndatensatz.mtb",
  "license" : "CC0-1.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [{
    "id" : "de_basisprofil_r4",
    "uri" : "http://fhir.org/packages/de.basisprofil.r4/ImplementationGuide/de.basisprofil.r4",
    "packageId" : "de.basisprofil.r4",
    "version" : "1.6.0"
  },
  {
    "id" : "de_medizininformatikinitiative_kerndatensatz_base",
    "uri" : "https://www.medizininformatik-initiative.de/fhir/modul-base/ImplementationGuide/mii-ig-base",
    "packageId" : "de.medizininformatikinitiative.kerndatensatz.base",
    "version" : "2027.0.0-ballot.rc1"
  },
  {
    "id" : "de_medizininformatikinitiative_kerndatensatz_biobank",
    "uri" : "http://fhir.org/packages/de.medizininformatikinitiative.kerndatensatz.biobank/ImplementationGuide/de.medizininformatikinitiative.kerndatensatz.biobank",
    "packageId" : "de.medizininformatikinitiative.kerndatensatz.biobank",
    "version" : "2027.0.0-ballot.rc2"
  },
  {
    "id" : "de_medizininformatikinitiative_kerndatensatz_consent",
    "uri" : "http://fhir.org/packages/de.medizininformatikinitiative.kerndatensatz.consent/ImplementationGuide/de.medizininformatikinitiative.kerndatensatz.consent",
    "packageId" : "de.medizininformatikinitiative.kerndatensatz.consent",
    "version" : "2027.0.0-ballot.rc1"
  },
  {
    "id" : "de_medizininformatikinitiative_kerndatensatz_medikation",
    "uri" : "https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/ImplementationGuide/mii-ig-medikation",
    "packageId" : "de.medizininformatikinitiative.kerndatensatz.medikation",
    "version" : "2027.0.0-ballot.rc5"
  },
  {
    "id" : "de_medizininformatikinitiative_kerndatensatz_meta",
    "uri" : "https://www.medizininformatik-initiative.de/fhir/modul-meta/ImplementationGuide/mii-ig-meta",
    "packageId" : "de.medizininformatikinitiative.kerndatensatz.meta",
    "version" : "2027.0.0-ballot.rc3"
  },
  {
    "id" : "de_medizininformatikinitiative_kerndatensatz_molgen",
    "uri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/ImplementationGuide/mii-ig-molgen",
    "packageId" : "de.medizininformatikinitiative.kerndatensatz.molgen",
    "version" : "2027.0.0-ballot.rc2"
  },
  {
    "id" : "de_medizininformatikinitiative_kerndatensatz_onkologie",
    "uri" : "http://fhir.org/packages/de.medizininformatikinitiative.kerndatensatz.onkologie/ImplementationGuide/de.medizininformatikinitiative.kerndatensatz.onkologie",
    "packageId" : "de.medizininformatikinitiative.kerndatensatz.onkologie",
    "version" : "2026.0.3"
  },
  {
    "id" : "de_medizininformatikinitiative_kerndatensatz_patho",
    "uri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-patho",
    "packageId" : "de.medizininformatikinitiative.kerndatensatz.patho",
    "version" : "2027.0.0-ballot.rc2"
  },
  {
    "id" : "de_medizininformatikinitiative_kerndatensatz_studie",
    "uri" : "https://www.medizininformatik-initiative.de/fhir/modul-studie/ImplementationGuide/mii-ig-studie",
    "packageId" : "de.medizininformatikinitiative.kerndatensatz.studie",
    "version" : "2027.0.0-ballot.rc1"
  },
  {
    "id" : "hl7_fhir_uv_genomics_reporting",
    "uri" : "http://hl7.org/fhir/uv/genomics-reporting/ImplementationGuide/hl7.fhir.uv.genomics-reporting",
    "packageId" : "hl7.fhir.uv.genomics-reporting",
    "version" : "3.0.0"
  },
  {
    "id" : "hl7_fhir_uv_crmi",
    "uri" : "http://hl7.org/fhir/uv/crmi/ImplementationGuide/hl7.fhir.uv.crmi",
    "packageId" : "hl7.fhir.uv.crmi",
    "version" : "2.0.0"
  },
  {
    "id" : "hl7_fhir_uv_xver_r5_r4",
    "uri" : "http://hl7.org/fhir/uv/xver/ImplementationGuide/hl7.fhir.uv.xver-r5.r4",
    "packageId" : "hl7.fhir.uv.xver-r5.r4",
    "version" : "0.1.0"
  },
  {
    "id" : "hl7_terminology_r4",
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r4",
    "version" : "7.3.0"
  },
  {
    "id" : "hl7_fhir_uv_extensions_r4",
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r4",
    "version" : "5.3.0"
  }],
  "definition" : {
    "extension" : [{
      "extension" : [{
        "url" : "code",
        "valueString" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2024+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "release"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "i18n-default-lang"
      },
      {
        "url" : "value",
        "valueString" : "en"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "i18n-lang"
      },
      {
        "url" : "value",
        "valueString" : "de"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "translation-sources"
      },
      {
        "url" : "value",
        "valueString" : "input/translations/de"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludexml"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludejson"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludettl"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludemap"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "init"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "progress"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "context"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "tx"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "pin-canonicals"
      },
      {
        "url" : "value",
        "valueString" : "pin-all"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-expansion-params"
      },
      {
        "url" : "value",
        "valueString" : "../../input/resources/Parameters-expansion-manifest.json"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "pin-manifest"
      },
      {
        "url" : "value",
        "valueString" : "mii-param-mtb-manifest"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "suppress-mappings"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/v3"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "suppress-mappings"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/v3/cda"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://dnpm-dip.net/fhir/StructureDefinition/dnpm-lm-care-plan"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://dnpm-dip.net/fhir/StructureDefinition/dnpm-lm-ngs-report"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://dnpm-dip.net/fhir/StructureDefinition/dnpm-lm-patient-record"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.medizininformatik-initiative.de/fhir/modul-mtb/CapabilityStatement/metadata"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "wantGen-ttl"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "wantGen-ttl-html"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/expansion-parameters",
      "valueReference" : {
        "reference" : "Parameters/expansion-parameters"
      }
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r4#1.1.2"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2024+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "release"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "i18n-default-lang"
      },
      {
        "url" : "value",
        "valueString" : "en"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "i18n-lang"
      },
      {
        "url" : "value",
        "valueString" : "de"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "translation-sources"
      },
      {
        "url" : "value",
        "valueString" : "input/translations/de"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludexml"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludejson"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludettl"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludemap"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "init"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "progress"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "context"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "logging"
      },
      {
        "url" : "value",
        "valueString" : "tx"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "pin-canonicals"
      },
      {
        "url" : "value",
        "valueString" : "pin-all"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-expansion-params"
      },
      {
        "url" : "value",
        "valueString" : "../../input/resources/Parameters-expansion-manifest.json"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "pin-manifest"
      },
      {
        "url" : "value",
        "valueString" : "mii-param-mtb-manifest"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "suppress-mappings"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/v3"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "suppress-mappings"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/v3/cda"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://dnpm-dip.net/fhir/StructureDefinition/dnpm-lm-care-plan"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://dnpm-dip.net/fhir/StructureDefinition/dnpm-lm-ngs-report"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://dnpm-dip.net/fhir/StructureDefinition/dnpm-lm-patient-record"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://www.medizininformatik-initiative.de/fhir/modul-mtb/CapabilityStatement/metadata"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "wantGen-ttl"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "wantGen-ttl-html"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClaimResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ClaimResponse-MII-EXA-MTB-Antwort-Kostenuebernahme-1.html"
      }],
      "reference" : {
        "reference" : "ClaimResponse/MII-EXA-MTB-Antwort-Kostenuebernahme-1"
      },
      "name" : "01.05.2023 Krankenkassenantrag Mirvetuximab soravtansine genehmigt",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-antwort-kostenuebernahme"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-3.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-3"
      },
      "name" : "07.08.2023 Z3 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemtherapie-medication-statement"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Claim"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Claim-MII-EXA-MTB-Antrag-Kostenuebernahme-1.html"
      }],
      "reference" : {
        "reference" : "Claim/MII-EXA-MTB-Antrag-Kostenuebernahme-1"
      },
      "name" : "10.03.2023 Krankenkassenantrag gestellt Mirvetuximab soravtansine",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-antrag-kostenuebernahme"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-6.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-6"
      },
      "name" : "12.10.2023 Z6 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemtherapie-medication-statement"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-2.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-2"
      },
      "name" : "16.07.2023 Z2 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemtherapie-medication-statement"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-MII-EXA-MTB-Response-Befund-1.html"
      }],
      "reference" : {
        "reference" : "Observation/MII-EXA-MTB-Response-Befund-1"
      },
      "name" : "20.08.2023 CT T/A",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-response-befund"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-5.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-5"
      },
      "name" : "20.09.2023 Z5 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemtherapie-medication-statement"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-MII-EXA-MTB-Response-Befund-2.html"
      }],
      "reference" : {
        "reference" : "Observation/MII-EXA-MTB-Response-Befund-2"
      },
      "name" : "22.10.2023 CT T/A",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-response-befund"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-MII-EXA-MTB-Systemische-Therapie-1.html"
      }],
      "reference" : {
        "reference" : "Procedure/MII-EXA-MTB-Systemische-Therapie-1"
      },
      "name" : "24.06.2023 - 12.10.2023 Mirvetuximab soravtansine",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-therapie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-1.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-1"
      },
      "name" : "24.06.2023 Z1 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemtherapie-medication-statement"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-Beispiel-1.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-Beispiel-1"
      },
      "name" : "24.06.2023 Z1 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemtherapie-medication-statement"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-MII-EXA-MTB-Systemische-Therapie-Medication-4.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/MII-EXA-MTB-Systemische-Therapie-Medication-4"
      },
      "name" : "29.08.2023 Z4 Mirvetuximab soravtansine 6mg/kg KG, Wdh d22",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemtherapie-medication-statement"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ResearchStudy"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ResearchStudy-mii-exa-mtb-study-cldn6.html"
      }],
      "reference" : {
        "reference" : "ResearchStudy/mii-exa-mtb-study-cldn6"
      },
      "name" : "A Clinical Study of the Safety and Effectiveness of an Investigational Cell Therapy Given With and Without an Investigational RNA-based Vaccine in Patients With Organ Tumors",
      "description" : "This is a Phase I, FIH, open-label, multicenter, dose escalation trial with expansion cohorts to evaluate safety and preliminary efficacy of claudin 6 (CLDN6) chimeric antigen receptor T cells (CAR-T) with or without CLDN6 ribonucleic acid lipoplexes (RNA-LPX) in patients with CLDN6-positive relapsed or refractory advanced solid tumors.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-studie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationRequest-mii-exa-mtb-medication-request-adavosertib.html"
      }],
      "reference" : {
        "reference" : "MedicationRequest/mii-exa-mtb-medication-request-adavosertib"
      },
      "name" : "Adavosertib",
      "description" : "Therapieempfehlung: Adavosertib",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "RequestGroup"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "RequestGroup-mii-exa-mtb-request-group-adavosertib-carboplatin.html"
      }],
      "reference" : {
        "reference" : "RequestGroup/mii-exa-mtb-request-group-adavosertib-carboplatin"
      },
      "name" : "Adavosertib +/- Carboplatin",
      "description" : "Therapieempfehlung Kombinationstherapie: Adavosertib +/- Carboplatin",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung-kombination"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-MII-EXA-MTB-DNA-Fusion-1.html"
      }],
      "reference" : {
        "reference" : "Observation/MII-EXA-MTB-DNA-Fusion-1"
      },
      "name" : "Beispiel DNA-Fusion",
      "description" : "Beispiel fuer eine DNA-Fusion in Tumorzellen.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-dna-fusion"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-MII-EXA-MTB-Diagnostische-Implikation-1.html"
      }],
      "reference" : {
        "reference" : "Observation/MII-EXA-MTB-Diagnostische-Implikation-1"
      },
      "name" : "Beispiel fuer BRAF Mutation MTB Diagnostische Implikation",
      "description" : "Beispiel fuer diagnostische Implikation im Kontext des Molecular Tumor Boards basierend auf einer BRAF-Mutation.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-diagnostische-implikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-MII-EXA-MTB-BRCAness-1.html"
      }],
      "reference" : {
        "reference" : "Observation/MII-EXA-MTB-BRCAness-1"
      },
      "name" : "Beispiel fuer BRCAness-Analyse",
      "description" : "Dieses Beispiel beschreibt eine BRCAness-Analyse, die das Verhalten eines Tumors in Bezug auf BRCA-ähnliche Eigenschaften darstellt.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-brcaness"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-MII-EXA-MTB-Copy-Number-Variant-1.html"
      }],
      "reference" : {
        "reference" : "Observation/MII-EXA-MTB-Copy-Number-Variant-1"
      },
      "name" : "Beispiel fuer Copy Number Variant",
      "description" : "Beispiel fuer eine Copy Number Variant (CNV).",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-copy-number-variant"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClaimResponse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ClaimResponse-MII-EXA-MTB-Antwort-Kostenuebernahme-Beispiel-1.html"
      }],
      "reference" : {
        "reference" : "ClaimResponse/MII-EXA-MTB-Antwort-Kostenuebernahme-Beispiel-1"
      },
      "name" : "Beispiel fuer eine Antwort auf den Antrag auf Kostenuebernahme",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-antwort-kostenuebernahme"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClinicalImpression"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ClinicalImpression-MII-EXA-MTB-Follow-Up-ClinicalImpression-Beispiel-1.html"
      }],
      "reference" : {
        "reference" : "ClinicalImpression/MII-EXA-MTB-Follow-Up-ClinicalImpression-Beispiel-1"
      },
      "name" : "Beispiel fuer eine Follow-Up Clinical Impression ",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-follow-up-clinicalimpression"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-MII-EXA-MTB-Systemtherapie-Beispiel-1.html"
      }],
      "reference" : {
        "reference" : "Procedure/MII-EXA-MTB-Systemtherapie-Beispiel-1"
      },
      "name" : "Beispiel fuer eine Systemtherapie",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-therapie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Claim"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Claim-MII-EXA-MTB-Antrag-Kostenuebernahme-Beispiel-1.html"
      }],
      "reference" : {
        "reference" : "Claim/MII-EXA-MTB-Antrag-Kostenuebernahme-Beispiel-1"
      },
      "name" : "Beispiel fuer einen Antrag auf Kostenuebernahme",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-antrag-kostenuebernahme"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-MII-EXA-MTB-GenomicStudy-1.html"
      }],
      "reference" : {
        "reference" : "Procedure/MII-EXA-MTB-GenomicStudy-1"
      },
      "name" : "Beispiel fuer einen GenomicStudy",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-genomic-study"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-MII-EXA-MTB-GenomicStudyAnalysis-1.html"
      }],
      "reference" : {
        "reference" : "Procedure/MII-EXA-MTB-GenomicStudyAnalysis-1"
      },
      "name" : "Beispiel fuer einen GenomicStudyAnalysis",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-genomic-study-analysis"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-MII-EXA-MTB-Response-Befund-Beispiel-1.html"
      }],
      "reference" : {
        "reference" : "Observation/MII-EXA-MTB-Response-Befund-Beispiel-1"
      },
      "name" : "Beispiel fuer einen Response Befund",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-response-befund"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Device"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Device-MII-EXA-MTB-Device-Sequencer-1.html"
      }],
      "reference" : {
        "reference" : "Device/MII-EXA-MTB-Device-Sequencer-1"
      },
      "name" : "Beispiel fuer einen Sequencer",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/genomic-study-device"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Device"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Device-MII-EXA-MTB-Device-LibraryPreparation-Kit-1.html"
      }],
      "reference" : {
        "reference" : "Device/MII-EXA-MTB-Device-LibraryPreparation-Kit-1"
      },
      "name" : "Beispiel für ein Library Preparation Kit",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Device"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Device-MII-EXA-MTB-Device-SequencingKit-1.html"
      }],
      "reference" : {
        "reference" : "Device/MII-EXA-MTB-Device-SequencingKit-1"
      },
      "name" : "Beispiel für ein SequencingKit",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-MII-EXA-MTB-HRD-Score-1.html"
      }],
      "reference" : {
        "reference" : "Observation/MII-EXA-MTB-HRD-Score-1"
      },
      "name" : "Beispiel HRD-Score",
      "description" : "Beispiel fuer einen HRD-Score, der den Grad der homologen Rekombinationsdefizienz beschreibt.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-hrd-score"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-MII-EXA-MTB-Mikrosatelliteninstabilitaet-1.html"
      }],
      "reference" : {
        "reference" : "Observation/MII-EXA-MTB-Mikrosatelliteninstabilitaet-1"
      },
      "name" : "Beispiel Mikrosatelliteninstabilität",
      "description" : "Beispiel fuer Mikrosatelliteninstabilität in Tumorzellen aufgrund von MMR-Störung.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-mikrosatelliteninstabilitaet"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-MII-EXA-MTB-Mutationslast-1.html"
      }],
      "reference" : {
        "reference" : "Observation/MII-EXA-MTB-Mutationslast-1"
      },
      "name" : "Beispiel Mutationslast in Tumorprobe (MTB)",
      "description" : "Beispiel fuer die Mutationslast in einer Tumorprobe mit Bezug zu molekularem Tumorboard.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-mutationslast"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-MII-EXA-MTB-RNA-Fusion-1.html"
      }],
      "reference" : {
        "reference" : "Observation/MII-EXA-MTB-RNA-Fusion-1"
      },
      "name" : "Beispiel RNA-Fusion",
      "description" : "Beispiel fuer eine RNA-Fusion (EML4-ALK) in Tumorzellen.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-rna-fusion"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Specimen"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Specimen-mii-exa-mtb-specimen.html"
      }],
      "reference" : {
        "reference" : "Specimen/mii-exa-mtb-specimen"
      },
      "name" : "Beispiel-Probe (Tumorgewebe)",
      "description" : "Generische Tumorgewebe-Probe als Referenzziel der Profil-Beispiele.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-mii-exa-mtb-kim-diagnose.html"
      }],
      "reference" : {
        "reference" : "Condition/mii-exa-mtb-kim-diagnose"
      },
      "name" : "Bestätigte Primärdiagnose",
      "description" : "Bestätigte Primärdiagnose C48.2 für Kim Musterperson",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-diagnose-primaertumor"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-mii-exa-mtb-study-sponsor-biontech.html"
      }],
      "reference" : {
        "reference" : "Organization/mii-exa-mtb-study-sponsor-biontech"
      },
      "name" : "BioNTech Cell & Gene Therapies GmbH",
      "description" : "Sponsor: BioNTech Cell & Gene Therapies GmbH",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PractitionerRole"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "PractitionerRole-mii-exa-mtb-study-investigator-biontech.html"
      }],
      "reference" : {
        "reference" : "PractitionerRole/mii-exa-mtb-study-investigator-biontech"
      },
      "name" : "BioNTech Responsible Person",
      "description" : "Investigator: BioNTech Responsible Person, BioNTech SE",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-MII-EXA-MTB-Einfache-Variante.html"
      }],
      "reference" : {
        "reference" : "Observation/MII-EXA-MTB-Einfache-Variante"
      },
      "name" : "BRAF Variante",
      "description" : "Beispiel fuer einfache genetische Variante im BRAF Gen an Hand von NGS.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-einfache-variante"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-MTBObservationCA125-1.html"
      }],
      "reference" : {
        "reference" : "Observation/MTBObservationCA125-1"
      },
      "name" : "CA 125 Tumor Marker Observation 1",
      "description" : "22.04.2022 CA 125 42,3 IU/ml",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-MTBObservationCA125-2.html"
      }],
      "reference" : {
        "reference" : "Observation/MTBObservationCA125-2"
      },
      "name" : "CA 125 Tumor Marker Observation 2",
      "description" : "18.07.2022 CA 125 45,8 IU/ml",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-MTBObservationCA125-3.html"
      }],
      "reference" : {
        "reference" : "Observation/MTBObservationCA125-3"
      },
      "name" : "CA 125 Tumor Marker Observation 3",
      "description" : "24.10.2022 CA 125 49,7 IU/ml",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-MTBObservationCA125-4.html"
      }],
      "reference" : {
        "reference" : "Observation/MTBObservationCA125-4"
      },
      "name" : "CA 125 Tumor Marker Observation 4",
      "description" : "27.12.2022 CA 125 67,2 IU/ml",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-MTBObservationCA125-5.html"
      }],
      "reference" : {
        "reference" : "Observation/MTBObservationCA125-5"
      },
      "name" : "CA 125 Tumor Marker Observation 5",
      "description" : "24.03.2023 CA 125 43,7 IU/ml",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-MTBObservationCA125-6.html"
      }],
      "reference" : {
        "reference" : "Observation/MTBObservationCA125-6"
      },
      "name" : "CA 125 Tumor Marker Observation 6",
      "description" : "20.06.2023 CA 125 78,2 IU/ml",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationRequest-mii-exa-mtb-medication-request-camonsertib.html"
      }],
      "reference" : {
        "reference" : "MedicationRequest/mii-exa-mtb-medication-request-camonsertib"
      },
      "name" : "Camonsertib",
      "description" : "Therapieempfehlung: Camonsertib",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationRequest-mii-exa-mtb-medication-request-carboplatin.html"
      }],
      "reference" : {
        "reference" : "MedicationRequest/mii-exa-mtb-medication-request-carboplatin"
      },
      "name" : "Carboplatin",
      "description" : "Therapieempfehlung: Carboplatin",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ResearchStudy"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ResearchStudy-mii-exa-mtb-study-ccne1.html"
      }],
      "reference" : {
        "reference" : "ResearchStudy/mii-exa-mtb-study-ccne1"
      },
      "name" : "CCNE1",
      "description" : "Studie: CCNE1 ampl. OvCA",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-studie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-mii-exa-mtb-study-request-ccne1.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/mii-exa-mtb-study-request-ccne1"
      },
      "name" : "CCNE1",
      "description" : "Studieneinschlussempfehlung: CCNE1 ampl. OvCA",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-studieneinschluss-anfrage"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-mtb-kim-musterperson-CNVariante-CCNE1.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-mtb-kim-musterperson-CNVariante-CCNE1"
      },
      "name" : "CCNE1 Einfache Variante 2",
      "description" : "Kopienzahlveränderung bei einer CCNE1-Mutation",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-copy-number-variant"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationRequest-mii-exa-mtb-medication-request-cobimetinib.html"
      }],
      "reference" : {
        "reference" : "MedicationRequest/mii-exa-mtb-medication-request-cobimetinib"
      },
      "name" : "Cobimetinib",
      "description" : "Therapieempfehlung: Cobimetinib, Priorität: 6, Evidenzgrad: m3",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-dnpm-lm-care-plan.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/dnpm-lm-care-plan"
      },
      "name" : "DNPM MTB Care Plan",
      "description" : "Logical Model for a single entry in the DNPM DIP MTB Patient Record carePlans array",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-dnpm-lm-ngs-report.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/dnpm-lm-ngs-report"
      },
      "name" : "DNPM NGS Report",
      "description" : "Logical Model for a single entry in the DNPM DIP MTB Patient Record ngsReports array",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-dnpm-lm-patient-record.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/dnpm-lm-patient-record"
      },
      "name" : "DNPM Patient Record",
      "description" : "Logical Model for the DNPM DIP MTB Patient Record JSON structure (all 19 top-level keys)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-mtb-kim-musterperson-aufklaerung.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-mtb-kim-musterperson-aufklaerung"
      },
      "name" : "Einwilligung zur MTB-Besprechung Kim Musterperson",
      "description" : "Einwilligung von Kim Musterperson zur Besprechung im Molekularen Tumorboard vom 02.01.2023",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-consent-given"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-mii-exa-mtb-kim-rebiopsie-aszites.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/mii-exa-mtb-kim-rebiopsie-aszites"
      },
      "name" : "Empfehlung Biopsie",
      "description" : "Empfehlung erneute Biopsie wegen progrediente Aszites",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-biopsie-auftrag"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-mii-exa-mtb-kim-histologie-evaluation-aszites.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/mii-exa-mtb-kim-histologie-evaluation-aszites"
      },
      "name" : "Empfehlung Histologie-Evaluation",
      "description" : "Empfehlung erneute histologische Evaluation wegen progrediente Aszites",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-histologie-evaluation-auftrag"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-mii-exa-mtb-kim-humangenetische-beratung-aszites.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/mii-exa-mtb-kim-humangenetische-beratung-aszites"
      },
      "name" : "Empfehlung Human-genetische Beratung",
      "description" : "Empfehlung erneute Human-genetische Beratung wegen progrediente Aszites",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-humangenetische-beratung-auftrag"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PatientKimMusterperson-MolecularPathologyObs-FISH-0a-Her2neu-.html"
      }],
      "reference" : {
        "reference" : "Observation/PatientKimMusterperson-MolecularPathologyObs-FISH-0a-Her2neu-"
      },
      "name" : "Example In Situ Hybridization HER2/ERBB2",
      "description" : "Example of HER2 in situ hybridization with ratio measurement for patient Kim Musterperson",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-insituhybridization-her2"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClinicalImpression"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ClinicalImpression-MII-EXA-MTB-Follow-Up-ClinicalImpression-1.html"
      }],
      "reference" : {
        "reference" : "ClinicalImpression/MII-EXA-MTB-Follow-Up-ClinicalImpression-1"
      },
      "name" : "Follow-Up Prozess zur Überprüfung der durchgeführten Therapien & Kostenübernahmen",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-follow-up-clinicalimpression"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-genomic-study-device.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/genomic-study-device"
      },
      "name" : "Genomic Study Device",
      "description" : "Profil für die Abbildung von Geräten, Labormaterialien und Pipelines, die in der Genomic Study Analysis verwendet werden.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-mtb-kim-oncotree.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-mtb-kim-oncotree"
      },
      "name" : "High-Grade Neuroendocrine Carcinoma of the Ovary",
      "description" : "High-Grade Neuroendocrine Carcinoma of the Ovary (HGONEC) bei Kim Musterperson",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-oncotree"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-mtb-kim-tumorausbreitung.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-mtb-kim-tumorausbreitung"
      },
      "name" : "Lokale Tumorausbreitung",
      "description" : "Lokale Tumorausbreitung bei Kim Musterperson",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-tumorausbreitung"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationRequest-mii-exa-mtb-medication-request-lunresertib.html"
      }],
      "reference" : {
        "reference" : "MedicationRequest/mii-exa-mtb-medication-request-lunresertib"
      },
      "name" : "Lunresertib",
      "description" : "Therapieempfehlung: Lunresertib",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "RequestGroup"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "RequestGroup-mii-exa-mtb-request-group-lunresertib-camonsertib.html"
      }],
      "reference" : {
        "reference" : "RequestGroup/mii-exa-mtb-request-group-lunresertib-camonsertib"
      },
      "name" : "Lunresertib + Camonsertib",
      "description" : "Therapieempfehlung Kombinationstherapie: Lunresertib + Camonsertib, Priorität: 5, Evidenzgrad: m1B",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung-kombination"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-mii-cm-mtb-therapiestatusgrund-obds.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/mii-cm-mtb-therapiestatusgrund-obds"
      },
      "name" : "MII CM MTB Therapiestatusgrund oBDS Mapping",
      "description" : "Mapping der Codes zur Begründung des Therapiestatus nach oBDS",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ConceptMap-mii-cm-mtb-therapiestatusgrund-sct.html"
      }],
      "reference" : {
        "reference" : "ConceptMap/mii-cm-mtb-therapiestatusgrund-sct"
      },
      "name" : "MII CM MTB Therapiestatusgrund SNOMED CT Mapping",
      "description" : "Mapping der Codes zur Begründung des Therapiestatus nach SNOMED CT",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CapabilityStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CapabilityStatement-mii-cps-mtb-capabilitystatement.html"
      }],
      "reference" : {
        "reference" : "CapabilityStatement/mii-cps-mtb-capabilitystatement"
      },
      "name" : "MII CPS MTB CapabilityStatement",
      "description" : "Das vorliegende CapabilityStatement beschreibt alle verpflichtenden Interaktionen die ein konformes System unterstützen muss, um das Modul MTB der Medizininformatik Initiative zu implementieren.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-mtb-antrag-kostenuebernahme-antragsstadium.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-mtb-antrag-kostenuebernahme-antragsstadium"
      },
      "name" : "MII CS Antrag Kostenuebernahme Antragsstadium",
      "description" : "Codesystem zum Stadium des Antrags zur Kostenuebernahme nach DNPM",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-mtb-antwort-kostenuebernahme-entscheidung.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-mtb-antwort-kostenuebernahme-entscheidung"
      },
      "name" : "MII CS Antwort Kostenuebernahme Entscheidung",
      "description" : "Codesystem zum Status der Antwort zur Kostenuebernahme nach DNPM",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-mtb-bestimmungsmethode-tumorzellgehalt.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-mtb-bestimmungsmethode-tumorzellgehalt"
      },
      "name" : "MII CS Bestimmungsmethode Tumorzellgehalt",
      "description" : "Angewandte Methode zur Bestimmung des Tumorzellgehalts",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-mtb-dosisdichte.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-mtb-dosisdichte"
      },
      "name" : "MII CS Dosisdichte",
      "description" : "Codesystem für die Dosisdichte einer Medikamentengabe",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-mtb-empfehlung-evidenzgrad-nct.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-mtb-empfehlung-evidenzgrad-nct"
      },
      "name" : "MII CS Empfehlung Evidenzgrad",
      "description" : "Evidenzgrad einer Empfehlung",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-mtb-empfehlung-evidenzgrad-zusatzverweis.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-mtb-empfehlung-evidenzgrad-zusatzverweis"
      },
      "name" : "MII CS Empfehlung Evidenzgrad Zusatzverweis",
      "description" : "Zusatzverweis zum Evidenzgrad einer Empfehlung",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-mtb-empfehlung-status-begruendung.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-mtb-empfehlung-status-begruendung"
      },
      "name" : "MII CS Empfehlung Status Begründung",
      "description" : "Begründung bei fehlender Empfehlung im MTB-Beschluss",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-mtb-follow-up-status.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-mtb-follow-up-status"
      },
      "name" : "MII CS Follow-Up Status",
      "description" : "Codesystem zum Follow-Up Status",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-mtb-genomic-analysis-method-type.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-mtb-genomic-analysis-method-type"
      },
      "name" : "MII CS Genomic Analysis Method Type",
      "description" : "Codesystem, welches die verwendeten NGS-Methodiken gemäß dnpm-Kodierung high-level auflistet",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-mtb-genomicanalysis-devicefunction.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-mtb-genomicanalysis-devicefunction"
      },
      "name" : "MII CS GenomicAnalysis DeviceType",
      "description" : "Codesystem, welches verschiedene Molekulare Biomarker enthäldie verschiedenen Arten von Geräten und Produkten enthält, die im Rahmen einer NGS-Analyse genutzt werden",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-mtb-auftrag-begruendung.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-mtb-auftrag-begruendung"
      },
      "name" : "MII CS Human-genetische Beratung Auftrag Begründung",
      "description" : "Begründung zum Auftrag zur (erneuten) Human-genetischen Beratung",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-mtb-antwort-kostenuebernahme-ablehnungsgrund.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-mtb-antwort-kostenuebernahme-ablehnungsgrund"
      },
      "name" : "MII CS Kostenuebernahme Ablehnungsgrund",
      "description" : "Codesystem zum Grund der Ablehnung der Kostenuebernahme nach DNPM",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-mtb-leitlinienbehandlung-status.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-mtb-leitlinienbehandlung-status"
      },
      "name" : "MII CS Leitlinienbehandlung Status",
      "description" : "Status der Behandlung nach Leitlinie",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-mtb-molekulare-biomarker.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-mtb-molekulare-biomarker"
      },
      "name" : "MII CS Molekulare Biomarker",
      "description" : "Codesystem, welches verschiedene Molekulare Biomarker enthält, die nicht in anderen offenen semantischen Standards wie LOINC oder SNOMED-CT abgebildet sind",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-mtb-msi-method-type.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-mtb-msi-method-type"
      },
      "name" : "MII CS MSI Method Type",
      "description" : "Codesystem, welches die verwendete MSI-Bestimmungsmethode gemäß dnpm-Kodierung auflistet.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-mtb-response-befund-beurteilung.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-mtb-response-befund-beurteilung"
      },
      "name" : "MII CS Response Befund Beurteilung",
      "description" : "Codesystem für die Beurteilung des Response Befund",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-mtb-response-befund-beurteilungsmethode.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-mtb-response-befund-beurteilungsmethode"
      },
      "name" : "MII CS Response Befund Beurteilungsmethode",
      "description" : "Codesystem für die Beurteilungsmethode eines Response Befunds",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-mtb-therapiestatusgrund.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-mtb-therapiestatusgrund"
      },
      "name" : "MII CS Therapiestatusgrund",
      "description" : "Codesystem zum Status Grund der Systemischen Therapie nach DNPM",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-mii-cs-mtb-zulassungsstatus.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/mii-cs-mtb-zulassungsstatus"
      },
      "name" : "MII CS Zulassungsstatus",
      "description" : "Angabe zum Zulassungsstatus",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-mtb-genomic-study-analysis-qc.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-mtb-genomic-study-analysis-qc"
      },
      "name" : "MII EX MTB Antrag GenomicsStudyAnalysis Metrics",
      "description" : "Sequenzierbezogenen Metriken der Genomic Study Analysis",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-mtb-antrag-kostenuebernahme-antragsstadium.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-mtb-antrag-kostenuebernahme-antragsstadium"
      },
      "name" : "MII EX MTB Antrag Kostenuebernahme Antragsstadium",
      "description" : "Stadium des Antrags zur Kostenuebernahme",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-mtb-antwort-kostenuebernahme-ablehnungsgrund.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-mtb-antwort-kostenuebernahme-ablehnungsgrund"
      },
      "name" : "MII EX MTB Antwort Kostenuebernahme Ablehnungsgrund",
      "description" : "Ablehnungsgrund des Antrags auf Kostenuebernahme",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-mtb-antwort-kostenuebernahme-entscheidung.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-mtb-antwort-kostenuebernahme-entscheidung"
      },
      "name" : "MII EX MTB Antwort Kostenuebernahme Entscheidung",
      "description" : "Entscheidung zum Antrag zur Kostenuebernahme",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-mtb-diagnose.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-mtb-diagnose"
      },
      "name" : "MII EX MTB Diagnose",
      "description" : "Onkologische Diagnose",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-mtb-empfehlung-evidenzgraduierung.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-mtb-empfehlung-evidenzgraduierung"
      },
      "name" : "MII EX MTB Empfehlung Evidenzgraduierung",
      "description" : "Evidenzgraduierung der (einzelnen) Empfehlung",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-mtb-empfehlung-prioritaet.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-mtb-empfehlung-prioritaet"
      },
      "name" : "MII EX MTB Empfehlung Priorität",
      "description" : "Priorität der (einzelnen) Empfehlung",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-mtb-empfehlung-publikation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-mtb-empfehlung-publikation"
      },
      "name" : "MII EX MTB Empfehlung Publikation",
      "description" : "Verweis auf Publikation der (einzelnen) Empfehlung",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-mtb-leitlinie-dokumentation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-mtb-leitlinie-dokumentation"
      },
      "name" : "MII EX MTB Leitlinie Dokumentation",
      "description" : "Dokumentation zur Leitlinien-konformen Umsetzung der Prozedur",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-mtb-leitlinienbehandlung-status.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-mtb-leitlinienbehandlung-status"
      },
      "name" : "MII EX MTB Leitlinienbehandlung Status",
      "description" : "Status der Behandlung nach Leitlinie",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-ex-mtb-ngs-bericht-genomic-study.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-ex-mtb-ngs-bericht-genomic-study"
      },
      "name" : "MII EX MTB NGS Bericht Metadaten",
      "description" : "Metadaten des NGS-Berichts",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-lm-mtb.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-lm-mtb"
      },
      "name" : "MII LM Molekulares Tumorboard",
      "description" : "MII Logical Model Modul Molekulares Tumorboard",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "NamingSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "NamingSystem-mii-ns-mtb-nct.html"
      }],
      "reference" : {
        "reference" : "NamingSystem/mii-ns-mtb-nct"
      },
      "name" : "MII NS MTB NCT",
      "description" : "NamingSystem für Identifikatoren des Nationalen Centrums für Tumorerkrankungen (NCT)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "NamingSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "NamingSystem-mii-ns-studie-drks.html"
      }],
      "reference" : {
        "reference" : "NamingSystem/mii-ns-studie-drks"
      },
      "name" : "MII NS Studie DRKS",
      "description" : "NamingSystem für Identifikatoren des Deutschen Register Klinischer Studien (DRKS)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "NamingSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "NamingSystem-mii-ns-studie-eudract.html"
      }],
      "reference" : {
        "reference" : "NamingSystem/mii-ns-studie-eudract"
      },
      "name" : "MII NS Studie EudraCT",
      "description" : "NamingSystem für Identifikatoren der European Union Drug Regulating Authorities Clinical Trials (EudraCT)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mtb-biomarker-her2-status.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mtb-biomarker-her2-status"
      },
      "name" : "MII PR Biomarker Her2 Status",
      "description" : "...",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mtb-antrag-kostenuebernahme.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mtb-antrag-kostenuebernahme"
      },
      "name" : "MII PR MTB Antrag Kostenuebernahme",
      "description" : "Antrag Kostenübernahme",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mtb-antwort-kostenuebernahme.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mtb-antwort-kostenuebernahme"
      },
      "name" : "MII PR MTB Anwort Kostenuebernahme",
      "description" : "Antwort auf Antrag Kostenübernahme",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mtb-behandlungsepisode.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mtb-behandlungsepisode"
      },
      "name" : "MII PR MTB Behandlungsepisode",
      "description" : "Aktueller Krankheitszustand und bisherige Behandlungsmaßnahmen",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClinicalImpression"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ClinicalImpression-mii-exa-mtb-behandlungsepisode-1.html"
      }],
      "reference" : {
        "reference" : "ClinicalImpression/mii-exa-mtb-behandlungsepisode-1"
      },
      "name" : "MII PR MTB Behandlungsepisode Beispiel",
      "description" : "Beispiel für aktuellen Gesundheitszustand und bisherige Behandlungsmaßnahmen",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-behandlungsepisode"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mtb-biopsie-auftrag.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mtb-biopsie-auftrag"
      },
      "name" : "MII PR MTB Biopsie Auftrag",
      "description" : "Auftrag zur (erneuten) Biopsie",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mtb-brcaness.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mtb-brcaness"
      },
      "name" : "MII PR MTB BRCAness",
      "description" : "Beschreibt die BRCAness, also wie sehr ein Tumor ein Verhalten zeigt, welches BRCA1- oder BRCA2-Mutationen entspricht. Die BRCAness ist ein Indikator für die Wirksamkeit von PARP-Inhibitoren.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mtb-follow-up-clinicalimpression.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mtb-follow-up-clinicalimpression"
      },
      "name" : "MII PR MTB Clinical Impresssion",
      "description" : "Follow-Up als Prozess des Einholens von Informationen über durchgeführte Therapien & Kostenuebernahmen",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mtb-consent-given.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mtb-consent-given"
      },
      "name" : "MII PR MTB Consent",
      "description" : "Beschreibt, ob und wann der Consent zum Einschluss ins MTB gegeben wurde.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mtb-copy-number-variant.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mtb-copy-number-variant"
      },
      "name" : "MII PR MTB Copy Number Variant",
      "description" : "Copy Number Variant (CNV)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mtb-diagnose-primaertumor.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mtb-diagnose-primaertumor"
      },
      "name" : "MII PR MTB Diagnose Primärtumor",
      "description" : "Diagnose zum Primärtumor",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mtb-diagnostische-implikation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mtb-diagnostische-implikation"
      },
      "name" : "MII PR MTB Diagnostische Implikation",
      "description" : "Beschreibt den Zusammenhang zwischen einem oder mehreren Genotyp/Haplotyp/Varianten und Beweisen für oder gegen eine bestimmte Krankheit.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mtb-dna-fusion.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mtb-dna-fusion"
      },
      "name" : "MII PR MTB DNA Fusion",
      "description" : "DNA-Fusion",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mtb-einfache-variante.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mtb-einfache-variante"
      },
      "name" : "MII PR MTB Einfache Variante",
      "description" : "Beschreibt eine gefundene genetische Variante.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mtb-genomic-study.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mtb-genomic-study"
      },
      "name" : "MII PR MTB Genomic Study",
      "description" : "Genomic Study beinhaltet und verweist über GenomicStudyAnalysis auf Details zu den einzelnen Untersuchungen einer NGS-Untersuchung (Sequenzierung, Variant Calling, CNV-Analyse, Fusions-Analysen etc.)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mtb-genomic-study-analysis.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mtb-genomic-study-analysis"
      },
      "name" : "MII PR MTB Genomic Study Analysis",
      "description" : "Die Genomic Study Analysis beschreibt die Methodik einer bestimmten molekulargenetischen Untersuchung.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mtb-histologie-evaluation-auftrag.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mtb-histologie-evaluation-auftrag"
      },
      "name" : "MII PR MTB Histologie-Evaluation Auftrag",
      "description" : "Auftrag zur (erneuten) Histologie-Evaluation",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mtb-hrd-score.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mtb-hrd-score"
      },
      "name" : "MII PR MTB HRD Score",
      "description" : "Der HRD-Score, welcher den Grad der homologen Rekombinationsdefizienz bei Zellen beschreibt.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mtb-humangenetische-beratung-auftrag.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mtb-humangenetische-beratung-auftrag"
      },
      "name" : "MII PR MTB Human-genetische Beratung Auftrag",
      "description" : "Auftrag zur (erneuten) Human-genetischen Beratung",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mtb-immunohistochemistry.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mtb-immunohistochemistry"
      },
      "name" : "MII PR MTB Immunohistochemistry",
      "description" : "Immunhistorchemistry report",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mtb-immunohistochemistry-her2.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mtb-immunohistochemistry-her2"
      },
      "name" : "MII PR MTB Immunohistochemistry",
      "description" : "Immunhistrchemistry report",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mtb-immunohistochemistry-pdl1.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mtb-immunohistochemistry-pdl1"
      },
      "name" : "MII PR MTB Immunohistochemistry",
      "description" : "Immunhistorchemistry report",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mtb-msi.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mtb-msi"
      },
      "name" : "MII PR MTB Immunohistochemistry Microsatellite Instability",
      "description" : "Immunhistorchemistry report",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mtb-immunohistochemistry-mmr.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mtb-immunohistochemistry-mmr"
      },
      "name" : "MII PR MTB Immunohistochemistry Mismatch Repair Status",
      "description" : "Immunhistorchemistry report",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mtb-immunohistochemistry-phosphorylation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mtb-immunohistochemistry-phosphorylation"
      },
      "name" : "MII PR MTB Immunohistochemistry Phosphorylation",
      "description" : "Immunhistorchemistry report",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mtb-insituhybridization.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mtb-insituhybridization"
      },
      "name" : "MII PR MTB In Situ Hybridization",
      "description" : "Molekularer Biomarker - In Situ Hybridization Profil. Unterstützt FISH, CISH und SISH Methoden.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mtb-insituhybridization-her2.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mtb-insituhybridization-her2"
      },
      "name" : "MII PR MTB In Situ Hybridization HER2",
      "description" : "HER2/ERBB2 In Situ Hybridization (FISH) Bericht. Basiert auf LOINC Panel 74885-5.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mtb-mikrosatelliteninstabilitaet.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mtb-mikrosatelliteninstabilitaet"
      },
      "name" : "MII PR MTB Mikrosatelliteninstabilität",
      "description" : "Beschreibt die Neigung zu Mutationen aufgrund einer gestörten Fehlpaarungsreparatur (DNA mismatch repair, MMR).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mtb-molecular-pathology-report.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mtb-molecular-pathology-report"
      },
      "name" : "MII PR MTB Molecular Pathology Report",
      "description" : "Molecular pathology report",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mtb-molekularer-biomarker.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mtb-molekularer-biomarker"
      },
      "name" : "MII PR MTB Molekularer Biomarker",
      "description" : "Stellt einen gefundenden Biomarker dar. Das Profil ist auf Basis von https://build.fhir.org/ig/HL7/genomics-reporting/StructureDefinition-molecular-biomarker.html nachgebaut.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mtb-mutationslast.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mtb-mutationslast"
      },
      "name" : "MII PR MTB Mutationslast",
      "description" : "Beschreibt die Gesamtzahl von in Krebszellen gefundenen Mutationen pro 1 Mio. Basen.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mtb-ngs-bericht.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mtb-ngs-bericht"
      },
      "name" : "MII PR MTB NGS-Bericht",
      "description" : "NGS-Bericht zu einer Probe",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mtb-oncotree.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mtb-oncotree"
      },
      "name" : "MII PR MTB Oncotree Klassifikation",
      "description" : "Grad des Tumors nach MSKCC Oncotree Klassifikation",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mtb-ploidie.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mtb-ploidie"
      },
      "name" : "MII PR MTB Ploidie",
      "description" : "Beschreibt die Gesamtploidie des Tumors. Die Ploidie ist ein Indikator für die Tumorproliferation und die Tumoraggressivität.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mtb-response-befund.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mtb-response-befund"
      },
      "name" : "MII PR MTB Response Befund",
      "description" : "Response Beurteilung nach DNPM",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mtb-rna-fusion.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mtb-rna-fusion"
      },
      "name" : "MII PR MTB RNA Fusion",
      "description" : "RNA-Fusion",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mtb-rna-seq.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mtb-rna-seq"
      },
      "name" : "MII PR MTB RNA Seq",
      "description" : "RNA Seq",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mtb-studie.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mtb-studie"
      },
      "name" : "MII PR MTB Studie",
      "description" : "Onkologische Studie",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mtb-studieneinschluss-anfrage.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mtb-studieneinschluss-anfrage"
      },
      "name" : "MII PR MTB Studieneinschluss Anfrage",
      "description" : "Anfrage zum Studieneinschluss",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mtb-systemische-therapie.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mtb-systemische-therapie"
      },
      "name" : "MII PR MTB Systemische Therapie",
      "description" : "Systemische Therapie im Follow-Up nach Abschluss des MTB",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mtb-systemische-vortherapie.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mtb-systemische-vortherapie"
      },
      "name" : "MII PR MTB Systemische Vortherapie",
      "description" : "Systemische Vortherapie zum Molekularen Tumorboard",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mtb-systemtherapie-medication-statement.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mtb-systemtherapie-medication-statement"
      },
      "name" : "MII PR MTB Systemtherapie Medication Statement",
      "description" : "Medication Statement zur MTB-Systemtherapie mit Wirkstoff und Dosis",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mtb-therapeutische-implikation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mtb-therapeutische-implikation"
      },
      "name" : "MII PR MTB Therapeutische Implikation",
      "description" : "Das Profil beschreibt den möglichen Einfluss genetischer Merkmale auf eine medikamentöse oder nicht-medikamentöse Therapie.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mtb-therapieempfehlung-kombination.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mtb-therapieempfehlung-kombination"
      },
      "name" : "MII PR MTB Therapieempfehlung Kombinationstherapie",
      "description" : "Therapieempfehlung für eine medikamentöse Kombinationstherapie",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mtb-therapieempfehlung.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mtb-therapieempfehlung"
      },
      "name" : "MII PR MTB Therapieempfehlung Systemische Therapie",
      "description" : "Therapieempfehlung für eine medikamentöse Systemische Therapie",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mtb-therapieplan.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mtb-therapieplan"
      },
      "name" : "MII PR MTB Therapieplan",
      "description" : "Therapieplan gemäß Beschluss des Molekularen Tumorboards",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mtb-tumorausbreitung.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mtb-tumorausbreitung"
      },
      "name" : "MII PR MTB Tumorausbreitung",
      "description" : "Angabe zur Tumorausbreitung",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mtb-tumorzellgehalt.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mtb-tumorzellgehalt"
      },
      "name" : "MII PR MTB Tumorzellgehalt",
      "description" : "Bestimmter Tumorzellgehalt",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-mii-pr-mtb-who-grad-tumor-zns.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/mii-pr-mtb-who-grad-tumor-zns"
      },
      "name" : "MII PR MTB WHO Grad Tumor ZNS",
      "description" : "Grad des Tumors nach WHO Klassifikation der Tumoren des zentralen Nervensystems (ZNS)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-mtb-who-grad-tumor-zns-1.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-mtb-who-grad-tumor-zns-1"
      },
      "name" : "MII PR MTB WHO Grad Tumor ZNS",
      "description" : "Beispiel für WHO Grad Tumor",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-who-grad-tumor-zns"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mtb-antrag-kostenuebernahme-antragsstadium.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mtb-antrag-kostenuebernahme-antragsstadium"
      },
      "name" : "MII VS Antrag Kostenuebernahme Antragsstadium",
      "description" : "ValueSet zum Stadium des Antrags zur Kostenuebernahme",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mtb-antwort-kostenuebernahme-entscheidung.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mtb-antwort-kostenuebernahme-entscheidung"
      },
      "name" : "MII VS Antwort Kostenuebernahme Entscheidung",
      "description" : "ValueSet zur Entscheidung der Antwort auf den Antrags zur Kostenuebernahme",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mtb-auftrag-begruendung.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mtb-auftrag-begruendung"
      },
      "name" : "MII VS Auftrag Begründung",
      "description" : "ValueSet für Begründung zum Auftrag zur (erneuten) Untersuchung oder Diagnostik",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mtb-bestimmungsmethode-tumorzellgehalt.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mtb-bestimmungsmethode-tumorzellgehalt"
      },
      "name" : "MII VS Bestimmungsmethode Tumorzellgehalt",
      "description" : "ValueSet für Angewandte Methode zur Bestimmung des Tumorzellgehalts",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mtb-dosisdichte.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mtb-dosisdichte"
      },
      "name" : "MII VS Dosisdichte",
      "description" : "ValueSet zur Dosisdichte",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mtb-empfehlung-evidenzgrad.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mtb-empfehlung-evidenzgrad"
      },
      "name" : "MII VS Empfehlung Evidenzgrad",
      "description" : "ValueSet für den Evidenzgrad einer Empfehlung",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mtb-empfehlung-evidenzgrad-zusatzverweis.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mtb-empfehlung-evidenzgrad-zusatzverweis"
      },
      "name" : "MII VS Empfehlung Evidenzgrad Zusatzverweis",
      "description" : "ValueSet für den Zusatzverweis zum Evidenzgrad einer Empfehlung",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mtb-empfehlung-status-begruendung.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mtb-empfehlung-status-begruendung"
      },
      "name" : "MII VS Empfehlung Status Begründung",
      "description" : "ValueSet für Begründung bei fehlender Empfehlung im MTB-Beschluss",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mtb-follow-grund-nicht-umsetzung.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mtb-follow-grund-nicht-umsetzung"
      },
      "name" : "MII VS Follow-Up Grund Nicht-Umsetzung",
      "description" : "ValueSet zum Follow-Up Grund Nicht-Umsetzung des Therapieplans. Abgeleitet von mii-cs-mtb-systemische-therapie-status-grund",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mtb-follow-up-status.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mtb-follow-up-status"
      },
      "name" : "MII VS Follow-Up Status",
      "description" : "ValueSet zum Follow-Up Status",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mtb-genomic-analysis-method-type.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mtb-genomic-analysis-method-type"
      },
      "name" : "MII VS Genomic Analysis Method Type",
      "description" : "ValueSet, dass die ursprünglich vom HL7 Clinical Genomics vorgeschlagenen Antwortmöglichkeiten für Genomic Study Analysis Method Type mit dem vom dnpm dekalrierten Antwortspektrum vereint",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mtb-antwort-kostenuebernahme-ablehnungsgrund.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mtb-antwort-kostenuebernahme-ablehnungsgrund"
      },
      "name" : "MII VS Kostenuebernahme Ablehnungsgrund",
      "description" : "ValueSet zum Grund der Ablehnung des Antrags zur Kostenuebernahme",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mtb-leitlinienbehandlung-status.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mtb-leitlinienbehandlung-status"
      },
      "name" : "MII VS Leitlinienbehandlung Status",
      "description" : "ValueSet zum Status der Behandlung nach Leitlinie",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mtb-msi.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mtb-msi"
      },
      "name" : "MII VS Mikrosatelliteninstabilität",
      "description" : "ValueSet zum MSI-Status auf Basis von Immunhistochemie, basierend auf der LOINC-AnswerList LL1057-0 Stable|Unstable|Indeterminate",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mtb-mmr-proficiency.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mtb-mmr-proficiency"
      },
      "name" : "MII VS Mismatch Repair Protein Proficiency",
      "description" : "ValueSet zum MMR-Protein-Proficiency auf Basis von Immunhistochemie",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mtb-mmr-expression.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mtb-mmr-expression"
      },
      "name" : "MII VS Mismatch Repair Proteins Expression",
      "description" : "ValueSet zum MMR-Protein-Expression auf Basis von Immunhistochemie, basierend auf der LOINC-AnswerList LL3993-4 Intact nuc express|Loss of nuc express|Undet",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mtb-molekulare-biomarker.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mtb-molekulare-biomarker"
      },
      "name" : "MII VS Molekulare Biomarker",
      "description" : "ValueSet zum CS Molekulare Biomarker",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mtb-msi-method-type.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mtb-msi-method-type"
      },
      "name" : "MII VS MSI Method Type",
      "description" : "ValueSet zum CS MSI Method Type",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mtb-antrag-kostenuebernahme.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mtb-antrag-kostenuebernahme"
      },
      "name" : "MII VS MTB Antrag Kostenuebernahme",
      "description" : "MII Logical Model Modul Molekulares Tumorboard",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mtb-immunohistochemistry-specific-codes.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mtb-immunohistochemistry-specific-codes"
      },
      "name" : "MII VS MTB Immunhistochemistry Specific Codes",
      "description" : "Spezifische LOINC und SNOMED Codes für immunhistochemische Untersuchungen. Diese Codes werden für das Slice 'spezifisch' im Immunohistochemistry Profil verwendet.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mtb-ish-method.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mtb-ish-method"
      },
      "name" : "MII VS MTB ISH Method",
      "description" : "In Situ Hybridization technique methods (FISH, CISH, SISH)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mtb-systemische-therapie-status.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mtb-systemische-therapie-status"
      },
      "name" : "MII VS MTB Systemtherapie Status",
      "description" : "Einschränkung der Status für Systemtherapie",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mtb-oncotree.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mtb-oncotree"
      },
      "name" : "MII VS OncoTree ValueSet",
      "description" : "ValueSet der MSKCC OncoTree Klassifikationen",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mtb-beurteilungsmethode-response-befund.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mtb-beurteilungsmethode-response-befund"
      },
      "name" : "MII VS Response Befund Beurteilung",
      "description" : "ValueSet Beurteilungsmethode eines Response Befunds",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mtb-response-befund-beurteilung.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mtb-response-befund-beurteilung"
      },
      "name" : "MII VS Response Befund Beurteilung",
      "description" : "ValueSet Response Befund Beurteilung",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mtb-therapiestatusgrund.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mtb-therapiestatusgrund"
      },
      "name" : "MII VS Therapiestatusgrund",
      "description" : "ValueSet zum Therapiestatusgrund",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mtb-tumorausbreitung.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mtb-tumorausbreitung"
      },
      "name" : "MII VS Tumorausbreitung",
      "description" : "ValueSet zur Angabe der Tumorausbreitung",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mtb-who-grad-tumor-zns.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mtb-who-grad-tumor-zns"
      },
      "name" : "MII VS WHO Grad Tumor ZNS",
      "description" : "ValueSet zum Grad eines Tumors nach WHO-Klassifikation der Tumoren des zentralen Nervensystems",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-mii-vs-mtb-zulassungsstatus.html"
      }],
      "reference" : {
        "reference" : "ValueSet/mii-vs-mtb-zulassungsstatus"
      },
      "name" : "MII VS Zulassungsstatus",
      "description" : "ValueSet zum Zulassungsstatus",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-mii-exa-mtb-kim-musterperson-bundle.html"
      }],
      "reference" : {
        "reference" : "Bundle/mii-exa-mtb-kim-musterperson-bundle"
      },
      "name" : "mii-exa-mtb-kim-musterperson-bundle",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-mii-exa-mtb-patient.html"
      }],
      "reference" : {
        "reference" : "Patient/mii-exa-mtb-patient"
      },
      "name" : "mii-exa-mtb-patient",
      "description" : "Beispiel-Patient für Therapieplan mit Therapieempfehlung für Dabrafenib/Trametinib-Kombinationstherapie",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationRequest-mii-exa-mtb-therapieempfehlung-dabrafenib.html"
      }],
      "reference" : {
        "reference" : "MedicationRequest/mii-exa-mtb-therapieempfehlung-dabrafenib"
      },
      "name" : "mii-exa-mtb-therapieempfehlung-dabrafenib",
      "description" : "Therapieempfehlung für Dabrafenib",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "RequestGroup"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "RequestGroup-mii-exa-mtb-therapieempfehlung-kombinationstherapie.html"
      }],
      "reference" : {
        "reference" : "RequestGroup/mii-exa-mtb-therapieempfehlung-kombinationstherapie"
      },
      "name" : "mii-exa-mtb-therapieempfehlung-kombinationstherapie",
      "description" : "Therapieempfehlung für Dabrafenib/Trametinib-Kombinationstherapie",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung-kombination"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationRequest-mii-exa-mtb-therapieempfehlung-trametinib.html"
      }],
      "reference" : {
        "reference" : "MedicationRequest/mii-exa-mtb-therapieempfehlung-trametinib"
      },
      "name" : "mii-exa-mtb-therapieempfehlung-trametinib",
      "description" : "Therapieempfehlung für Trametinib",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CarePlan"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CarePlan-mii-exa-mtb-therapieplan-kombinationstherapie.html"
      }],
      "reference" : {
        "reference" : "CarePlan/mii-exa-mtb-therapieplan-kombinationstherapie"
      },
      "name" : "mii-exa-mtb-therapieplan-kombinationstherapie",
      "description" : "Therapieplan mit Therapieempfehlung für Dabrafenib/Trametinib-Kombinationstherapie",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieplan"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-onko-allgemeiner-leistungszustand-ecog.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-onko-allgemeiner-leistungszustand-ecog"
      },
      "name" : "mii-exa-onko-allgemeiner-leistungszustand-ecog",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Parameters"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Parameters-mii-param-mtb-manifest.html"
      }],
      "reference" : {
        "reference" : "Parameters/mii-param-mtb-manifest"
      },
      "name" : "mii-param-mtb-manifest",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationRequest-mii-exa-mtb-medication-request-mirvetuximab.html"
      }],
      "reference" : {
        "reference" : "MedicationRequest/mii-exa-mtb-medication-request-mirvetuximab"
      },
      "name" : "Mirvetuximab soravtansine",
      "description" : "Therapieempfehlung: Mirvetuximab soravtansine, Priorität: 1, Evidenzgrad: m1A",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ClinicalImpression"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ClinicalImpression-mii-exa-mtb-kim-musterperson-behandlungsepisode.html"
      }],
      "reference" : {
        "reference" : "ClinicalImpression/mii-exa-mtb-kim-musterperson-behandlungsepisode"
      },
      "name" : "MTB-Behandlungsepisode Kim Musterperson",
      "description" : "Molekulares Tumorboard-Behandlungsepisode von Kim Musterperson ab 01.03.2022",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-behandlungsepisode"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CarePlan"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CarePlan-mii-exa-mtb-kim-musterperson-therapieplan.html"
      }],
      "reference" : {
        "reference" : "CarePlan/mii-exa-mtb-kim-musterperson-therapieplan"
      },
      "name" : "MTB-Beschluss Kim Musterperson",
      "description" : "Beschluss MTB-Fall Kim Musterperson vom 28.03.2023",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieplan"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DiagnosticReport"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "DiagnosticReport-mii-exa-mtb-kim-musterperson-ngs-bericht.html"
      }],
      "reference" : {
        "reference" : "DiagnosticReport/mii-exa-mtb-kim-musterperson-ngs-bericht"
      },
      "name" : "MTB-NGS-Bericht Kim Musterperson",
      "description" : "Ergebnisse des NGS-Bericht von Kim Musterperson",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-ngs-bericht"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-mii-exa-mtb-kim-musterperson-genomic-study.html"
      }],
      "reference" : {
        "reference" : "Procedure/mii-exa-mtb-kim-musterperson-genomic-study"
      },
      "name" : "MTB-NGS-Bericht Kim Musterperson",
      "description" : "Details zur Durchführung NGS-Bericht von Kim Musterperson",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-genomic-study"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-mii-exa-mtb-kim-musterperson-genomic-study-analysis-1.html"
      }],
      "reference" : {
        "reference" : "Procedure/mii-exa-mtb-kim-musterperson-genomic-study-analysis-1"
      },
      "name" : "MTB-NGS-Bericht Kim Musterperson",
      "description" : "Details zur Analyse NGS-Bericht von Kim Musterperson - TSO500",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-genomic-study-analysis"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-mii-exa-mtb-kim-musterperson-genomic-study-analysis-3.html"
      }],
      "reference" : {
        "reference" : "Procedure/mii-exa-mtb-kim-musterperson-genomic-study-analysis-3"
      },
      "name" : "MTB-NGS-Bericht Kim Musterperson",
      "description" : "Diagnostische Prozeduren - MolPatho-Bericht von Kim Musterperson - Immunhistochemie",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-genomic-study-analysis"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-mii-exa-mtb-kim-musterperson-genomic-study-analysis-2.html"
      }],
      "reference" : {
        "reference" : "Procedure/mii-exa-mtb-kim-musterperson-genomic-study-analysis-2"
      },
      "name" : "MTB-NGS-Bericht Kim Musterperson HLA Status",
      "description" : "Diagnostische Prozeduren  NGS-Bericht von Kim Musterperson - HLA-Status - keine näheren Angaben in Beispiel",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-genomic-study-analysis"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-MTBChemo1MedicationStatement1.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/MTBChemo1MedicationStatement1"
      },
      "name" : "MTBChemo1MedicationStatement1",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-MTBChemo1MedicationStatement1-1.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/MTBChemo1MedicationStatement1-1"
      },
      "name" : "MTBChemo1MedicationStatement1-1",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-MTBChemo1MedicationStatement1-2.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/MTBChemo1MedicationStatement1-2"
      },
      "name" : "MTBChemo1MedicationStatement1-2",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-MTBChemo1MedicationStatement2.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/MTBChemo1MedicationStatement2"
      },
      "name" : "MTBChemo1MedicationStatement2",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-MTBChemo1MedicationStatement2-1.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/MTBChemo1MedicationStatement2-1"
      },
      "name" : "MTBChemo1MedicationStatement2-1",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-MTBChemo1MedicationStatement2-2.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/MTBChemo1MedicationStatement2-2"
      },
      "name" : "MTBChemo1MedicationStatement2-2",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-MTBChemo1MedicationStatement3.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/MTBChemo1MedicationStatement3"
      },
      "name" : "MTBChemo1MedicationStatement3",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-MTBChemo1MedicationStatement3-1.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/MTBChemo1MedicationStatement3-1"
      },
      "name" : "MTBChemo1MedicationStatement3-1",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-MTBChemo1MedicationStatement3-2.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/MTBChemo1MedicationStatement3-2"
      },
      "name" : "MTBChemo1MedicationStatement3-2",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-MTBChemo1MedicationStatement4.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/MTBChemo1MedicationStatement4"
      },
      "name" : "MTBChemo1MedicationStatement4",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-MTBChemo1MedicationStatement4-1.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/MTBChemo1MedicationStatement4-1"
      },
      "name" : "MTBChemo1MedicationStatement4-1",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-MTBChemo1MedicationStatement4-2.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/MTBChemo1MedicationStatement4-2"
      },
      "name" : "MTBChemo1MedicationStatement4-2",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-MTBChemo1MedicationStatement5.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/MTBChemo1MedicationStatement5"
      },
      "name" : "MTBChemo1MedicationStatement5",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-MTBChemo1MedicationStatement5-1.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/MTBChemo1MedicationStatement5-1"
      },
      "name" : "MTBChemo1MedicationStatement5-1",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-MTBChemo1MedicationStatement5-2.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/MTBChemo1MedicationStatement5-2"
      },
      "name" : "MTBChemo1MedicationStatement5-2",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-MTBChemo1MedicationStatement6.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/MTBChemo1MedicationStatement6"
      },
      "name" : "MTBChemo1MedicationStatement6",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-MTBChemo1MedicationStatement6-1.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/MTBChemo1MedicationStatement6-1"
      },
      "name" : "MTBChemo1MedicationStatement6-1",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-MTBChemo1MedicationStatement6-2.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/MTBChemo1MedicationStatement6-2"
      },
      "name" : "MTBChemo1MedicationStatement6-2",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-MTBChemo1Procedure.html"
      }],
      "reference" : {
        "reference" : "Procedure/MTBChemo1Procedure"
      },
      "name" : "MTBChemo1Procedure",
      "description" : "Carboplatin AUC5 d1, pegliposomales Doxorubicin 30 mg/m2, d1, Wdh. d28; Sechs Zyklen ab 04.01.2023",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-vortherapie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-MTBChemo2MedicationStatement1.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/MTBChemo2MedicationStatement1"
      },
      "name" : "MTBChemo2MedicationStatement1",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-MTBChemo2MedicationStatement2.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/MTBChemo2MedicationStatement2"
      },
      "name" : "MTBChemo2MedicationStatement2",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-MTBChemo2MedicationStatement3.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/MTBChemo2MedicationStatement3"
      },
      "name" : "MTBChemo2MedicationStatement3",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-MTBChemo2MedicationStatement4.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/MTBChemo2MedicationStatement4"
      },
      "name" : "MTBChemo2MedicationStatement4",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-MTBChemo2MedicationStatement5.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/MTBChemo2MedicationStatement5"
      },
      "name" : "MTBChemo2MedicationStatement5",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationStatement"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationStatement-MTBChemo2MedicationStatement6.html"
      }],
      "reference" : {
        "reference" : "MedicationStatement/MTBChemo2MedicationStatement6"
      },
      "name" : "MTBChemo2MedicationStatement6",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-MTBChemo2Procedure.html"
      }],
      "reference" : {
        "reference" : "Procedure/MTBChemo2Procedure"
      },
      "name" : "MTBChemo2Procedure",
      "description" : "Mirvetuximab soravtansine 6mg/kg KG, Wdh d22; Sechs Zyklen ab 24.06.2023",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-vortherapie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Coverage"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Coverage-MyCoverage.html"
      }],
      "reference" : {
        "reference" : "Coverage/MyCoverage"
      },
      "name" : "MyCoverage",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-MyHospital.html"
      }],
      "reference" : {
        "reference" : "Organization/MyHospital"
      },
      "name" : "MyHospital",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-MyInsurer.html"
      }],
      "reference" : {
        "reference" : "Organization/MyInsurer"
      },
      "name" : "MyInsurer",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Group"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Group-mii-exa-mtb-study-cldn6-eligibility-criteria-age-groups.html"
      }],
      "reference" : {
        "reference" : "Group/mii-exa-mtb-study-cldn6-eligibility-criteria-age-groups"
      },
      "name" : "NCT04503278 Age Group",
      "description" : "NCT04503278 Eligibility Criteria Age Group",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "EvidenceVariable"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "EvidenceVariable-mii-exa-mtb-study-cldn6-evidence-variable-0.html"
      }],
      "reference" : {
        "reference" : "EvidenceVariable/mii-exa-mtb-study-cldn6-evidence-variable-0"
      },
      "name" : "NCT04503278 CLDN6 CAR-T",
      "description" : "NCT04503278 CLDN6 CAR-T: Administered as an intravenous (i.v.) infusion",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "EvidenceVariable"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "EvidenceVariable-mii-exa-mtb-study-cldn6-evidence-variable-1.html"
      }],
      "reference" : {
        "reference" : "EvidenceVariable/mii-exa-mtb-study-cldn6-evidence-variable-1"
      },
      "name" : "NCT04503278 CLDN6 uRNA-LPX/CLDN6 modRNA-LPX",
      "description" : "NCT04503278 CLDN6 uRNA-LPX/CLDN6 modRNA-LPX: Administered as an i.v. injection at protocol-specified intervals",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Group"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Group-mii-exa-mtb-study-cldn6-comparison-group-0.html"
      }],
      "reference" : {
        "reference" : "Group/mii-exa-mtb-study-cldn6-comparison-group-0"
      },
      "name" : "NCT04503278 Comparison Group: Part 1 - CLDN6 CAR-T",
      "description" : "NCT04503278 CLDN6 CAR-T: Dose escalation in lymphodepleted patients until the MTD and/or RP2D",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Group"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Group-mii-exa-mtb-study-cldn6-comparison-group-1.html"
      }],
      "reference" : {
        "reference" : "Group/mii-exa-mtb-study-cldn6-comparison-group-1"
      },
      "name" : "NCT04503278 Comparison Group: Part 2 Vaccine-modulated - CLDN6 uRNA-LPX/CLDN6 modRNA-LPX",
      "description" : "Dose escalation until the MTD and/or RP2D",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Group"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Group-mii-exa-mtb-study-cldn6-eligibility-criteria.html"
      }],
      "reference" : {
        "reference" : "Group/mii-exa-mtb-study-cldn6-eligibility-criteria"
      },
      "name" : "NCT04503278 Eligibility Criteria",
      "description" : "NCT04503278 Eligibility Criteria",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Location-mii-exa-mtb-study-cldn6-location-0.html"
      }],
      "reference" : {
        "reference" : "Location/mii-exa-mtb-study-cldn6-location-0"
      },
      "name" : "NCT04503278 L0",
      "description" : "NCT04503278 Location 0",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Location-mii-exa-mtb-study-cldn6-location-1.html"
      }],
      "reference" : {
        "reference" : "Location/mii-exa-mtb-study-cldn6-location-1"
      },
      "name" : "NCT04503278 L1",
      "description" : "NCT04503278 Location 1",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Location-mii-exa-mtb-study-cldn6-location-10.html"
      }],
      "reference" : {
        "reference" : "Location/mii-exa-mtb-study-cldn6-location-10"
      },
      "name" : "NCT04503278 L10",
      "description" : "NCT04503278 Location 10",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Location-mii-exa-mtb-study-cldn6-location-11.html"
      }],
      "reference" : {
        "reference" : "Location/mii-exa-mtb-study-cldn6-location-11"
      },
      "name" : "NCT04503278 L11",
      "description" : "NCT04503278 Location 11",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Location-mii-exa-mtb-study-cldn6-location-2.html"
      }],
      "reference" : {
        "reference" : "Location/mii-exa-mtb-study-cldn6-location-2"
      },
      "name" : "NCT04503278 L2",
      "description" : "NCT04503278 Location 2",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Location-mii-exa-mtb-study-cldn6-location-3.html"
      }],
      "reference" : {
        "reference" : "Location/mii-exa-mtb-study-cldn6-location-3"
      },
      "name" : "NCT04503278 L3",
      "description" : "NCT04503278 Location 3",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Location-mii-exa-mtb-study-cldn6-location-4.html"
      }],
      "reference" : {
        "reference" : "Location/mii-exa-mtb-study-cldn6-location-4"
      },
      "name" : "NCT04503278 L4",
      "description" : "NCT04503278 Location 4",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Location-mii-exa-mtb-study-cldn6-location-5.html"
      }],
      "reference" : {
        "reference" : "Location/mii-exa-mtb-study-cldn6-location-5"
      },
      "name" : "NCT04503278 L5",
      "description" : "NCT04503278 Location 5",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Location-mii-exa-mtb-study-cldn6-location-6.html"
      }],
      "reference" : {
        "reference" : "Location/mii-exa-mtb-study-cldn6-location-6"
      },
      "name" : "NCT04503278 L6",
      "description" : "NCT04503278 Location 6",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Location-mii-exa-mtb-study-cldn6-location-7.html"
      }],
      "reference" : {
        "reference" : "Location/mii-exa-mtb-study-cldn6-location-7"
      },
      "name" : "NCT04503278 L7",
      "description" : "NCT04503278 Location 7",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Location-mii-exa-mtb-study-cldn6-location-8.html"
      }],
      "reference" : {
        "reference" : "Location/mii-exa-mtb-study-cldn6-location-8"
      },
      "name" : "NCT04503278 L8",
      "description" : "NCT04503278 Location 8",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Location"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Location-mii-exa-mtb-study-cldn6-location-9.html"
      }],
      "reference" : {
        "reference" : "Location/mii-exa-mtb-study-cldn6-location-9"
      },
      "name" : "NCT04503278 L9",
      "description" : "NCT04503278 Location 9",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-PatientKimMusterperson.html"
      }],
      "reference" : {
        "reference" : "Patient/PatientKimMusterperson"
      },
      "name" : "PatientKimMusterperson",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Specimen"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Specimen-PatientKimMusterperson-AscitesSpecimen-2.html"
      }],
      "reference" : {
        "reference" : "Specimen/PatientKimMusterperson-AscitesSpecimen-2"
      },
      "name" : "PatientKimMusterperson-AscitesSpecimen-2",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PatientKimMusterperson-MolecularPathologyInterpret-0a-Her2neu.html"
      }],
      "reference" : {
        "reference" : "Observation/PatientKimMusterperson-MolecularPathologyInterpret-0a-Her2neu"
      },
      "name" : "PatientKimMusterperson-MolecularPathologyInterpret-0a-Her2neu",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PatientKimMusterperson-MolecularPathologyObservation-0a-Her2neu.html"
      }],
      "reference" : {
        "reference" : "Observation/PatientKimMusterperson-MolecularPathologyObservation-0a-Her2neu"
      },
      "name" : "PatientKimMusterperson-MolecularPathologyObservation-0a-Her2neu",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PatientKimMusterperson-MolecularPathologyObservation-0b-Folat-Ra.html"
      }],
      "reference" : {
        "reference" : "Observation/PatientKimMusterperson-MolecularPathologyObservation-0b-Folat-Ra"
      },
      "name" : "PatientKimMusterperson-MolecularPathologyObservation-0b-Folat-Ra",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PatientKimMusterperson-MolecularPathologyObservation-0c-Trop2.html"
      }],
      "reference" : {
        "reference" : "Observation/PatientKimMusterperson-MolecularPathologyObservation-0c-Trop2"
      },
      "name" : "PatientKimMusterperson-MolecularPathologyObservation-0c-Trop2",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PatientKimMusterperson-MolecularPathologyObservation-1-CA125.html"
      }],
      "reference" : {
        "reference" : "Observation/PatientKimMusterperson-MolecularPathologyObservation-1-CA125"
      },
      "name" : "PatientKimMusterperson-MolecularPathologyObservation-1-CA125",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PatientKimMusterperson-MolecularPathologyObservation-2-Pax8.html"
      }],
      "reference" : {
        "reference" : "Observation/PatientKimMusterperson-MolecularPathologyObservation-2-Pax8"
      },
      "name" : "PatientKimMusterperson-MolecularPathologyObservation-2-Pax8",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PatientKimMusterperson-MolecularPathologyObservation-3-WT1.html"
      }],
      "reference" : {
        "reference" : "Observation/PatientKimMusterperson-MolecularPathologyObservation-3-WT1"
      },
      "name" : "PatientKimMusterperson-MolecularPathologyObservation-3-WT1",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PatientKimMusterperson-MolecularPathologyObservation-4-ER.html"
      }],
      "reference" : {
        "reference" : "Observation/PatientKimMusterperson-MolecularPathologyObservation-4-ER"
      },
      "name" : "PatientKimMusterperson-MolecularPathologyObservation-4-ER",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PatientKimMusterperson-MolecularPathologyObservation-5-PR.html"
      }],
      "reference" : {
        "reference" : "Observation/PatientKimMusterperson-MolecularPathologyObservation-5-PR"
      },
      "name" : "PatientKimMusterperson-MolecularPathologyObservation-5-PR",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PatientKimMusterperson-MolecularPathologyObservation-6-p53.html"
      }],
      "reference" : {
        "reference" : "Observation/PatientKimMusterperson-MolecularPathologyObservation-6-p53"
      },
      "name" : "PatientKimMusterperson-MolecularPathologyObservation-6-p53",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PatientKimMusterperson-MolecularPathologyObservation-7-p53.html"
      }],
      "reference" : {
        "reference" : "Observation/PatientKimMusterperson-MolecularPathologyObservation-7-p53"
      },
      "name" : "PatientKimMusterperson-MolecularPathologyObservation-7-p53",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-immunohistochemistry"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "DiagnosticReport"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "DiagnosticReport-PatientKimMusterperson-MolecularPathologyReport-1.html"
      }],
      "reference" : {
        "reference" : "DiagnosticReport/PatientKimMusterperson-MolecularPathologyReport-1"
      },
      "name" : "PatientKimMusterperson-MolecularPathologyReport-1",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-molecular-pathology-report"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PatientKimMusterperson-Observation-1.html"
      }],
      "reference" : {
        "reference" : "Observation/PatientKimMusterperson-Observation-1"
      },
      "name" : "PatientKimMusterperson-Observation-1",
      "description" : "kein Hinweis auf thorakale Metastasierung",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PatientKimMusterperson-Observation-10.html"
      }],
      "reference" : {
        "reference" : "Observation/PatientKimMusterperson-Observation-10"
      },
      "name" : "PatientKimMusterperson-Observation-10",
      "description" : "regrediente Flüssigkeitskollektion am Leberrand, Z.n. atypische Lebersegmentresektion. Darüberhinaus kein Hinweis auf Leberfilialisierung.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PatientKimMusterperson-Observation-11.html"
      }],
      "reference" : {
        "reference" : "Observation/PatientKimMusterperson-Observation-11"
      },
      "name" : "PatientKimMusterperson-Observation-11",
      "description" : "kein Aszites",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PatientKimMusterperson-Observation-12.html"
      }],
      "reference" : {
        "reference" : "Observation/PatientKimMusterperson-Observation-12"
      },
      "name" : "PatientKimMusterperson-Observation-12",
      "description" : "kein Hinweis auf Lokalrezidiv",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PatientKimMusterperson-Observation-13.html"
      }],
      "reference" : {
        "reference" : "Observation/PatientKimMusterperson-Observation-13"
      },
      "name" : "PatientKimMusterperson-Observation-13",
      "description" : "regrediente Milchglasinfiltrate im linken Oberlappen, somit a.e. atypisch entzündlich.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PatientKimMusterperson-Observation-14.html"
      }],
      "reference" : {
        "reference" : "Observation/PatientKimMusterperson-Observation-14"
      },
      "name" : "PatientKimMusterperson-Observation-14",
      "description" : "Leicht vermehrter mediastinaler Lymphknotenbesatz ohne Kontrastmittelaufnahme",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PatientKimMusterperson-Observation-15.html"
      }],
      "reference" : {
        "reference" : "Observation/PatientKimMusterperson-Observation-15"
      },
      "name" : "PatientKimMusterperson-Observation-15",
      "description" : "Leicht vermehrter mediastinaler Lymphknotenbesatz ohne pathologische Vergrößerung, Verlaufskontrolle empfohlen",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PatientKimMusterperson-Observation-16.html"
      }],
      "reference" : {
        "reference" : "Observation/PatientKimMusterperson-Observation-16"
      },
      "name" : "PatientKimMusterperson-Observation-16",
      "description" : "progredienter Aszites (ca. 700ml)",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PatientKimMusterperson-Observation-17.html"
      }],
      "reference" : {
        "reference" : "Observation/PatientKimMusterperson-Observation-17"
      },
      "name" : "PatientKimMusterperson-Observation-17",
      "description" : "Peritonealblatt mit zunehmender, unregelmäßiger KM-Aufnahme",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PatientKimMusterperson-Observation-18.html"
      }],
      "reference" : {
        "reference" : "Observation/PatientKimMusterperson-Observation-18"
      },
      "name" : "PatientKimMusterperson-Observation-18",
      "description" : "suspekt auf Progress der bekannten Peritonealkarzinose",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PatientKimMusterperson-Observation-19.html"
      }],
      "reference" : {
        "reference" : "Observation/PatientKimMusterperson-Observation-19"
      },
      "name" : "PatientKimMusterperson-Observation-19",
      "description" : "V.a. Lokalrezidiv bei kontrastmittelaufnehmender Raumforderung im kleinen Becken",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PatientKimMusterperson-Observation-2.html"
      }],
      "reference" : {
        "reference" : "Observation/PatientKimMusterperson-Observation-2"
      },
      "name" : "PatientKimMusterperson-Observation-2",
      "description" : "kein Hinweis auf Lokalrezidiv",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PatientKimMusterperson-Observation-20.html"
      }],
      "reference" : {
        "reference" : "Observation/PatientKimMusterperson-Observation-20"
      },
      "name" : "PatientKimMusterperson-Observation-20",
      "description" : "regredienter Aszites",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PatientKimMusterperson-Observation-21.html"
      }],
      "reference" : {
        "reference" : "Observation/PatientKimMusterperson-Observation-21"
      },
      "name" : "PatientKimMusterperson-Observation-21",
      "description" : "rückläufige KM-Aufnahme der lokalrezidivsuspekten Raumforderung im kleinen Becken",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PatientKimMusterperson-Observation-22.html"
      }],
      "reference" : {
        "reference" : "Observation/PatientKimMusterperson-Observation-22"
      },
      "name" : "PatientKimMusterperson-Observation-22",
      "description" : "noch flaue, aber insgesamt regrediente KM-Aufnhame der zahlenmäßig vermehrten LK im Mediastinum",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PatientKimMusterperson-Observation-23.html"
      }],
      "reference" : {
        "reference" : "Observation/PatientKimMusterperson-Observation-23"
      },
      "name" : "PatientKimMusterperson-Observation-23",
      "description" : "keine neue metastasensuspekte Läsion",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PatientKimMusterperson-Observation-24.html"
      }],
      "reference" : {
        "reference" : "Observation/PatientKimMusterperson-Observation-24"
      },
      "name" : "PatientKimMusterperson-Observation-24",
      "description" : "kein Aszites",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PatientKimMusterperson-Observation-25.html"
      }],
      "reference" : {
        "reference" : "Observation/PatientKimMusterperson-Observation-25"
      },
      "name" : "PatientKimMusterperson-Observation-25",
      "description" : "fast vollständig regredientes Lokalrezidiv ohne KM-Aufnahme im kleinen Becken",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PatientKimMusterperson-Observation-26.html"
      }],
      "reference" : {
        "reference" : "Observation/PatientKimMusterperson-Observation-26"
      },
      "name" : "PatientKimMusterperson-Observation-26",
      "description" : "geringer Aszites im kleinen Becken",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PatientKimMusterperson-Observation-27.html"
      }],
      "reference" : {
        "reference" : "Observation/PatientKimMusterperson-Observation-27"
      },
      "name" : "PatientKimMusterperson-Observation-27",
      "description" : "vormals KM-aufnehmendes Lokalrezidiv im kleinen Becken aktuell metrisch nur noch schwer fassbar",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PatientKimMusterperson-Observation-29.html"
      }],
      "reference" : {
        "reference" : "Observation/PatientKimMusterperson-Observation-29"
      },
      "name" : "PatientKimMusterperson-Observation-29",
      "description" : "formal noch vermehrte mediastinale Lymphknoten",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PatientKimMusterperson-Observation-3.html"
      }],
      "reference" : {
        "reference" : "Observation/PatientKimMusterperson-Observation-3"
      },
      "name" : "PatientKimMusterperson-Observation-3",
      "description" : "kein Aszites",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PatientKimMusterperson-Observation-30.html"
      }],
      "reference" : {
        "reference" : "Observation/PatientKimMusterperson-Observation-30"
      },
      "name" : "PatientKimMusterperson-Observation-30",
      "description" : "nicht mehr KM-aufnehmende mediastinale Lymphknoten",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PatientKimMusterperson-Observation-4.html"
      }],
      "reference" : {
        "reference" : "Observation/PatientKimMusterperson-Observation-4"
      },
      "name" : "PatientKimMusterperson-Observation-4",
      "description" : "Z.n. atypischer Lebersegmentresektion, kein eindeutiger Hinweis auf Metastasierung. Flüssigkeitskollektion angrenzend DD postoperativ",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PatientKimMusterperson-Observation-5.html"
      }],
      "reference" : {
        "reference" : "Observation/PatientKimMusterperson-Observation-5"
      },
      "name" : "PatientKimMusterperson-Observation-5",
      "description" : "konstante Flüssigkeitskollektion angrenzend bei Z.n. atpyischer Lebersegmentresktion, a.e. postoperativ",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PatientKimMusterperson-Observation-6.html"
      }],
      "reference" : {
        "reference" : "Observation/PatientKimMusterperson-Observation-6"
      },
      "name" : "PatientKimMusterperson-Observation-6",
      "description" : "kein Aszites",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PatientKimMusterperson-Observation-7.html"
      }],
      "reference" : {
        "reference" : "Observation/PatientKimMusterperson-Observation-7"
      },
      "name" : "PatientKimMusterperson-Observation-7",
      "description" : "kein Hinweis auf Lokalrezidiv",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PatientKimMusterperson-Observation-8.html"
      }],
      "reference" : {
        "reference" : "Observation/PatientKimMusterperson-Observation-8"
      },
      "name" : "PatientKimMusterperson-Observation-8",
      "description" : "im linken Oberlappen der Lunge diskrete milchglasartige Trübung DD atypisch entzündlich, klinische Korrelation empfohlen, darüber hinaus kein Hinweis auf thorakale Filiae",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-PatientKimMusterperson-Observation-9.html"
      }],
      "reference" : {
        "reference" : "Observation/PatientKimMusterperson-Observation-9"
      },
      "name" : "PatientKimMusterperson-Observation-9",
      "description" : "regrediente Flüssigkeitskollektion am Leberrand, Z.n. atypische Lebersegmentresektion. Darüberhinaus kein Hinweis auf Leberfilialisierung.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Condition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Condition-PatientKimMusterperson-PrimaryDiagnosis-2.html"
      }],
      "reference" : {
        "reference" : "Condition/PatientKimMusterperson-PrimaryDiagnosis-2"
      },
      "name" : "PatientKimMusterperson-PrimaryDiagnosis-2",
      "description" : "bestätigte Primärdiagnose",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-PatientKimMusterperson-Procedure-1.html"
      }],
      "reference" : {
        "reference" : "Procedure/PatientKimMusterperson-Procedure-1"
      },
      "name" : "PatientKimMusterperson-Procedure-1",
      "description" : "20.04.22 CT T/A",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-PatientKimMusterperson-Procedure-2.html"
      }],
      "reference" : {
        "reference" : "Procedure/PatientKimMusterperson-Procedure-2"
      },
      "name" : "PatientKimMusterperson-Procedure-2",
      "description" : "15.07.22 CT T/A",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-PatientKimMusterperson-Procedure-3.html"
      }],
      "reference" : {
        "reference" : "Procedure/PatientKimMusterperson-Procedure-3"
      },
      "name" : "PatientKimMusterperson-Procedure-3",
      "description" : "19.10.22 CT T/A",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-PatientKimMusterperson-Procedure-4.html"
      }],
      "reference" : {
        "reference" : "Procedure/PatientKimMusterperson-Procedure-4"
      },
      "name" : "PatientKimMusterperson-Procedure-4",
      "description" : "19.12.22 CT T/A",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-PatientKimMusterperson-Procedure-4a.html"
      }],
      "reference" : {
        "reference" : "Procedure/PatientKimMusterperson-Procedure-4a"
      },
      "name" : "PatientKimMusterperson-Procedure-4a",
      "description" : "30.09.2021 OP Intervalldebulking mittels Längsschnittlaparotomie, Tumorresektion mittels Hysterektomie, bilateraler Adnexektomie, und atpyischer Lebersegmentresektion (Seg. II und V). Postoperativ: R0.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-PatientKimMusterperson-Procedure-4b.html"
      }],
      "reference" : {
        "reference" : "Procedure/PatientKimMusterperson-Procedure-4b"
      },
      "name" : "PatientKimMusterperson-Procedure-4b",
      "description" : "30.09.2021 OP Intervalldebulking mittels Längsschnittlaparotomie, Tumorresektion mittels Hysterektomie, bilateraler Adnexektomie, und atpyischer Lebersegmentresektion (Seg. II und V). Postoperativ: R0.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-PatientKimMusterperson-Procedure-4c.html"
      }],
      "reference" : {
        "reference" : "Procedure/PatientKimMusterperson-Procedure-4c"
      },
      "name" : "PatientKimMusterperson-Procedure-4c",
      "description" : "30.09.2021 OP Intervalldebulking mittels Längsschnittlaparotomie, Tumorresektion mittels Hysterektomie, bilateraler Adnexektomie, und atpyischer Lebersegmentresektion (Seg. II und V). Postoperativ: R0.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-PatientKimMusterperson-Procedure-4d.html"
      }],
      "reference" : {
        "reference" : "Procedure/PatientKimMusterperson-Procedure-4d"
      },
      "name" : "PatientKimMusterperson-Procedure-4d",
      "description" : "30.09.2021 OP Intervalldebulking mittels Längsschnittlaparotomie, Tumorresektion mittels Hysterektomie, bilateraler Adnexektomie, und atpyischer Lebersegmentresektion (Seg. II und V). Postoperativ: R0.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-PatientKimMusterperson-Procedure-5.html"
      }],
      "reference" : {
        "reference" : "Procedure/PatientKimMusterperson-Procedure-5"
      },
      "name" : "PatientKimMusterperson-Procedure-5",
      "description" : "20.03.2023 CT T/A",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-PatientKimMusterperson-Procedure-6.html"
      }],
      "reference" : {
        "reference" : "Procedure/PatientKimMusterperson-Procedure-6"
      },
      "name" : "PatientKimMusterperson-Procedure-6",
      "description" : "20.08.2023 CT T/A",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-PatientKimMusterperson-Procedure-7.html"
      }],
      "reference" : {
        "reference" : "Procedure/PatientKimMusterperson-Procedure-7"
      },
      "name" : "PatientKimMusterperson-Procedure-7",
      "description" : "22.10.2023 CT T/A",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Specimen"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Specimen-PatientKimMusterperson-Specimen-1.html"
      }],
      "reference" : {
        "reference" : "Specimen/PatientKimMusterperson-Specimen-1"
      },
      "name" : "PatientKimMusterperson-Specimen-1",
      "description" : "02.01.2023 Histologie (Z 230201/23)",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-PatientKimMusterperson-SystemicTherapy-1.html"
      }],
      "reference" : {
        "reference" : "Procedure/PatientKimMusterperson-SystemicTherapy-1"
      },
      "name" : "PatientKimMusterperson-SystemicTherapy-1",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-PatientKimMusterperson-SystemicTherapy-2.html"
      }],
      "reference" : {
        "reference" : "Procedure/PatientKimMusterperson-SystemicTherapy-2"
      },
      "name" : "PatientKimMusterperson-SystemicTherapy-2",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-PatientKimMusterperson-SystemicTherapy-3.html"
      }],
      "reference" : {
        "reference" : "Procedure/PatientKimMusterperson-SystemicTherapy-3"
      },
      "name" : "PatientKimMusterperson-SystemicTherapy-3",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-mii-exa-mtb-study-request-cldn6.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/mii-exa-mtb-study-request-cldn6"
      },
      "name" : "Phase 1/2 CLDN6 CAR-T-Zell-Studie",
      "description" : "Studieneinschlussempfehlung: Phase 1/2 CLDN6 CAR-T-Zell-Studie, Priorität: 2.1",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-studieneinschluss-anfrage"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-mtb-kim-musterperson-EinfacheVariante-PIK3R1.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-mtb-kim-musterperson-EinfacheVariante-PIK3R1"
      },
      "name" : "PIK3R1 Einfache Variante",
      "description" : "Nachweis einer PIK3R1-Mutation",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-einfache-variante"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-mtb-kim-musterperson-TherapeutischeImplikation-PIK3R1.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-mtb-kim-musterperson-TherapeutischeImplikation-PIK3R1"
      },
      "name" : "PIK3R1 Therapeutische Implikation",
      "description" : "Therapeutische Bedeutung der festgestellten PIK3R1 Mutation",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapeutische-implikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-MII-EXA-MTB-Ploidie-1.html"
      }],
      "reference" : {
        "reference" : "Observation/MII-EXA-MTB-Ploidie-1"
      },
      "name" : "Ploidie Beispiel",
      "description" : "Beispiel für die Gesamtploidie des Tumors.",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-ploidie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ResearchStudy"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ResearchStudy-mii-exa-mtb-study-tedova.html"
      }],
      "reference" : {
        "reference" : "ResearchStudy/mii-exa-mtb-study-tedova"
      },
      "name" : "TEDOVA",
      "description" : "Studie: TEDOVA - OSE2101 (Neo-Epitop-Vakzin)+/- Pembrolizumab vs. BSC in Platin-sensitiven rez. Ov-CA",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-studie"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ServiceRequest-mii-exa-mtb-study-request-tedova.html"
      }],
      "reference" : {
        "reference" : "ServiceRequest/mii-exa-mtb-study-request-tedova"
      },
      "name" : "TEDOVA",
      "description" : "Studieeinschlussempfehlung: TEDOVA - OSE2101 (Neo-Epitop-Vakzin)+/- Pembrolizumab vs. BSC in Platin-sensitiven rez. Ov-CA",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-studieneinschluss-anfrage"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-mtb-kim-musterperson-DiagnostischeImplikation-TP53.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-mtb-kim-musterperson-DiagnostischeImplikation-TP53"
      },
      "name" : "TP53 Diagnostische Implikation",
      "description" : "Diagnostische Bedeutung der festgestellten TP53 Mutation",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-diagnostische-implikation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-mtb-kim-musterperson-EinfacheVariante-TP53.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-mtb-kim-musterperson-EinfacheVariante-TP53"
      },
      "name" : "TP53 Einfache Variante",
      "description" : "Nachweis einer pathogenen TP53-Mutation",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-einfache-variante"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "MedicationRequest-mii-exa-mtb-medication-request-trastuzumab-deruxtecan.html"
      }],
      "reference" : {
        "reference" : "MedicationRequest/mii-exa-mtb-medication-request-trastuzumab-deruxtecan"
      },
      "name" : "Trastuzumab deruxtecan",
      "description" : "Therapieempfehlung: Trastuzumab deruxtecan, Priorität: 3, Evidenzgrad: m1B",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-mii-exa-mtb-kim-tumorzellgehalt-aszites.html"
      }],
      "reference" : {
        "reference" : "Observation/mii-exa-mtb-kim-tumorzellgehalt-aszites"
      },
      "name" : "Tumorzellgehalt Aszites",
      "description" : "Tumorzellgehalt progrediente Aszites (20ml/700ml maligne Tumorzellen)",
      "exampleCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-tumorzellgehalt"
    }],
    "page" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
        "valueUrl" : "toc.html"
      }],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "_title" : {
        "extension" : [{
          "extension" : [{
            "url" : "lang",
            "valueCode" : "de"
          },
          {
            "url" : "content",
            "valueString" : "Inhaltsverzeichnis"
          }],
          "url" : "http://hl7.org/fhir/StructureDefinition/translation"
        }]
      },
      "generation" : "html",
      "page" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "index.html"
        }],
        "nameUrl" : "index.html",
        "title" : "Home",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Startseite"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "guidance.html"
        }],
        "nameUrl" : "guidance.html",
        "title" : "Guidance",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Anleitung"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown",
        "page" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "researcher-guidance.html"
          }],
          "nameUrl" : "researcher-guidance.html",
          "title" : "Guidance for Researchers",
          "_title" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Anleitung für Forschende"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "implementer-guidance.html"
          }],
          "nameUrl" : "implementer-guidance.html",
          "title" : "Guidance for Implementers",
          "_title" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Anleitung für Implementierende"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "uml-diagrams.html"
          }],
          "nameUrl" : "uml-diagrams.html",
          "title" : "UML Diagrams",
          "_title" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "UML-Diagramme"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "anwendungsszenarien.html"
          }],
          "nameUrl" : "anwendungsszenarien.html",
          "title" : "Application Scenarios",
          "_title" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "Anwendungsszenarien"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "dnpm-transformation.html"
          }],
          "nameUrl" : "dnpm-transformation.html",
          "title" : "DNPM Transformation",
          "_title" : {
            "extension" : [{
              "extension" : [{
                "url" : "lang",
                "valueCode" : "de"
              },
              {
                "url" : "content",
                "valueString" : "DNPM-Transformation"
              }],
              "url" : "http://hl7.org/fhir/StructureDefinition/translation"
            }]
          },
          "generation" : "markdown"
        }]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "security-and-privacy.html"
        }],
        "nameUrl" : "security-and-privacy.html",
        "title" : "Security and Privacy",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Sicherheit und Datenschutz"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "profiles.html"
        }],
        "nameUrl" : "profiles.html",
        "title" : "Profiles",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Profile"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "extensions.html"
        }],
        "nameUrl" : "extensions.html",
        "title" : "Extensions",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Extensions"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "capability-statements.html"
        }],
        "nameUrl" : "capability-statements.html",
        "title" : "Capability Statements",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "CapabilityStatements"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "logical-models.html"
        }],
        "nameUrl" : "logical-models.html",
        "title" : "Logical Models",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Logische Modelle"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "value-sets.html"
        }],
        "nameUrl" : "value-sets.html",
        "title" : "Value Sets",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "ValueSets"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "code-systems.html"
        }],
        "nameUrl" : "code-systems.html",
        "title" : "Code Systems",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "CodeSystems"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "examples.html"
        }],
        "nameUrl" : "examples.html",
        "title" : "Examples",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Beispiele"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "downloads.html"
        }],
        "nameUrl" : "downloads.html",
        "title" : "Downloads",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Downloads"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "changes.html"
        }],
        "nameUrl" : "changes.html",
        "title" : "Changelog",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Änderungshistorie"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "metadata.html"
        }],
        "nameUrl" : "metadata.html",
        "title" : "Metadata Overview",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Metadaten-Übersicht"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "version-history.html"
        }],
        "nameUrl" : "version-history.html",
        "title" : "Versioning",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Versionierung"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "ImplementationGuide-mii-kerndatensatzmodul-molekulares-tumorboard.html"
        }],
        "nameUrl" : "ImplementationGuide-mii-kerndatensatzmodul-molekulares-tumorboard.html",
        "title" : "MII ImplementationGuide Resource",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "MII ImplementationGuide Ressource"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "translationinfo.html"
        }],
        "nameUrl" : "translationinfo.html",
        "title" : "Translation Information",
        "_title" : {
          "extension" : [{
            "extension" : [{
              "url" : "lang",
              "valueCode" : "de"
            },
            {
              "url" : "content",
              "valueString" : "Hinweise zur Übersetzung"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/translation"
          }]
        },
        "generation" : "markdown"
      }]
    },
    "parameter" : [{
      "code" : "path-resource",
      "value" : "input/predefined-resources"
    },
    {
      "code" : "path-pages",
      "value" : "input/intro-notes"
    },
    {
      "code" : "path-resource",
      "value" : "input/capabilities"
    },
    {
      "code" : "path-resource",
      "value" : "input/examples"
    },
    {
      "code" : "path-resource",
      "value" : "input/extensions"
    },
    {
      "code" : "path-resource",
      "value" : "input/models"
    },
    {
      "code" : "path-resource",
      "value" : "input/operations"
    },
    {
      "code" : "path-resource",
      "value" : "input/profiles"
    },
    {
      "code" : "path-resource",
      "value" : "input/resources"
    },
    {
      "code" : "path-resource",
      "value" : "input/vocabulary"
    },
    {
      "code" : "path-resource",
      "value" : "input/testing"
    },
    {
      "code" : "path-resource",
      "value" : "input/history"
    },
    {
      "code" : "path-resource",
      "value" : "fsh-generated/resources"
    },
    {
      "code" : "path-pages",
      "value" : "template/config"
    },
    {
      "code" : "path-pages",
      "value" : "input/images"
    },
    {
      "code" : "path-tx-cache",
      "value" : "input-cache/txcache"
    }]
  }
}

```
