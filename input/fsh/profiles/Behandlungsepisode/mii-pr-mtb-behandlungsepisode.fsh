Profile: MII_PR_MTB_Behandlungsepisode
Parent: ClinicalImpression
Id: mii-pr-mtb-behandlungsepisode
Title: "MII PR MTB Behandlungsepisode"
Description: "Aktueller Krankheitszustand und bisherige Behandlungsmaßnahmen"
* insert PR_Header

* subject only Reference(MII_PR_Person_Patient or MII_PR_Person_PatientPseudonymisiert)

* effectivePeriod 1..1 MS
* effectivePeriod ^short = "Zeitraum der Behandlungsepisode"
* effectivePeriod ^definition = "Zeitraum von Einschluss bis Abschluss im Molekularen Tumorboard"
* insert Translation(effectivePeriod ^short, de-DE, Zeitraum der Behandlungsepisode)
* insert Translation(effectivePeriod ^definition, de-DE, Zeitraum von Einschluss bis Abschluss im Molekularen Tumorboard)
* insert Translation(effectivePeriod ^short, en, Treatment Episode Period)
* insert Translation(effectivePeriod ^definition, en, Period from inclusion to completion in the Molecular Tumor Board)
* effectivePeriod.start ^short = "Einschlussdatum"
* effectivePeriod.start ^definition = "Einschlussdatum Molekulares Tumorboard"
* insert Translation(effectivePeriod.start ^short, de-DE, Einschlussdatum)
* insert Translation(effectivePeriod.start ^definition, de-DE, Einschlussdatum Molekulares Tumorboard)
* insert Translation(effectivePeriod.start ^short, en, Inclusion Date)
* insert Translation(effectivePeriod.start ^definition, en, Inclusion date for Molecular Tumor Board)
* effectivePeriod.end ^short = "Abschlussdatum"
* effectivePeriod.end ^definition = "Abschlussdatum Molekulares Tumorboard"
* insert Translation(effectivePeriod.end ^short, de-DE, Abschlussdatum)
* insert Translation(effectivePeriod.end ^definition, de-DE, Abschlussdatum Molekulares Tumorboard)
* insert Translation(effectivePeriod.end ^short, en, Completion Date)
* insert Translation(effectivePeriod.end ^definition, en, Completion date for Molecular Tumor Board)
* effectivePeriod.end MS

* problem 0..* MS
* problem ^slicing.discriminator.type = #type
* problem ^slicing.discriminator.path = "$this"
* problem ^slicing.rules = #open
* problem ^slicing.description = "Slice für Diagnose"
* problem ^slicing.ordered = false

* problem contains PrimaertumorDiagnose 0..1 MS
* problem[PrimaertumorDiagnose] ^short = "Primärtumor Diagnose"
* problem[PrimaertumorDiagnose] ^definition = "Verweise auf Diagnose des Primärtumors"
* insert Translation(problem[PrimaertumorDiagnose] ^short, de-DE, Primärtumor Diagnose)
* insert Translation(problem[PrimaertumorDiagnose] ^definition, de-DE, Verweise auf Diagnose des Primärtumors)
* insert Translation(problem[PrimaertumorDiagnose] ^short, en, Primary Tumor Diagnosis)
* insert Translation(problem[PrimaertumorDiagnose] ^definition, en, Reference to primary tumor diagnosis)
* problem[PrimaertumorDiagnose] only Reference(MII_PR_MTB_Diagnose_Primaertumor or Condition)

* investigation ^slicing.discriminator.type = #value
* investigation ^slicing.discriminator.path = "code.coding"
* investigation ^slicing.rules = #open
* investigation ^slicing.description = "Slice für relevante Ermittlungen"
* investigation ^slicing.ordered = false

