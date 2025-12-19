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
* focus only Reference(MII_PR_Onko_Diagnose_Primaertumor or MII_PR_MTB_Diagnose_Primaertumor)

// Code - Sliced pattern (like IHC): spezifisch + generisch
* code 1..1 MS
* code ^short = "Code für In Situ Hybridization Untersuchung"
* code ^definition = "Kodierung für In Situ Hybridization. Nach Möglichkeit sind spezifische Codes zu verwenden. Wenn weder in SNOMED noch LOINC spezifische Codes vorhanden sind, ist der generische Code mit Textbeschreibung zu verwenden."

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
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

// Component slicing for signal counts
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Komponenten für ISH Signalzählungen"

* component contains
    target-signals 0..1 MS and
    reference-signals 0..1 MS and
    cells-counted 0..1 MS

* component[target-signals] ^short = "Target Probe Signale pro Zellkern"
* component[target-signals] ^definition = "Anzahl der Signale der Ziel-Sonde (z.B. ERBB2 Gen) pro Zellkern"
* component[target-signals].code = $LNC#74860-8 "ERBB2 gene copy number/nucleus in Tissue by FISH"
* component[target-signals].code ^short = "Code für Target-Signale (kann in Kindprofilen überschrieben werden)"
* component[target-signals].value[x] only Quantity
* component[target-signals].valueQuantity.unit = "#"
* component[target-signals].valueQuantity.system = $UCUM

* component[reference-signals] ^short = "Referenz Probe Signale pro Zellkern"
* component[reference-signals] ^definition = "Anzahl der Signale der Referenz-Sonde (z.B. CEP17 für Chromosom 17) pro Zellkern"
* component[reference-signals].code = $LNC#74861-6 "Chromosome 17 copy number/nucleus in Tissue by FISH"
* component[reference-signals].code ^short = "Code für Referenz-Signale (z.B. CEP17)"
* component[reference-signals].value[x] only Quantity
* component[reference-signals].valueQuantity.unit = "#"
* component[reference-signals].valueQuantity.system = $UCUM

* component[cells-counted] ^short = "Anzahl gezählter Zellen"
* component[cells-counted] ^definition = "Anzahl der für die Signalzählung ausgewerteten Zellen"
* component[cells-counted].code = $LNC#62361-1 "Cells counted [#]"
* component[cells-counted].value[x] only Quantity
* component[cells-counted].valueQuantity.unit = "#"
* component[cells-counted].valueQuantity.system = $UCUM

// Inherited components from parent profile
* component[gene-studied] 0..1 MS
* component[gene-studied] ^short = "Untersuchtes Gen"
* component[gene-studied] ^definition = "Das mit der Target-Sonde untersuchte Gen (z.B. ERBB2)"
* component[biomarker-category] MS
