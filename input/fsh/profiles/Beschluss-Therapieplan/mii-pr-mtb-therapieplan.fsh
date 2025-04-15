Profile: MII_PR_MTB_Therapieplan
Parent: MII_PR_Onko_Tumorkonferenz
Id: mii-pr-mtb-therapieplan
Title: "MII PR MTB Therapieplan"
Description: "Therapieplan gemäß Beschluss des Molekularen Tumorboards"
* insert PR_Header

* created MS 
* created ^definition = "Erstellungsdatum des Therapieplans gemäß Beschluss des Molekularen Tumorboards"

* description 0..1 MS
* description ^definition = "Protokollauszug aus dem Beschluss des Molekularen Tumorboards"

* activity 0..* MS
* activity ^slicing.discriminator.type = #type
* activity ^slicing.discriminator.path = "reference.reference"
* activity ^slicing.rules = #open
* activity ^slicing.description = "Slice für Empfehlung zum weiteren Vorgehen auf Basis des referenzierten Ressourcentyps"
* activity ^slicing.ordered = false

* activity contains Therapieempfehlung 0..* MS
* activity[Therapieempfehlung] ^short = "Therapieempfehlung Systemische Therapie"
* activity[Therapieempfehlung] ^definition = "Therapieempfehlung für eine medikamentöse Systemische Therapie"
* activity[Therapieempfehlung] ^comment = "Kann keine Therapieempfehlung für eine Systemische Therapie gegeben werden, muss dies als Begründung unter `detail.statusReason` angegeben werden"
* activity[Therapieempfehlung].reference 0..1 MS
* activity[Therapieempfehlung].reference only Reference(
    MII_PR_MTB_Therapieempfehlung or
    MII_PR_MTB_Therapieempfehlung_Kombination or
    MedicationRequest or
    RequestGroup
)
* activity[Therapieempfehlung].detail MS // NOTE: Kartinalität min = 1 aus Elterprofil geerbet
* activity[Therapieempfehlung].detail.statusReason from MII_VS_MTB_Empfehlung_StatusBegruendung (required)

* activity contains HumangenetischeBeratung 0..1 MS
* activity[HumangenetischeBeratung] ^short = "Empfehlung Human-genetische Beratung"
* activity[HumangenetischeBeratung] ^definition = "Auftrag zur (erneuten) Human-genetischen Beratung"
* activity[HumangenetischeBeratung].reference 1..1 MS
* activity[HumangenetischeBeratung].reference only Reference(MII_PR_MTB_Humangenetische_Beratung_Auftrag or ServiceRequest)

* activity contains HistologieEvaluation 0..1 MS
* activity[HistologieEvaluation] ^short = "Empfehlung Histologie-Evaluation"
* activity[HistologieEvaluation] ^definition = "Auftrag zur (erneuten) Histologie-Evaluation"
* activity[HistologieEvaluation].reference 1..1 MS
* activity[HistologieEvaluation].reference only Reference(MII_PR_MTB_Histologie_Evaluation_Auftrag or ServiceRequest)

* activity contains Biopsy 0..* MS
* activity[Biopsy] ^short = "Empfehlung Biopsie"
* activity[Biopsy] ^definition = "Auftrag zur (erneuten) Biopsie"
* activity[Biopsy].reference 1..1 MS
* activity[Biopsy].reference only Reference(MII_PR_MTB_Biopsie_Auftrag or ServiceRequest)

* activity contains Studieneinschlussempfehlung 0..* MS
* activity[Studieneinschlussempfehlung] ^short = "Studieneinschlussempfehlung"
* activity[Studieneinschlussempfehlung] ^definition = "Anfrage zum Studieneinschluss"
* activity[Studieneinschlussempfehlung].reference 1..1 MS
* activity[Studieneinschlussempfehlung].reference only Reference(MII_PR_MTB_Studieneinschluss_Anfrage or ServiceRequest)

// Siehe Konversion R5 nach R4: https://build.fhir.org/ig/HL7/fhir-cross-version/StructureMap-CarePlan5to4.html
* activity 0..* MS
* activity ^slicing.discriminator.type = #type
* activity ^slicing.discriminator.path = "outcomeReference.reference"
* activity ^slicing.rules = #open
* activity ^slicing.description = "Slice für Dokumentation einer umgesetzten Empfehlung auf Basis des referenzierten Ressourcentyps"
* activity ^slicing.ordered = false

// TODO: Allgemeine Ressourcen vs. konkrete Profile besprechen
// NOTE: Umgesetzte "Therapieempfehlung" -> Procedure, MedicationStatement
// NOTE: Umgesetzte "HumangenetischeBeratung" -> DiagnosticReport, Observation
// NOTE: Umgesetzte "HistologieEvaluation" -> DiagnosticReport, Observation
// NOTE: Umgesetzte "Biopsie" -> DiagnosticReport, Observation
// NOTE: Umgesetzte "Studieneinschlussempfehlung" -> MedicationStatement, Consent
// NOTE: Umgesetzte begleitende Maßnahmen, z.B. Monitoring -> Procedure
* activity contains UmgesetzteEmpfehlung 0..* MS
* activity[UmgesetzteEmpfehlung] ^short = "Umgesetzte Empfehlung"
* activity[UmgesetzteEmpfehlung] ^definition = "Dokumentation einer umgesetzten Empfehlung"
* activity[UmgesetzteEmpfehlung].outcomeReference 1..1 MS
* activity[UmgesetzteEmpfehlung].outcomeReference only Reference(
    MII_PR_Consent_Einwilligung or
    MII_PR_MTB_Studie or
    MII_PR_Onko_Befund or
    MII_PR_Onko_Systemische_Therapie or
    MII_PR_Onko_Systemische_Therapie_Medikation or
    MII_PR_Patho_Finding or
    MII_PR_Patho_Report or
    MII_PR_Prozedur_Procedure or
    Consent or
    DiagnosticReport or
    MedicationStatement or
    Observation or
    Procedure
)

* supportingInfo ^slicing.discriminator.type = #type
* supportingInfo ^slicing.discriminator.path = "$this"
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.description = "Slice für weitere Informationen"
* supportingInfo ^slicing.ordered = false

* supportingInfo contains Behandlungsepisode 0..1 MS
* supportingInfo[Behandlungsepisode] ^short = "Behandlungsepisode"
* supportingInfo[Behandlungsepisode] ^definition = "Aktueller Krankheitszustand und bisherige Behandlungsmaßnahmen"
* supportingInfo[Behandlungsepisode] only Reference(MII_PR_MTB_Behandlungsepisode)