* investigation contains KrankengeschichteFamilie 0..1 MS
* investigation[KrankengeschichteFamilie].code.coding = $SCT#416471007 "Family medical history"
* investigation[KrankengeschichteFamilie].item 1..1
* investigation[KrankengeschichteFamilie].item ^short = "Krankengeschichte Familie"
* investigation[KrankengeschichteFamilie].item ^definition = "Verweis auf familiäre Krankengeschichte"
* insert Translation(investigation[KrankengeschichteFamilie].item ^short, de-DE, Krankengeschichte Familie)
* insert Translation(investigation[KrankengeschichteFamilie].item ^definition, de-DE, Verweis auf familiäre Krankengeschichte)
* insert Translation(investigation[KrankengeschichteFamilie].item ^short, en, Family Medical History)
* insert Translation(investigation[KrankengeschichteFamilie].item ^definition, en, Reference to family medical history)
* investigation[KrankengeschichteFamilie].item only Reference(MII_PR_MolGen_Familienanamnese or FamilyMemberHistory)

* investigation contains ECOG 0..1 MS
* investigation[ECOG].code.coding = $SCT#424122007 "ECOG performance status finding"
* investigation[ECOG].item 1..1
* investigation[ECOG].item ^short = "ECOG"
* investigation[ECOG].item ^definition = "ECOG Performance Status"
* insert Translation(investigation[ECOG].item ^short, de-DE, ECOG)
* insert Translation(investigation[ECOG].item ^definition, de-DE, ECOG Performance Status)
* insert Translation(investigation[ECOG].item ^short, en, ECOG)
* insert Translation(investigation[ECOG].item ^definition, en, ECOG Performance Status)
* investigation[ECOG].item only Reference(MII_PR_Onko_Allgemeiner_Leistungszustand_ECOG or Observation)

// TODO: SCT prüfen
* investigation contains NgsBericht 0..* MS
* investigation[NgsBericht].code.coding = $SCT#106221001 "Genetic finding"
* investigation[NgsBericht].item 1..1
* investigation[NgsBericht].item ^short = "NGS Report"
* investigation[NgsBericht].item ^definition = "Für Molekulares Tumorboard bereitgestellter Next Generation Sequencing Bericht"
* insert Translation(investigation[NgsBericht].item ^short, de-DE, NGS Report)
* insert Translation(investigation[NgsBericht].item ^definition, de-DE, Für Molekulares Tumorboard bereitgestellter Next Generation Sequencing Bericht)
* insert Translation(investigation[NgsBericht].item ^short, en, NGS Report)
* insert Translation(investigation[NgsBericht].item ^definition, en, Next Generation Sequencing report provided for the Molecular Tumor Board)
* investigation[NgsBericht].item only Reference(MII_PR_MTB_NGS_Bericht or DiagnosticReport)

// TODO: SCT prüfen
* investigation contains MolekularPathologieBefund 0..* MS
* investigation[MolekularPathologieBefund].code.coding = $LNC#60568-3 "Pathology synoptic report"
* investigation[MolekularPathologieBefund].item 1..1
* investigation[MolekularPathologieBefund].item ^short = "Molekular Pathologie Befund"
* investigation[MolekularPathologieBefund].item ^definition = "Für Molekulares Tumorboard bereitgestellter Molekular Pathologie Befund"
* insert Translation(investigation[MolekularPathologieBefund].item ^short, de-DE, Molekular Pathologie Befund)
* insert Translation(investigation[MolekularPathologieBefund].item ^definition, de-DE, Für Molekulares Tumorboard bereitgestellter Molekular Pathologie Befund)
* insert Translation(investigation[MolekularPathologieBefund].item ^short, en, Molecular Pathology Report)
* insert Translation(investigation[MolekularPathologieBefund].item ^definition, en, Molecular pathology report provided for the Molecular Tumor Board)
* investigation[MolekularPathologieBefund].item only Reference(MII_PR_MTB_Molecular_Pathology_Report or DiagnosticReport)

* investigation contains Einwilligung 0..1 MS
* investigation[Einwilligung].code.coding = $LNC#105511-0 "Was consent given"
* investigation[Einwilligung].item 1..1
* investigation[Einwilligung].item ^short = "Einwilligung"
* investigation[Einwilligung].item ^definition = "Einwilligung zum Molekularen Tumorboard"
* insert Translation(investigation[Einwilligung].item ^short, de-DE, Einwilligung)
* insert Translation(investigation[Einwilligung].item ^definition, de-DE, Einwilligung zum Molekularen Tumorboard)
* insert Translation(investigation[Einwilligung].item ^short, en, Consent)
* insert Translation(investigation[Einwilligung].item ^definition, en, Consent for the Molecular Tumor Board)
* investigation[Einwilligung].item only Reference(MII_PR_MTB_Consent_Given)

