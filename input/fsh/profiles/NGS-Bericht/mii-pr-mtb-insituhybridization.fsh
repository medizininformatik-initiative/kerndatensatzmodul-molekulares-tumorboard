// In Situ Hybridization (ISH) Profile
// Supports FISH, CISH, SISH techniques

Invariant: mii-mtb-ish-1
Description: "Entweder muss ein spezifischer Code oder gene-studied angegeben werden (Either a specific code or gene-studied must be provided)"
Expression: "code.coding.where(system != 'http://snomed.info/sct' or code != '51864006').exists() or component.where(code.coding.where(system = 'http://loinc.org' and code = '48018-6').exists()).exists()"
Severity: #error

Profile: MII_PR_MTB_Biomarker_InSituHybridization
Parent: MII_PR_MTB_Molekularer_Biomarker
Id: mii-pr-mtb-insituhybridization
Title: "MII PR MTB In Situ Hybridization"
Description: "Molekularer Biomarker - In Situ Hybridization Profil. Unterstützt FISH, CISH und SISH Methoden."
* insert PR_Header

* obeys mii-mtb-ish-1

* identifier 0..1 MS
* identifier ^short = "Identifier zur Abgrenzung anderer gleichartiger Untersuchungen"
* identifier ^definition = "Identifier der Untersuchung, damit die Untersuchung auch außerhalb von FHIR eindeutig identifiziert werden kann. Sollte ISH oder vlg. beinhalten, um von anderen Biomarkeruntersuchungen abzugrenzen."
* insert Translation(identifier ^short, de-DE, Identifier zur Abgrenzung anderer gleichartiger Untersuchungen)
* insert Translation(identifier ^definition, de-DE, Identifier der Untersuchung damit die Untersuchung auch ausserhalb von FHIR eindeutig identifiziert werden kann. Sollte ISH oder aehnliches beinhalten um von anderen Biomarkeruntersuchungen abzugrenzen.)
* insert Translation(identifier ^short, en, Identifier to distinguish from other similar examinations)
* insert Translation(identifier ^definition, en, Identifier of the examination so that the examination can be uniquely identified outside of FHIR. Should include ISH or similar to distinguish from other biomarker examinations.)

* focus MS
* focus only Reference(MII_PR_Onko_Diagnose_Primaertumor)

// Code - Sliced pattern (like IHC): spezifisch + generisch
* code 1..1 MS
* code ^short = "Code für In Situ Hybridization Untersuchung"
* code ^definition = "Kodierung für In Situ Hybridization. Nach Möglichkeit sind spezifische Codes zu verwenden. Wenn weder in SNOMED noch LOINC spezifische Codes vorhanden sind, ist der generische Code mit Textbeschreibung zu verwenden."
* insert Translation(code ^short, de-DE, Code fuer In Situ Hybridization Untersuchung)
* insert Translation(code ^definition, de-DE, Kodierung fuer In Situ Hybridization. Nach Moeglichkeit sind spezifische Codes zu verwenden. Wenn weder in SNOMED noch LOINC spezifische Codes vorhanden sind ist der generische Code mit Textbeschreibung zu verwenden.)
* insert Translation(code ^short, en, Code for In Situ Hybridization examination)
* insert Translation(code ^definition, en, Coding for In Situ Hybridization. Specific codes should be used whenever possible. If no specific codes are available in SNOMED or LOINC use the generic code with text description.)

* code.coding MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding ^slicing.description = "Slice für spezifischen und generischen ISH Code"
* code.coding ^slicing.ordered = false

* code.coding contains generisch 1..1 MS and spezifisch 0..1 MS

* code.coding[generisch] = $SCT#51864006 "Nucleic acid hybridization, function (observable entity)"
* code.coding[generisch] ^short = "Generischer ISH Code"
* code.coding[generisch] ^definition = "Generischer Code für ISH-Untersuchungen. Wird immer angegeben, um die Interoperabilität zu gewährleisten."
* insert Translation(code.coding[generisch] ^short, de-DE, Generischer ISH Code)
* insert Translation(code.coding[generisch] ^definition, de-DE, Generischer Code fuer ISH-Untersuchungen. Wird immer angegeben um die Interoperabilitaet zu gewaehrleisten.)
* insert Translation(code.coding[generisch] ^short, en, Generic ISH Code)
* insert Translation(code.coding[generisch] ^definition, en, Generic code for ISH examinations. Always provided to ensure interoperability.)

