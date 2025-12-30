Profile: MII_PR_MTB_Therapieplan
Parent: MII_PR_Onko_Tumorkonferenz
Id: mii-pr-mtb-therapieplan
Title: "MII PR MTB Therapieplan"
Description: "Therapieplan gemäß Beschluss des Molekularen Tumorboards"
* insert PR_Header

* status ^short = "draft | active | on-hold | revoked | completed | entered-in-error | unknown"
* status ^definition = "Status der Umsetzung des beschlossenen Therapieplans"
* status ^comment = "
    active: Empfehlung bzw. Therapieoption in Umsetzung (Regelfall),
    revoked: Molekularer Tumorboard-Fall ist abgeschlossen,
    completed: Alle Empfehlungen bzw. Therapieoptionen ausgeschöpft oder Patient verstorben"
* insert Translation(status ^short, de-DE, draft | active | on-hold | revoked | completed | entered-in-error | unknown)
* insert Translation(status ^definition, de-DE, Status der Umsetzung des beschlossenen Therapieplans)
* insert Translation(status ^short, en, draft | active | on-hold | revoked | completed | entered-in-error | unknown)
* insert Translation(status ^definition, en, Status of the approved therapy plan implementation)

* created 1..1 MS
* created ^short = "Erstellungsdatum"
* created ^definition = "Erstellungsdatum des Therapieplans gemäß Beschluss des Molekularen Tumorboards"
* insert Translation(created ^short, de-DE, Erstellungsdatum)
* insert Translation(created ^definition, de-DE, Erstellungsdatum des Therapieplans gemäß Beschluss des Molekularen Tumorboards)
* insert Translation(created ^short, en, Creation Date)
* insert Translation(created ^definition, en, Creation date of the therapy plan as per Molecular Tumor Board decision)

* description 0..1 MS
* description ^short = "Protokollauszug"
* description ^definition = "Protokollauszug aus dem Beschluss des Molekularen Tumorboards"
* insert Translation(description ^short, de-DE, Protokollauszug)
* insert Translation(description ^definition, de-DE, Protokollauszug aus dem Beschluss des Molekularen Tumorboards)
* insert Translation(description ^short, en, Protocol Excerpt)
* insert Translation(description ^definition, en, Protocol excerpt from the Molecular Tumor Board decision)

* activity 0..* MS

* activity[extended] contains Therapieempfehlung 0..* MS
* activity[extended][Therapieempfehlung] ^short = "Therapieempfehlung Systemische Therapie"
* activity[extended][Therapieempfehlung] ^definition = "Therapieempfehlung für eine medikamentöse Systemische Therapie"
* insert Translation(activity[extended][Therapieempfehlung] ^short, de-DE, Therapieempfehlung Systemische Therapie)
* insert Translation(activity[extended][Therapieempfehlung] ^definition, de-DE, Therapieempfehlung für eine medikamentöse Systemische Therapie)
* insert Translation(activity[extended][Therapieempfehlung] ^short, en, Therapy Recommendation Systemic Therapy)
* insert Translation(activity[extended][Therapieempfehlung] ^definition, en, Therapy recommendation for a systemic drug therapy)
* activity[extended][Therapieempfehlung].reference 1..1 MS
* activity[extended][Therapieempfehlung].reference only Reference(
    MII_PR_MTB_Therapieempfehlung or
    MII_PR_MTB_Therapieempfehlung_Kombination or
    MedicationRequest or
    RequestGroup
)
* activity[extended][Therapieempfehlung].detail 0..0

* activity[extended] contains HumangenetischeBeratung 0..1 MS
* activity[extended][HumangenetischeBeratung] ^short = "Empfehlung Human-genetische Beratung"
* activity[extended][HumangenetischeBeratung] ^definition = "Auftrag zur (erneuten) Human-genetischen Beratung"
* insert Translation(activity[extended][HumangenetischeBeratung] ^short, de-DE, Empfehlung Human-genetische Beratung)
* insert Translation(activity[extended][HumangenetischeBeratung] ^definition, de-DE, Auftrag zur erneuten Human-genetischen Beratung)
* insert Translation(activity[extended][HumangenetischeBeratung] ^short, en, Recommendation for Human Genetic Counseling)
* insert Translation(activity[extended][HumangenetischeBeratung] ^definition, en, Request for repeat human genetic counseling)
* activity[extended][HumangenetischeBeratung].reference 1..1 MS
* activity[extended][HumangenetischeBeratung].reference only Reference(MII_PR_MTB_Humangenetische_Beratung_Auftrag)
* activity[extended][HumangenetischeBeratung].detail 0..0

