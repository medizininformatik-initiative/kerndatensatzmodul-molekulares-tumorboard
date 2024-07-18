Profile: MII_PR_MTB_Therapieplan
Parent: MII_PR_Onko_Tumorkonferenz
Id: mii-pr-mtb-therapieplan
Title: "MII PR MTB Therapieplan"
Description: "Therapieplan gemäß Beschluss des Molekularen Tumorboards"
* insert PR_Header
* created MS // NOTE: Kartinalität min = 1 aus Elterprofil geerbt
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
* activity[Therapieempfehlung].reference only Reference(MII_PR_MTB_Therapieempfehlung)
* activity[Therapieempfehlung].detail MS // NOTE: Kartinalität min = 1 aus Elterprofil geerbet
* activity[Therapieempfehlung].detail.kind = #MedicationRequest (exactly)
* activity[Therapieempfehlung].detail.statusReason from MII_VS_MTB_TherapieempfehlungStatusBegruendung (required)
* activity contains HumangenetischeBeratung 0..1 MS
* activity[HumangenetischeBeratung] ^short = "Empfehlung Human-genetische Beratung"
* activity[HumangenetischeBeratung] ^definition = "Auftrag zur (erneuten) Human-genetischen Beratung"
* activity[HumangenetischeBeratung].reference 1..1 MS
* activity[HumangenetischeBeratung].reference only Reference(MII_PR_MTB_Humangenetische_Beratung_Auftrag)
* activity contains HistologieEvaluation 0..1 MS
* activity[HistologieEvaluation] ^short = "Empfehlung Histologie-Evaluation"
* activity[HistologieEvaluation] ^definition = "Auftrag zur (erneuten) Histologie-Evaluation"
* activity[HistologieEvaluation].reference 1..1 MS
* activity[HistologieEvaluation].reference only Reference(MII_PR_MTB_Histologie_Evaluation_Auftrag)
* activity contains Biopsy 0..* MS
* activity[Biopsy] ^short = "Empfehlung Biopsie"
* activity[Biopsy] ^definition = "Auftrag zur (erneuten) Biopsie"
* activity[Biopsy].reference 1..1 MS
* activity[Biopsy].reference only Reference(MII_PR_MTB_Biopsie_Auftrag)
