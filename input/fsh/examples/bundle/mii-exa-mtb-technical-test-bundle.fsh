Instance: mii-exa-mtb-technical-test-bundle
InstanceOf: Bundle
Usage: #example

* type = #transaction
// * insert BundleResource(FamilyMemberHistory, mii-exa-molgen-family-member-history-1)
* insert BundleResource(ClinicalImpression, mii-exa-mtb-kim-musterperson-behandlungsepisode)
* entry[=].resource.extension[+].url = $mii-ex-mtb-leitlinienbehandlung-status
* entry[=].resource.extension[=].valueCodeableConcept = $mii-cs-mtb-leitlinienbehandlung-status#exhausted
* entry[=].resource.investigation[KrankengeschichteFamilie][+].item = Reference(FamilyMemberHistory/mii-exa-molgen-family-member-history-1)
* entry[=].resource.supportingInfo[Vortherapie][+] = Reference(Procedure/PatientKimMusterperson-Procedure-7)
* entry[=].resource.supportingInfo[Vortherapie][=].extension[+].url = $mii-ex-mtb-leitlinie-dokumentation
* entry[=].resource.supportingInfo[Vortherapie][=].extension[=].extension[+].url = "Therapielinie"
* entry[=].resource.supportingInfo[Vortherapie][=].extension[=].extension[=].valueUnsignedInt = 1
* entry[=].resource.supportingInfo[Vortherapie][=].extension[=].extension[+].url = "Zulassungsstatus"
* entry[=].resource.supportingInfo[Vortherapie][=].extension[=].extension[=].valueCodeableConcept = $mii-cs-mtb-zulassungsstatus#off-label
* entry[=].resource.supportingInfo[Therapieplan] = Reference(CarePlan/mii-exa-mtb-therapieplan-kombinationstherapie)
// Behandlungsepisode erledigt, abgesehen von Problem MolGen Referenz
* insert BundleResource(Procedure, MTBChemo1Procedure)
* entry[=].resource.extension[Dokumentationsdatum].url = "http://fhir.de/StructureDefinition/ProzedurDokumentationsdatum"
* entry[=].resource.extension[Dokumentationsdatum].valueDateTime = "2025-07-01"
* entry[=].resource.extension[durchfuehrungsabsicht].valueCoding = $SCT#262202000
* entry[=].resource.extension[Intention].valueCodeableConcept.text = "Kurativ"
* entry[=].resource.extension[StellungZurOp].valueCodeableConcept = #O "ohne Bezug zur operativen Therapie"
* entry[=].resource.extension[StellungZurOp].valueCodeableConcept.text = "ohne Bezug zur operativen Therapie"
* entry[=].resource.extension[Leitlinie].extension[Therapielinie].valueUnsignedInt = 1
* entry[=].resource.extension[Leitlinie].extension[Zulassungsstatus].valueCodeableConcept = $mii-cs-mtb-zulassungsstatus#in-label
* entry[=].resource.basedOn[+] = Reference(CarePlan/mii-exa-mtb-therapieplan-kombinationstherapie)
* entry[=].resource.partOf = Reference(Observation/MTBObservationCA125-1)
* entry[=].resource.statusReason.text = "Because we can"
* entry[=].resource.code.coding[ops].version = "2025"
* entry[=].resource.code.coding[ops].extension[+].url = "http://fhir.de/StructureDefinition/seitenlokalisation"
* entry[=].resource.code.coding[ops].extension[=].valueCoding = $SCT#7771000 "Left"
* entry[=].resource.code.coding[ops].code = #6-004
* entry[=].resource.encounter = Reference(Encounter/example)
* entry[=].resource.reasonReference = Reference(Condition/PatientKimMusterperson-PrimaryDiagnosis-2)
* entry[=].resource.bodySite = $SCT#15497006
* entry[=].resource.note.text = "This is just a technical example that may contain traces of not making sense"
// Systemische Vortherapie erledigt
* insert BundleResource(Observation,mii-exa-mtb-kim-musterperson-aufklaerung)
* entry[=].resource.meta.profile[0] = $mii-pr-mtb-consent-given
* entry[=].resource.code = $LNC#105511-0 "Was consent given"
* entry[=].resource.encounter = Reference(Encounter/example
// Consent erledigt
* insert BundleResource(Condition, mii-exa-mtb-kim-diagnose)
* entry[=].resource.extension[ReferenzPrimaerdiagnose] = Reference(Condition/PatientKimMusterperson-PrimaryDiagnosis-2)
* entry[=].resource.extension[morphology-behavior-icdo3].valueCodeableConcept = $ICDO3#C44.7
* entry[=].resource.extension[morphology-behavior-icdo3].valueCodeableConcept.text = "Basalzelltumor"
* entry[=].resource.code.coding[alpha-id].code = #I6158
* entry[=].resource.code.coding[sct].version = "20250604"
* entry[=].resource.code.coding[sct].code = #1240414004
* entry[=].resource.code.coding[orphanet].code = #183500
* entry[=].resource.bodySite[primaertumorSeitenlokalisation].code = #L
* entry[=].resource.bodySite[sct] = $SCT#39607008
* entry[=].resource.bodySite[sct].version = "20250604"
* entry[=].resource.encounter = Reference(Encounter/example)
//* entry[=].resource.onsetPeriod.start = "2022-02-02" // Must either have extensions or value, not both
* entry[=].resource.onsetPeriod.start.extension[lebensphase-von].valueCodeableConcept = $SCT#263659003
//* entry[=].resource.onsetPeriod.start = "2025-01-19"
* entry[=].resource.onsetPeriod.start.extension[lebensphase-bis].valueCodeableConcept = $SCT#41847000
// onsetDateTime not covered, but it's not subject to invariants.
* entry[=].resource.stage[MolekularesTumorboardZeitpunkt].assessment[+] = Reference(Observation/mii-exa-mtb-kim-tumorausbreitung)
* entry[=].resource.stage[WHOGradZNS].assessment[+] = Reference(Observation/mii-exa-mtb-who-grad-tumor-zns)
* entry[=].resource.evidence.detail = Reference(List/mii-exa-onko-liste-evidenz-erstdiagnose-1)
* entry[=].resource.note.text = "This makes no sense at all."
// Diagnose Primärtumor erledigt, abgesehen von Referenz auf Onko Evidenzliste
* insert BundleResource(Observation, mii-exa-mtb-who-grad-tumor-zns)
// WHO Grad ZNS erledigt
* insert BundleResource(Observation, mii-exa-mtb-kim-oncotree)
* entry[=].resource.encounter = Reference(Encounter/example)
// Oncotree erledigt



* insert BundleResource(Patient,PatientKimMusterperson)
* insert BundleResource(Observation, MTBObservationCA125-1)
* insert BundleResource(Observation, MTBObservationCA125-2)
* insert BundleResource(Observation, MTBObservationCA125-3)
* insert BundleResource(Observation, MTBObservationCA125-4)
* insert BundleResource(Observation, MTBObservationCA125-5)
* insert BundleResource(Observation, MTBObservationCA125-6)
* insert BundleResource(DiagnosticReport, PatientKimMusterperson-MolecularPathologyReport-1)
* insert BundleResource(Specimen, PatientKimMusterperson-AscitesSpecimen-2)
* insert BundleResource(Observation, PatientKimMusterperson-MolecularPathologyObservation-0a-Her2neu)
* insert BundleResource(Observation, PatientKimMusterperson-MolecularPathologyInterpret-0a-Her2neu)
* insert BundleResource(Observation, PatientKimMusterperson-MolecularPathologyObservation-0b-Folat-Ra)
* insert BundleResource(Observation, PatientKimMusterperson-MolecularPathologyObservation-0c-Trop2)
* insert BundleResource(Observation, PatientKimMusterperson-MolecularPathologyObservation-1-CA125)
* insert BundleResource(Observation, PatientKimMusterperson-MolecularPathologyObservation-2-Pax8)
* insert BundleResource(Observation, PatientKimMusterperson-MolecularPathologyObservation-3-WT1)
* insert BundleResource(Observation, PatientKimMusterperson-MolecularPathologyObservation-4-ER)
* insert BundleResource(Observation, PatientKimMusterperson-MolecularPathologyObservation-5-PR)
* insert BundleResource(Observation, PatientKimMusterperson-MolecularPathologyObservation-6-p53)
* insert BundleResource(Observation, PatientKimMusterperson-MolecularPathologyObservation-7-p53)
* insert BundleResource(Procedure, PatientKimMusterperson-Procedure-1)
* insert BundleResource(Procedure, PatientKimMusterperson-Procedure-2)
* insert BundleResource(Procedure, PatientKimMusterperson-Procedure-3)
* insert BundleResource(Procedure, PatientKimMusterperson-Procedure-4)
* insert BundleResource(Procedure, PatientKimMusterperson-Procedure-5)
* insert BundleResource(Procedure, PatientKimMusterperson-Procedure-6)
* insert BundleResource(Procedure, PatientKimMusterperson-Procedure-7)
* insert BundleResource(Observation, PatientKimMusterperson-Observation-1)
* insert BundleResource(Observation, PatientKimMusterperson-Observation-2)
* insert BundleResource(Observation, PatientKimMusterperson-Observation-3)
* insert BundleResource(Observation, PatientKimMusterperson-Observation-4)
* insert BundleResource(Observation, PatientKimMusterperson-Observation-5)
* insert BundleResource(Observation, PatientKimMusterperson-Observation-6)
* insert BundleResource(Observation, PatientKimMusterperson-Observation-7)
* insert BundleResource(Observation, PatientKimMusterperson-Observation-8)
* insert BundleResource(Observation, PatientKimMusterperson-Observation-9)
* insert BundleResource(Observation, PatientKimMusterperson-Observation-10)
* insert BundleResource(Observation, PatientKimMusterperson-Observation-11)
* insert BundleResource(Observation, PatientKimMusterperson-Observation-12)
* insert BundleResource(Observation, PatientKimMusterperson-Observation-13)
* insert BundleResource(Observation, PatientKimMusterperson-Observation-14)
* insert BundleResource(Observation, PatientKimMusterperson-Observation-15)
* insert BundleResource(Observation, PatientKimMusterperson-Observation-16)
* insert BundleResource(Observation, PatientKimMusterperson-Observation-17)
* insert BundleResource(Observation, PatientKimMusterperson-Observation-18)
* insert BundleResource(Observation, PatientKimMusterperson-Observation-19)
* insert BundleResource(Observation, PatientKimMusterperson-Observation-20)
* insert BundleResource(Observation, PatientKimMusterperson-Observation-21)
* insert BundleResource(Observation, PatientKimMusterperson-Observation-22)
* insert BundleResource(Observation, PatientKimMusterperson-Observation-23)
* insert BundleResource(Observation, PatientKimMusterperson-Observation-24)
* insert BundleResource(Observation, PatientKimMusterperson-Observation-25)
* insert BundleResource(Observation, PatientKimMusterperson-Observation-26)
* insert BundleResource(Observation, PatientKimMusterperson-Observation-27)
* insert BundleResource(Observation, PatientKimMusterperson-Observation-29)
* insert BundleResource(Observation, PatientKimMusterperson-Observation-30)
* insert BundleResource(ClinicalImpression, MII-EXA-MTB-Follow-Up-ClinicalImpression-1)
* insert BundleResource(Procedure, MII-EXA-MTB-Systemische-Therapie-1)
* insert BundleResource(MedicationStatement, MII-EXA-MTB-Systemische-Therapie-Medication-1)
* insert BundleResource(MedicationStatement, MII-EXA-MTB-Systemische-Therapie-Medication-2)
* insert BundleResource(MedicationStatement, MII-EXA-MTB-Systemische-Therapie-Medication-3)
* insert BundleResource(MedicationStatement, MII-EXA-MTB-Systemische-Therapie-Medication-4)
* insert BundleResource(MedicationStatement, MII-EXA-MTB-Systemische-Therapie-Medication-5)
* insert BundleResource(MedicationStatement, MII-EXA-MTB-Systemische-Therapie-Medication-6)
* insert BundleResource(Observation, MII-EXA-MTB-Response-Befund-1)
* insert BundleResource(Observation, MII-EXA-MTB-Response-Befund-2)
* insert BundleResource(Claim, MII-EXA-MTB-Antrag-Kostenuebernahme-1)
* insert BundleResource(ClaimResponse, MII-EXA-MTB-Antwort-Kostenuebernahme-1)
* insert BundleResource(Specimen, PatientKimMusterperson-Specimen-1)
* insert BundleResource(MedicationStatement, MTBChemo1MedicationStatement1)
* insert BundleResource(MedicationStatement, MTBChemo1MedicationStatement1-1)
* insert BundleResource(MedicationStatement, MTBChemo1MedicationStatement1-2)
* insert BundleResource(MedicationStatement, MTBChemo1MedicationStatement2)
* insert BundleResource(MedicationStatement, MTBChemo1MedicationStatement2-1)
* insert BundleResource(MedicationStatement, MTBChemo1MedicationStatement2-2)
* insert BundleResource(MedicationStatement, MTBChemo1MedicationStatement3)
* insert BundleResource(MedicationStatement, MTBChemo1MedicationStatement3-1)
* insert BundleResource(MedicationStatement, MTBChemo1MedicationStatement3-2)
* insert BundleResource(MedicationStatement, MTBChemo1MedicationStatement4)
* insert BundleResource(MedicationStatement, MTBChemo1MedicationStatement4-1)
* insert BundleResource(MedicationStatement, MTBChemo1MedicationStatement4-2)
* insert BundleResource(MedicationStatement, MTBChemo1MedicationStatement5)
* insert BundleResource(MedicationStatement, MTBChemo1MedicationStatement5-1)
* insert BundleResource(MedicationStatement, MTBChemo1MedicationStatement5-2)
* insert BundleResource(MedicationStatement, MTBChemo1MedicationStatement6)
* insert BundleResource(MedicationStatement, MTBChemo1MedicationStatement6-1)
* insert BundleResource(MedicationStatement, MTBChemo1MedicationStatement6-2)
* insert BundleResource(Procedure, MTBChemo2Procedure)
* insert BundleResource(MedicationStatement, MTBChemo2MedicationStatement1)
* insert BundleResource(MedicationStatement, MTBChemo2MedicationStatement2)
* insert BundleResource(MedicationStatement, MTBChemo2MedicationStatement3)
* insert BundleResource(MedicationStatement, MTBChemo2MedicationStatement4)
* insert BundleResource(MedicationStatement, MTBChemo2MedicationStatement5)
* insert BundleResource(MedicationStatement, MTBChemo2MedicationStatement6)
* insert BundleResource(DiagnosticReport, mii-exa-mtb-kim-musterperson-ngs-bericht)
* insert BundleResource(Procedure, mii-exa-mtb-kim-musterperson-genomic-study)
* insert BundleResource(Procedure, mii-exa-mtb-kim-musterperson-genomic-study-analysis-1)
* insert BundleResource(Procedure, mii-exa-mtb-kim-musterperson-genomic-study-analysis-2)
* insert BundleResource(Procedure, mii-exa-mtb-kim-musterperson-genomic-study-analysis-3)
* insert BundleResource(Observation, mii-exa-mtb-kim-musterperson-EinfacheVariante-TP53)
* insert BundleResource(Observation, mii-exa-mtb-kim-musterperson-DiagnostischeImplikation-TP53)
* insert BundleResource(Observation, mii-exa-mtb-kim-musterperson-EinfacheVariante-PIK3R1)
* insert BundleResource(Observation, mii-exa-mtb-kim-musterperson-TherapeutischeImplikation-PIK3R1)
* insert BundleResource(Observation, mii-exa-mtb-kim-musterperson-CNVariante-CCNE1)
* insert BundleResource(ServiceRequest, mii-exa-mtb-study-request-cldn6)
* insert BundleResource(ResearchStudy, mii-exa-mtb-study-cldn6)
* insert BundleResource(Group, mii-exa-mtb-study-cldn6-eligibility-criteria)
* insert BundleResource(Group, mii-exa-mtb-study-cldn6-eligibility-criteria-age-groups)
* insert BundleResource(Group, mii-exa-mtb-study-cldn6-comparison-group-0)
* insert BundleResource(EvidenceVariable, mii-exa-mtb-study-cldn6-evidence-variable-0)
* insert BundleResource(Group, mii-exa-mtb-study-cldn6-comparison-group-1)
* insert BundleResource(EvidenceVariable, mii-exa-mtb-study-cldn6-evidence-variable-1)
* insert BundleResource(Organization, mii-exa-mtb-study-sponsor-biontech)
* insert BundleResource(PractitionerRole, mii-exa-mtb-study-investigator-biontech)
* insert BundleResource(Location, mii-exa-mtb-study-cldn6-location-0)
* insert BundleResource(Location, mii-exa-mtb-study-cldn6-location-1)
* insert BundleResource(Location, mii-exa-mtb-study-cldn6-location-2)
* insert BundleResource(Location, mii-exa-mtb-study-cldn6-location-3)
* insert BundleResource(Location, mii-exa-mtb-study-cldn6-location-4)
* insert BundleResource(Location, mii-exa-mtb-study-cldn6-location-5)
* insert BundleResource(Location, mii-exa-mtb-study-cldn6-location-6)
* insert BundleResource(Location, mii-exa-mtb-study-cldn6-location-7)
* insert BundleResource(Location, mii-exa-mtb-study-cldn6-location-8)
* insert BundleResource(Location, mii-exa-mtb-study-cldn6-location-9)
* insert BundleResource(Location, mii-exa-mtb-study-cldn6-location-10)
* insert BundleResource(Location, mii-exa-mtb-study-cldn6-location-11)
* insert BundleResource(ResearchStudy, mii-exa-mtb-study-tedova)
* insert BundleResource(ServiceRequest, mii-exa-mtb-study-request-tedova)
* insert BundleResource(ResearchStudy, mii-exa-mtb-study-ccne1)
* insert BundleResource(ServiceRequest, mii-exa-mtb-study-request-ccne1)
* insert BundleResource(MedicationRequest, mii-exa-mtb-medication-request-mirvetuximab)
* insert BundleResource(MedicationRequest, mii-exa-mtb-medication-request-trastuzumab-deruxtecan)
* insert BundleResource(Medication, mii-exa-mtb-medication-adavosertib)
* insert BundleResource(MedicationRequest, mii-exa-mtb-medication-request-adavosertib)
* insert BundleResource(MedicationRequest, mii-exa-mtb-medication-request-carboplatin)
* insert BundleResource(RequestGroup, mii-exa-mtb-request-group-adavosertib-carboplatin)
* insert BundleResource(Medication, mii-exa-mtb-medication-lunresertib)
* insert BundleResource(MedicationRequest, mii-exa-mtb-medication-request-lunresertib)
* insert BundleResource(Medication, mii-exa-mtb-medication-camonsertib)
* insert BundleResource(MedicationRequest, mii-exa-mtb-medication-request-camonsertib)
* insert BundleResource(RequestGroup, mii-exa-mtb-request-group-lunresertib-camonsertib)
* insert BundleResource(Medication, mii-exa-mtb-medication-cobimetinib)
* insert BundleResource(MedicationRequest, mii-exa-mtb-medication-request-cobimetinib)
* insert BundleResource(CarePlan, mii-exa-mtb-kim-musterperson-therapieplan)
* insert BundleResource(Observation, mii-exa-mtb-kim-tumorzellgehalt-aszites)
* insert BundleResource(ServiceRequest, mii-exa-mtb-kim-humangenetische-beratung-aszites)
* insert BundleResource(ServiceRequest, mii-exa-mtb-kim-histologie-evaluation-aszites)
* insert BundleResource(ServiceRequest, mii-exa-mtb-kim-rebiopsie-aszites)
* insert BundleResource(Observation, mii-exa-mtb-kim-tumorausbreitung)
// External resources
* insert BundleResource(Condition, PatientKimMusterperson-PrimaryDiagnosis-2)
* insert BundleResource(Observation, mii-exa-onko-allgemeiner-leistungszustand-ecog)
// Addendums
* insert BundleResource(Organization, MyHospital)
* insert BundleResource(Organization, MyInsurer)
* insert BundleResource(Coverage, MyCoverage)

Instance: mii-exa-mtb-who-grad-tumor-zns
InstanceOf: MII_PR_MTB_WHO_Grad_Tumor_ZNS
Usage: #example
* meta.profile[+] = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-who-grad-tumor-zns"
* code.coding = $SCT#396921005 "WHO grade finding for central nervous system tumor"
* subject = Reference(Patient/PatientKimMusterperson)
* encounter = Reference(Encounter/example)
* valueCodeableConcept = $SCT#396923008 "World Health Organization grade II central nervous system tumor (finding)"