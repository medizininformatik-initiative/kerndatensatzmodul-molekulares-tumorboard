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

* created 1..1 MS 
* created ^short = "Erstellungsdatum"
* created ^definition = "Erstellungsdatum des Therapieplans gemäß Beschluss des Molekularen Tumorboards"

* description 0..1 MS
* description ^short = "Protokollauszug"
* description ^definition = "Protokollauszug aus dem Beschluss des Molekularen Tumorboards"

* activity 0..* MS

* activity[extended] contains Therapieempfehlung 0..* MS
* activity[extended][Therapieempfehlung] ^short = "Therapieempfehlung Systemische Therapie"
* activity[extended][Therapieempfehlung] ^definition = "Therapieempfehlung für eine medikamentöse Systemische Therapie"
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
* activity[extended][HumangenetischeBeratung].reference 1..1 MS
* activity[extended][HumangenetischeBeratung].reference only Reference(MII_PR_MTB_Humangenetische_Beratung_Auftrag)
* activity[extended][HumangenetischeBeratung].detail 0..0

* activity[extended] contains HistologieEvaluation 0..1 MS
* activity[extended][HistologieEvaluation] ^short = "Empfehlung Histologie-Evaluation"
* activity[extended][HistologieEvaluation] ^definition = "Auftrag zur (erneuten) Histologie-Evaluation"
* activity[extended][HistologieEvaluation].reference 1..1 MS
* activity[extended][HistologieEvaluation].reference only Reference(MII_PR_MTB_Histologie_Evaluation_Auftrag)
* activity[extended][HistologieEvaluation].detail 0..0

* activity[extended] contains Biopsie 0..* MS
* activity[extended][Biopsie] ^short = "Empfehlung Biopsie"
* activity[extended][Biopsie] ^definition = "Auftrag zur (erneuten) Biopsie"
* activity[extended][Biopsie].reference 1..1 MS
* activity[extended][Biopsie].reference only Reference(MII_PR_MTB_Biopsie_Auftrag)
* activity[extended][Biopsie].detail 0..0

* activity[extended] contains Studieneinschlussempfehlung 0..* MS
* activity[extended][Studieneinschlussempfehlung] ^short = "Studieneinschlussempfehlung"
* activity[extended][Studieneinschlussempfehlung] ^definition = "Anfrage zum Studieneinschluss"
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
* supportingInfo[Behandlungsepisode] only Reference(MII_PR_MTB_Behandlungsepisode or ClinicalImpression)