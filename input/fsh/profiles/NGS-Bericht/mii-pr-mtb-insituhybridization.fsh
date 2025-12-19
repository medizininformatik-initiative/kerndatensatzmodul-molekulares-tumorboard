// In Situ Hybridization (ISH) Profile
// Supports FISH, CISH, SISH techniques

Profile: MII_PR_MTB_Biomarker_InSituHybridization
Parent: MII_PR_MTB_Molekularer_Biomarker
Id: mii-pr-mtb-insituhybridization
Title: "MII PR MTB In Situ Hybridization"
Description: "Molekularer Biomarker - In Situ Hybridization Profil. Unterstützt FISH, CISH und SISH Methoden."
* insert PR_Header

* identifier 0..1 MS
* identifier ^short = "Identifier zur Abgrenzung anderer gleichartiger Untersuchungen"
* identifier ^definition = "Identifier der Untersuchung, damit die Untersuchung auch außerhalb von FHIR eindeutig identifiziert werden kann. Sollte ISH oder vlg. beinhalten, um von anderen Biomarkeruntersuchungen abzugrenzen."

* focus MS
* focus only Reference(MII_PR_Onko_Diagnose_Primaertumor)

// Code - Sliced pattern (like IHC): spezifisch + generisch
* code 1..1 MS
* code ^short = "Code für In Situ Hybridization Untersuchung"
* code ^definition = "Kodierung für In Situ Hybridization. Nach Möglichkeit sind spezifische Codes zu verwenden. Wenn weder in SNOMED noch LOINC spezifische Codes vorhanden sind, ist der generische Code mit Textbeschreibung zu verwenden."

* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding ^slicing.description = "Slice für spezifischen und generischen ISH Code"
* code.coding ^slicing.ordered = false

* code.coding contains spezifisch 0..1 MS and generisch 0..1 MS

* code.coding[spezifisch] ^short = "Spezifischer ISH Code"
* code.coding[spezifisch] ^definition = "Spezifischer SNOMED-CT oder LOINC Code für die ISH-Untersuchung. Wenn kein spezifischer Code vorhanden ist, generischen Code verwenden."
* code.coding[spezifisch].system 1..1 MS
* code.coding[spezifisch].code 1..1 MS

* code.coding[generisch] = $SCT#51864006 "Nucleic acid hybridization, function (observable entity)"
* code.coding[generisch] ^short = "Generischer ISH Code"
* code.coding[generisch] ^definition = "Generischer Code für ISH. Nur zu benutzen, wenn kein spezifischer Code in SNOMED oder LOINC vorhanden ist."

// Method - FISH, CISH, SISH
* method 1..1 MS
* method from MII_VS_MTB_ISH_Method (extensible)
* method ^short = "FISH | CISH | SISH"
* method ^definition = "In Situ Hybridization Methode: Fluoreszenz (FISH), Chromogen (CISH), oder Silber (SISH)"

// Value options - supports Ratio, Quantity, or CodeableConcept
* value[x] MS
* valueQuantity MS
* valueQuantity ^short = "Quantitatives Ergebnis (z.B. Signalanzahl)"
* valueRatio MS
* valueRatio ^short = "Ratio-Ergebnis (z.B. HER2/CEP17)"
* valueCodeableConcept MS
* valueCodeableConcept ^short = "Kategorisches Ergebnis (z.B. positiv/negativ)"

* interpretation MS
* interpretation ^short = "Interpretation"
* interpretation ^definition = "Interpretation der ISH Signale. Die Interpretation kann auf Vergleich mit Referenzwerten basieren."

// Component slicing - inherits from parent MolekularerBiomarker (discriminator: value on code)
// Child profiles (e.g., HER2) define specific component slices with LOINC codes
* component[gene-studied] ^short = "Untersuchtes Gen"
* component[gene-studied] ^definition = "Das mit der Target-Sonde untersuchte Gen (z.B. ERBB2)"
* component[biomarker-category] MS
