// Mapping: DNPM DIP MTB Patient Record → MII FHIR Profile-Elemente
// Quelle: DAM Datenmodell V2.1 inkl. MVGenomSeq-Anpassungen
// Zeigt fuer jedes DNPM-Element das Ziel-Profil und -Element in der MII FHIR-Welt.
// Referenzierte Module: Basismodul Person, Erweiterungsmodul MTB, Onkologie, Mol.gen Befund, Pathologie

Mapping: DNPM_to_MII_FHIR
Source: DNPM_LM_PatientRecord
Id: dnpm-to-mii-fhir
Title: "DNPM to MII FHIR"
Description: "Mapping der DNPM DIP JSON-Elemente auf MII KDS FHIR-Profile (moduluebergreifend)"

// =============================================================================
// 1. Patient → Basismodul Person
// =============================================================================
* patient                                -> "Person: Patient"
  * id                                   -> "Person: Patient.identifier"
  * gender                               -> "Person: Patient.gender"
  * birthDate                            -> "Person: Patient.birthDate"
  * healthInsurance                      -> "Person: Patient.contact.organization"
  * address                              -> "Person: Patient.address"
    * municipalityCode                   -> "Person: Patient.address.extension(destatis/ags)"
  * vitalStatus                          -> "Person: Patient.deceased[x]"

// =============================================================================
// 2. Episodes of Care → MTB: Behandlungsepisode
// =============================================================================
* episodesOfCare                         -> "MTB: Behandlungsepisode (ClinicalImpression)"
  * id                                   -> "MTB: ClinicalImpression.identifier"
  * patient                              -> "MTB: ClinicalImpression.subject"
  * period                               -> "MTB: ClinicalImpression.effectivePeriod"
    * start                              -> "MTB: ClinicalImpression.effectivePeriod.start"
    * end                                -> "MTB: ClinicalImpression.effectivePeriod.end"

// =============================================================================
// 3. Diagnoses → MTB: Diagnose Primaertumor
// =============================================================================
* diagnoses                              -> "MTB: Diagnose Primaertumor (Condition)"
  * id                                   -> "MTB: Condition.identifier"
  * patient                              -> "MTB: Condition.subject"
  * recordedOn                           -> "MTB: Condition.recordedDate"
  * code                                 -> "MTB: Condition.code (ICD-10-GM)"
  * topography                           -> "MTB: Condition.bodySite (ICD-O-3-T)"
  * grading                              -> "Onkologie: Observation (Grading)"
  * staging                              -> "Onkologie: Observation (Staging)"
  * guidelineTreatmentStatus             -> "MTB: Condition.extension(Leitlinienbehandlung-Status)"
  * histology                            -> "Pathologie: DiagnosticReport"

// =============================================================================
// 4. Family Member Histories → Mol.gen Befund
// =============================================================================
* familyMemberHistories                  -> "Mol.gen: FamilyMemberHistory"
  * id                                   -> "Mol.gen: FamilyMemberHistory.identifier"
  * patient                              -> "Mol.gen: FamilyMemberHistory.patient"
  * relationship                         -> "Mol.gen: FamilyMemberHistory.relationship"

// =============================================================================
// 5. Guideline Therapies → MTB: Systemische Vortherapie
// =============================================================================
* guidelineTherapies                     -> "MTB: Systemische Vortherapie (MedicationStatement)"
  * id                                   -> "MTB: MedicationStatement.identifier"
  * patient                              -> "MTB: MedicationStatement.subject"
  * indication                           -> "MTB: MedicationStatement.reasonReference"
  * therapyLine                          -> "MTB: MedicationStatement.extension(Therapielinie)"
  * status                               -> "MTB: MedicationStatement.status"
  * statusReason                         -> "MTB: MedicationStatement.statusReason"
  * period                               -> "MTB: MedicationStatement.effectivePeriod"
  * medication                           -> "MTB: MedicationStatement.medication[x]"

// =============================================================================
// 6. Guideline Procedures → MTB: Vortherapie Prozedur
// =============================================================================
* guidelineProcedures                    -> "MTB: Vortherapie Prozedur (Procedure)"
  * id                                   -> "MTB: Procedure.identifier"
  * patient                              -> "MTB: Procedure.subject"
  * indication                           -> "MTB: Procedure.reasonReference"
  * code                                 -> "MTB: Procedure.code"
  * status                               -> "MTB: Procedure.status"
  * period                               -> "MTB: Procedure.performedPeriod"

