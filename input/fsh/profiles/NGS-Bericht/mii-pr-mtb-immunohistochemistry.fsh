Profile: MII_PR_MTB_Immunohistochemistry
Parent: MII_PR_MTB_Molekularer_Biomarker // Evtl von Observation von MolecularBiomarker erben
Id: mii-pr-mtb-immunohistochemistry
Title: "MII PR MTB Immunohistochemistry"
Description: "Immunhistorchemistry report"
* insert PR_Header
* identifier MS 

* code 1..1 MS
* code.coding 0..1 MS
* code ^short = "Code für Immunhistochemische Untersuchung"
* code ^definition = "Kodierung für Immunhistochemische Untersuchung. Nach Möglichkeit sind spezifische Codes zu verwenden. Wenn weder in SNOMED noch LOINC spezifische Codes vorhanden sind, ist über gene-studied "
* code.coding ^slicing.discriminator.type = #value
* code.coding  ^slicing.discriminator.path = "code"
* code.coding  ^slicing.rules = #closed
* code.coding contains spezifisch 0..1 MS and generisch 0..1 MS
* code.coding[spezifisch].system 1..1 MS
* code.coding[spezifisch] ^short = "Immunhistochemische Untersuchung"
* code.coding[spezifisch] ^definition = "Spezifischer Code SNOMED-CT- oder LOINC-Code für immunhistochemische Untersuchung. Wenn kein spezifischer Code in SNOMED oder LOINC vorhanden ist, ist der generische Code zu verwenden und das nachgewiesene Gen unter component[gene-studied] anzugeben."
 
* code.coding[generisch] = $SCT#1234806008 "Observation using immunohistochemistry (observable entity)"
* code.coding[generisch] ^short = "Generische Immunhistochemischer Untersuchungscode. Nur zu benutzen, wenn kein spezifischer Code in SNOMED oder LOINC vorhanden ist. "

* specimen MS
* specimen ^definition = "Block-MAterial-Nr. der Probe. Da jede FHIR-Observation nur eine Referenz auf Specimen haben kann, Die gesamte Probe (z.B. Biopsie, Exzisat) wird von den Einzelschnitten referenziert. "
* specimen ^short = "Block / Material-Nr. der Probe"

// wie erstelle ich ein eigenes CodeableConcept
* value[x] MS
* valueCodeableConcept MS
* valueCodeableConcept ^short = "Ergebnis der für immunhistochemische Untersuchung"
* valueCodeableConcept ^definition = "Ergebnis der immunhistochemischen Untersuchung."
* interpretation MS
* component[gene-studied] 0..1 MS