* activity[extended] contains HistologieEvaluation 0..1 MS
* activity[extended][HistologieEvaluation] ^short = "Empfehlung Histologie-Evaluation"
* activity[extended][HistologieEvaluation] ^definition = "Auftrag zur (erneuten) Histologie-Evaluation"
* insert Translation(activity[extended][HistologieEvaluation] ^short, de-DE, Empfehlung Histologie-Evaluation)
* insert Translation(activity[extended][HistologieEvaluation] ^definition, de-DE, Auftrag zur erneuten Histologie-Evaluation)
* insert Translation(activity[extended][HistologieEvaluation] ^short, en, Recommendation for Histology Evaluation)
* insert Translation(activity[extended][HistologieEvaluation] ^definition, en, Request for repeat histology evaluation)
* activity[extended][HistologieEvaluation].reference 1..1 MS
* activity[extended][HistologieEvaluation].reference only Reference(MII_PR_MTB_Histologie_Evaluation_Auftrag)
* activity[extended][HistologieEvaluation].detail 0..0

* activity[extended] contains Biopsie 0..* MS
* activity[extended][Biopsie] ^short = "Empfehlung Biopsie"
* activity[extended][Biopsie] ^definition = "Auftrag zur (erneuten) Biopsie"
* insert Translation(activity[extended][Biopsie] ^short, de-DE, Empfehlung Biopsie)
* insert Translation(activity[extended][Biopsie] ^definition, de-DE, Auftrag zur erneuten Biopsie)
* insert Translation(activity[extended][Biopsie] ^short, en, Recommendation for Biopsy)
* insert Translation(activity[extended][Biopsie] ^definition, en, Request for repeat biopsy)
* activity[extended][Biopsie].reference 1..1 MS
* activity[extended][Biopsie].reference only Reference(MII_PR_MTB_Biopsie_Auftrag)
* activity[extended][Biopsie].detail 0..0

* activity[extended] contains Studieneinschlussempfehlung 0..* MS
* activity[extended][Studieneinschlussempfehlung] ^short = "Studieneinschlussempfehlung"
* activity[extended][Studieneinschlussempfehlung] ^definition = "Anfrage zum Studieneinschluss"
* insert Translation(activity[extended][Studieneinschlussempfehlung] ^short, de-DE, Studieneinschlussempfehlung)
* insert Translation(activity[extended][Studieneinschlussempfehlung] ^definition, de-DE, Anfrage zum Studieneinschluss)
* insert Translation(activity[extended][Studieneinschlussempfehlung] ^short, en, Study Enrollment Recommendation)
* insert Translation(activity[extended][Studieneinschlussempfehlung] ^definition, en, Request for study enrollment)
* activity[extended][Studieneinschlussempfehlung].reference 1..1 MS
* activity[extended][Studieneinschlussempfehlung].reference only Reference(MII_PR_MTB_Studieneinschluss_Anfrage)
* activity[extended][Studieneinschlussempfehlung].detail 0..0

// Siehe Konversion R5 nach R4: https://build.fhir.org/ig/HL7/fhir-cross-version/StructureMap-CarePlan5to4.html


// TODO: Allgemeine Ressourcen vs. konkrete Profile besprechen
// NOTE: Umgesetzte "Therapieempfehlung" -> Procedure, MedicationStatement
// NOTE: Umgesetzte "HumangenetischeBeratung" -> DiagnosticReport, Observation
// NOTE: Umgesetzte "HistologieEvaluation" -> DiagnosticReport, Observation
// NOTE: Umgesetzte "Biopsie" -> DiagnosticReport, Observation
// NOTE: Umgesetzte "Studieneinschlussempfehlung" -> MedicationStatement, Consent
// NOTE: Umgesetzte begleitende Maßnahmen, z.B. Monitoring -> Procedure


* supportingInfo ^slicing.discriminator.type = #type
* supportingInfo ^slicing.discriminator.path = "$this"
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.description = "Slice für weitere Informationen"
* supportingInfo ^slicing.ordered = false

* supportingInfo contains Behandlungsepisode 0..1 MS
* supportingInfo[Behandlungsepisode] ^short = "Behandlungsepisode"
* supportingInfo[Behandlungsepisode] ^definition = "Aktueller Krankheitszustand und bisherige Behandlungsmaßnahmen"
* insert Translation(supportingInfo[Behandlungsepisode] ^short, de-DE, Behandlungsepisode)
* insert Translation(supportingInfo[Behandlungsepisode] ^definition, de-DE, Aktueller Krankheitszustand und bisherige Behandlungsmaßnahmen)
* insert Translation(supportingInfo[Behandlungsepisode] ^short, en, Treatment Episode)
* insert Translation(supportingInfo[Behandlungsepisode] ^definition, en, Current disease status and previous treatment measures)
* supportingInfo[Behandlungsepisode] only Reference(MII_PR_MTB_Behandlungsepisode or ClinicalImpression)