// =============================================================================
// 7. Performance Status → Onkologie: ECOG
// =============================================================================
* performanceStatus                      -> "Onkologie: ECOG (Observation, LOINC 89247-1)"
  * id                                   -> "Onkologie: Observation.identifier"
  * patient                              -> "Onkologie: Observation.subject"
  * effectiveDate                        -> "Onkologie: Observation.effectiveDateTime"
  * value                                -> "Onkologie: Observation.valueCodeableConcept"

// =============================================================================
// 8. Specimens → MTB: Tumorprobe
// =============================================================================
* specimens                              -> "MTB: Tumorprobe (Specimen)"
  * id                                   -> "MTB: Specimen.identifier"
  * patient                              -> "MTB: Specimen.subject"
  * type                                 -> "MTB: Specimen.type"
  * collection                           -> "MTB: Specimen.collection"
    * date                               -> "MTB: Specimen.collection.collectedDateTime"
    * site                               -> "MTB: Specimen.collection.bodySite"
    * method                             -> "MTB: Specimen.collection.method"

// =============================================================================
// 9. Prior Diagnostic Reports → Pathologie: DiagnosticReport
// =============================================================================
* priorDiagnosticReports                 -> "Pathologie: DiagnosticReport (MolecularPathology)"
  * id                                   -> "Pathologie: DiagnosticReport.identifier"
  * patient                              -> "Pathologie: DiagnosticReport.subject"
  * issuedOn                             -> "Pathologie: DiagnosticReport.issued"

// =============================================================================
// 10. Histology Reports → Onkologie/Pathologie
// =============================================================================
* histologyReports                       -> "Pathologie: DiagnosticReport (Histology)"
  * id                                   -> "Pathologie: DiagnosticReport.identifier"
  * patient                              -> "Pathologie: DiagnosticReport.subject"
  * specimen                             -> "Pathologie: DiagnosticReport.specimen"
  * issuedOn                             -> "Pathologie: DiagnosticReport.issued"
  * results                              -> "Pathologie: DiagnosticReport.result"
    * tumorCellContent                   -> "MTB: Tumorzellgehalt (Observation)"
    * tumorMorphology                    -> "Onkologie: Histologie ICD-O-3 (Observation)"

// =============================================================================
// 11. IHC Reports → MTB: Molekularpathologie
// =============================================================================
* ihcReports                             -> "MTB: Molecular Pathology Report (DiagnosticReport)"
  * id                                   -> "MTB: DiagnosticReport.identifier"
  * specimen                             -> "MTB: DiagnosticReport.specimen"
  * issuedOn                             -> "MTB: DiagnosticReport.issued"
  * results                              -> "MTB: DiagnosticReport.result"
    * proteinExpression                  -> "MTB: Immunhistochemie PDL1 (Observation)"
    * msiMmr                             -> "MTB: Immunhistochemie MMR (Observation)"

// =============================================================================
// 12. MSI Findings → MTB: Mikrosatelliteninstabilitaet
// =============================================================================
* msiFindings                            -> "MTB: Mikrosatelliteninstabilitaet (Observation)"
  * id                                   -> "MTB: Observation.identifier"
  * specimen                             -> "MTB: Observation.specimen"
  * value                                -> "MTB: Observation.valueCodeableConcept"
  * method                               -> "MTB: Observation.method"

// =============================================================================
// 13. NGS Reports → MTB: NGS Bericht
// =============================================================================
* ngsReports                             -> "MTB: NGS Bericht (DiagnosticReport)"
  * id                                   -> "MTB: DiagnosticReport.identifier"
  * patient                              -> "MTB: DiagnosticReport.subject"
  * specimen                             -> "MTB: DiagnosticReport.specimen"
  * issuedOn                             -> "MTB: DiagnosticReport.issued"
  * type                                 -> "MTB: GenomicStudy.type"
  * metadata                             -> "MTB: GenomicStudyAnalysis"
    * referenceGenome                    -> "MTB: GenomicStudyAnalysis.extension(referenceGenome)"
    * sequencer                          -> "MTB: GenomicStudyAnalysis.device"
  * results                              -> "MTB: DiagnosticReport.result"
    * tumorCellContent                   -> "MTB: Tumorzellgehalt (Observation)"
    * tmb                                -> "MTB: Tumor Mutational Burden (Observation)"
    * brcaness                           -> "MTB: BRCAness (Observation)"
    * hrdScore                           -> "MTB: HRD Score (Observation)"
    * simpleVariants                     -> "MTB: Einfache Variante (Observation)"
    * copyNumberVariants                 -> "MTB: Copy Number Variante (Observation)"
    * dnaFusions                         -> "MTB: DNA Fusion (Observation)"
    * rnaFusions                         -> "MTB: RNA Fusion (Observation)"