* supportingInfo ^slicing.discriminator.type = #profile
* supportingInfo ^slicing.discriminator.path = "$this.resolve()"
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.description = "Slice für weitere Informationen"
* supportingInfo ^slicing.ordered = false

* supportingInfo contains Vorbefund 0..* MS
* supportingInfo[Vorbefund] ^short = "Vorbefund"
* supportingInfo[Vorbefund] ^definition = "Relevanter Vorbefund"
* insert Translation(supportingInfo[Vorbefund] ^short, de-DE, Vorbefund)
* insert Translation(supportingInfo[Vorbefund] ^definition, de-DE, Relevanter Vorbefund)
* insert Translation(supportingInfo[Vorbefund] ^short, en, Previous Finding)
* insert Translation(supportingInfo[Vorbefund] ^definition, en, Relevant previous finding)
* supportingInfo[Vorbefund] only Reference(DiagnosticReport or Observation)

* supportingInfo contains Vortherapie 0..* MS
* supportingInfo[Vortherapie] ^short = "Vortherapie"
* supportingInfo[Vortherapie] ^definition = "Relevante Leitlinien-basierte Vortherapie"
* insert Translation(supportingInfo[Vortherapie] ^short, de-DE, Vortherapie)
* insert Translation(supportingInfo[Vortherapie] ^definition, de-DE, Relevante Leitlinien-basierte Vortherapie)
* insert Translation(supportingInfo[Vortherapie] ^short, en, Prior Therapy)
* insert Translation(supportingInfo[Vortherapie] ^definition, en, Relevant guideline-based prior therapy)
* supportingInfo[Vortherapie] only Reference(
    MII_PR_MTB_Systemische_Vortherapie or 
    MII_PR_Onko_Strahlentherapie or 
    MII_PR_Onko_Operation or 
    MII_PR_Prozedur_Procedure
)
* supportingInfo[Vortherapie].extension contains MII_EX_MTB_Leitlinie_Dokumentation named LeitlinieDokumentation 0..1 MS
* supportingInfo[Vortherapie].extension[LeitlinieDokumentation] ^short = "Leitlinie Dokumentation"
* supportingInfo[Vortherapie].extension[LeitlinieDokumentation] ^definition = "Dokumentation zur Leitlinien-konformen Umsetzung der Prozedur"
* insert Translation(supportingInfo[Vortherapie].extension[LeitlinieDokumentation] ^short, de-DE, Leitlinie Dokumentation)
* insert Translation(supportingInfo[Vortherapie].extension[LeitlinieDokumentation] ^definition, de-DE, Dokumentation zur Leitlinien-konformen Umsetzung der Prozedur)
* insert Translation(supportingInfo[Vortherapie].extension[LeitlinieDokumentation] ^short, en, Guideline Documentation)
* insert Translation(supportingInfo[Vortherapie].extension[LeitlinieDokumentation] ^definition, en, Documentation for guideline-compliant implementation of the procedure)

* supportingInfo contains Therapieplan 0..1 MS
* supportingInfo[Therapieplan] ^short = "Therapieplan"
* supportingInfo[Therapieplan] ^definition = "Therapieplan gemäß Beschluss des Molekularen Tumorboards"
* insert Translation(supportingInfo[Therapieplan] ^short, de-DE, Therapieplan)
* insert Translation(supportingInfo[Therapieplan] ^definition, de-DE, Therapieplan gemäß Beschluss des Molekularen Tumorboards)
* insert Translation(supportingInfo[Therapieplan] ^short, en, Therapy Plan)
* insert Translation(supportingInfo[Therapieplan] ^definition, en, Therapy plan according to the Molecular Tumor Board decision)
* supportingInfo[Therapieplan] only Reference(MII_PR_MTB_Therapieplan or CarePlan)

* extension contains MII_EX_MTB_Leitlinienbehandlung_Status named LeitlinienbehandlungStatus 0..1 MS