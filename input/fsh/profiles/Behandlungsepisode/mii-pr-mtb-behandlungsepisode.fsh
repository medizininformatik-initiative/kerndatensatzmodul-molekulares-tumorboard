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
* effectivePeriod.start ^short = "Einschlussdatum"
* effectivePeriod.start ^definition = "Einschlussdatum Molekulares Tumorboard"
* effectivePeriod.end ^short = "Abschlussdatum"
* effectivePeriod.end ^definition = "Abschlussdatum Molekulares Tumorboard"

* problem 0..* MS
* problem ^slicing.discriminator.type = #type
* problem ^slicing.discriminator.path = "$this"
* problem ^slicing.rules = #open
* problem ^slicing.description = "Slice für Diagnose"
* problem ^slicing.ordered = false

* problem contains PrimaertumorDiagnose 0..1 MS
* problem[PrimaertumorDiagnose] ^short = "Primärtumor Diagnose"
* problem[PrimaertumorDiagnose] ^definition = "Verweise auf Diagnose des Primärtumors"
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
* investigation[KrankengeschichteFamilie].item only Reference(MII_PR_MolGen_Familienanamnese or FamilyMemberHistory)

* investigation contains ECOG 0..1 MS
* investigation[ECOG].code.coding = $SCT#424122007 "ECOG performance status finding"
* investigation[ECOG].item 1..1
* investigation[ECOG].item ^short = "ECOG"
* investigation[ECOG].item ^definition = "ECOG Performance Status"
* investigation[ECOG].item only Reference(MII_PR_Onko_Allgemeiner_Leistungszustand_ECOG or Observation)

// TODO: SCT prüfen
* investigation contains NgsBericht 0..* MS
* investigation[NgsBericht].code.coding = $SCT#106221001 "Genetic finding"
* investigation[NgsBericht].item 1..1
* investigation[NgsBericht].item ^short = "NGS Report"
* investigation[NgsBericht].item ^definition = "Für Molekulares Tumorboard bereitgestellter Next Generation Sequencing Bericht"
* investigation[NgsBericht].item only Reference(MII_PR_MTB_NGS_Bericht or DiagnosticReport)

// TODO: SCT prüfen
* investigation contains MolekularPathologieBefund 0..* MS
* investigation[MolekularPathologieBefund].code.coding = $SCT#721967005 "Tissue pathology biopsy report"
* investigation[MolekularPathologieBefund].item 1..1
* investigation[MolekularPathologieBefund].item ^short = "Molekular Pathologie Befund"
* investigation[MolekularPathologieBefund].item ^definition = "Für Molekulares Tumorboard bereitgestellter Molekular Pathologie Befund"
* investigation[MolekularPathologieBefund].item only Reference(MII_PR_MTB_Molecular_Pathology_Report or DiagnosticReport)

* supportingInfo ^slicing.discriminator.type = #type
* supportingInfo ^slicing.discriminator.path = "$this"
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.description = "Slice für weitere Informationen"
* supportingInfo ^slicing.ordered = false

* supportingInfo contains Einwilligung 0..1 MS
* supportingInfo[Einwilligung] ^short = "Einwilligung"
* supportingInfo[Einwilligung] ^definition = "Einwilligung zum Molekularen Tumorboard"
* supportingInfo[Einwilligung] only Reference(Consent)

* supportingInfo contains Vortherapie 0..* MS
* supportingInfo[Vortherapie] ^short = "Vortherapie"
* supportingInfo[Vortherapie] ^definition = "Relevante Leitlinien-basierte Vortherapie"
* supportingInfo[Vortherapie] only Reference(
    MII_PR_MTB_Systemische_Vortherapie or 
    MII_PR_Onko_Strahlentherapie or 
    MII_PR_Onko_Operation or 
    MII_PR_Prozedur_Procedure or
    Procedure
)
* supportingInfo[Vortherapie].extension contains MII_EX_MTB_Leitlinie_Dokumentation named LeitlinieDokumentation 0..1 MS
* supportingInfo[Vortherapie].extension[LeitlinieDokumentation] ^short = "Leitlinie Dokumentation"
* supportingInfo[Vortherapie].extension[LeitlinieDokumentation] ^definition = "Dokumentation zur Leitlinien-konformen Umsetzung der Prozedur"

* supportingInfo contains Vorbefund 0..* MS
* supportingInfo[Vorbefund] ^short = "Vorbefund"
* supportingInfo[Vorbefund] ^definition = "Relevanter Vorbefund"
* supportingInfo[Vorbefund] only Reference(DiagnosticReport or Observation)

* extension contains MII_EX_MTB_Leitlinienbehandlung_Status named LeitlinenbehandlungStatus 0..1 MS