// =============================================================================
// 14. Care Plans → MTB: Therapieplan
// =============================================================================
* carePlans                              -> "MTB: Therapieplan (CarePlan)"
  * id                                   -> "MTB: CarePlan.identifier"
  * patient                              -> "MTB: CarePlan.subject"
  * issuedOn                             -> "MTB: CarePlan.created"
  * reason                               -> "MTB: CarePlan.addresses"
  * noTargetFinding                      -> "MTB: CarePlan.extension(noTargetFinding)"
  * geneticCounselingRecommendation      -> "MTB: Humangenetische Beratung (ServiceRequest)"
  * medicationRecommendations            -> "MTB: Therapieempfehlung (MedicationRequest)"
    * medication                         -> "MTB: MedicationRequest.medication[x]"
    * priority                           -> "MTB: MedicationRequest.extension(Prioritaet)"
    * supportingVariants                 -> "MTB: MedicationRequest.supportingInfo"
    * levelOfEvidence                    -> "MTB: MedicationRequest.extension(Evidenzgraduierung)"
  * studyEnrollmentRecommendations       -> "MTB: Studieneinschluss (ServiceRequest)"

// =============================================================================
// 15. Follow-Ups → MTB: Follow-Up
// =============================================================================
* followUps                              -> "MTB: Follow-Up (ClinicalImpression)"
  * id                                   -> "MTB: ClinicalImpression.identifier"
  * patient                              -> "MTB: ClinicalImpression.subject"
  * date                                 -> "MTB: ClinicalImpression.effectiveDateTime"

// =============================================================================
// 16. Claims → MTB: Antrag Kostenuebernahme
// =============================================================================
* claims                                 -> "MTB: Antrag Kostenuebernahme (ClaimResponse)"
  * id                                   -> "MTB: ClaimResponse.identifier"
  * patient                              -> "MTB: ClaimResponse.patient"
  * recommendation                       -> "MTB: ClaimResponse.request"
  * issuedOn                             -> "MTB: ClaimResponse.created"

// =============================================================================
// 17. Claim Responses → MTB: Antwort Kostenuebernahme
// =============================================================================
* claimResponses                         -> "MTB: Antwort Kostenuebernahme (ClaimResponse)"
  * id                                   -> "MTB: ClaimResponse.identifier"
  * patient                              -> "MTB: ClaimResponse.patient"
  * claim                                -> "MTB: ClaimResponse.request"
  * issuedOn                             -> "MTB: ClaimResponse.created"
  * status                               -> "MTB: ClaimResponse.extension(Entscheidung)"
  * statusReason                         -> "MTB: ClaimResponse.extension(Ablehnungsgrund)"

// =============================================================================
// 18. Systemic Therapies → MTB: Systemische Therapie (Follow-Up)
// =============================================================================
* systemicTherapies                      -> "MTB: Systemische Therapie Follow-Up"
  * history                              -> "MTB: MedicationStatement + Procedure"
    * id                                 -> "MTB: MedicationStatement.identifier"
    * patient                            -> "MTB: MedicationStatement.subject"
    * indication                         -> "MTB: MedicationStatement.reasonReference"
    * basedOn                            -> "MTB: MedicationStatement.basedOn"
    * therapyLine                        -> "MTB: MedicationStatement.extension(Therapielinie)"
    * status                             -> "MTB: MedicationStatement.status"
    * statusReason                       -> "MTB: MedicationStatement.statusReason"
    * period                             -> "MTB: MedicationStatement.effectivePeriod"
    * medication                         -> "MTB: MedicationStatement.medication[x]"

// =============================================================================
// 19. Responses → MTB: Response Befund
// =============================================================================
* responses                              -> "MTB: Response Befund (Observation)"
  * id                                   -> "MTB: Observation.identifier"
  * patient                              -> "MTB: Observation.subject"
  * therapy                              -> "MTB: Observation.focus"
  * effectiveDate                        -> "MTB: Observation.effectiveDateTime"
  * value                                -> "MTB: Observation.valueCodeableConcept (RECIST)"