* code.coding[spezifisch] ^short = "Spezifischer ISH Code"
* code.coding[spezifisch] ^definition = "Spezifischer SNOMED-CT oder LOINC Code für die ISH-Untersuchung. Soll verwendet werden, wenn ein passender Code existiert."
* insert Translation(code.coding[spezifisch] ^short, de-DE, Spezifischer ISH Code)
* insert Translation(code.coding[spezifisch] ^definition, de-DE, Spezifischer SNOMED-CT oder LOINC Code fuer die ISH-Untersuchung. Soll verwendet werden wenn ein passender Code existiert.)
* insert Translation(code.coding[spezifisch] ^short, en, Specific ISH Code)
* insert Translation(code.coding[spezifisch] ^definition, en, Specific SNOMED-CT or LOINC code for the ISH examination. Should be used when an appropriate code exists.)
* code.coding[spezifisch].system 1..1 MS
* code.coding[spezifisch].code 1..1 MS

// Method - FISH, CISH, SISH
* method 1..1 MS
* method from MII_VS_MTB_ISH_Method (extensible)
* method ^short = "FISH | CISH | SISH"
* method ^definition = "In Situ Hybridization Methode: Fluoreszenz (FISH), Chromogen (CISH), oder Silber (SISH)"
* insert Translation(method ^short, de-DE, FISH | CISH | SISH)
* insert Translation(method ^definition, de-DE, In Situ Hybridization Methode: Fluoreszenz - FISH - Chromogen - CISH - oder Silber - SISH)
* insert Translation(method ^short, en, FISH | CISH | SISH)
* insert Translation(method ^definition, en, In Situ Hybridization Method: Fluorescence - FISH - Chromogen - CISH - or Silver - SISH)

// Value options - supports Ratio, Quantity, or CodeableConcept
* value[x] MS
* valueQuantity MS
* valueQuantity ^short = "Quantitatives Ergebnis (z.B. Signalanzahl)"
* insert Translation(valueQuantity ^short, de-DE, Quantitatives Ergebnis - z.B. Signalanzahl)
* insert Translation(valueQuantity ^short, en, Quantitative result - e.g. signal count)
* valueRatio MS
* valueRatio ^short = "Ratio-Ergebnis (z.B. HER2/CEP17)"
* insert Translation(valueRatio ^short, de-DE, Ratio-Ergebnis - z.B. HER2/CEP17)
* insert Translation(valueRatio ^short, en, Ratio result - e.g. HER2/CEP17)
* valueCodeableConcept MS
* valueCodeableConcept ^short = "Kategorisches Ergebnis (z.B. positiv/negativ)"
* insert Translation(valueCodeableConcept ^short, de-DE, Kategorisches Ergebnis - z.B. positiv/negativ)
* insert Translation(valueCodeableConcept ^short, en, Categorical result - e.g. positive/negative)

* interpretation MS
* interpretation ^short = "Interpretation"
* interpretation ^definition = "Interpretation der ISH Signale. Die Interpretation kann auf Vergleich mit Referenzwerten basieren."
* insert Translation(interpretation ^short, de-DE, Interpretation)
* insert Translation(interpretation ^definition, de-DE, Interpretation der ISH Signale. Die Interpretation kann auf Vergleich mit Referenzwerten basieren.)
* insert Translation(interpretation ^short, en, Interpretation)
* insert Translation(interpretation ^definition, en, Interpretation of ISH signals. The interpretation can be based on comparison with reference values.)

// Component slicing - inherits from parent MolekularerBiomarker (discriminator: value on code)
// Child profiles (e.g., HER2) define specific component slices with LOINC codes
* component[gene-studied] ^short = "Untersuchtes Gen"
* component[gene-studied] ^definition = "Das mit der Target-Sonde untersuchte Gen (z.B. ERBB2)"
* insert Translation(component[gene-studied] ^short, de-DE, Untersuchtes Gen)
* insert Translation(component[gene-studied] ^definition, de-DE, Das mit der Target-Sonde untersuchte Gen - z.B. ERBB2)
* insert Translation(component[gene-studied] ^short, en, Gene studied)
* insert Translation(component[gene-studied] ^definition, en, The gene studied with the target probe - e.g. ERBB2)
* component[biomarker-category] MS
