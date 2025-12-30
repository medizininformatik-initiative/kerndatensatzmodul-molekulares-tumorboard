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
* insert Translation(code ^short, de-DE, Code fuer Immunhistochemische Untersuchung)
* insert Translation(code ^definition, de-DE, Kodierung fuer Immunhistochemische Untersuchung. Nach Moeglichkeit sind spezifische Codes zu verwenden. Wenn weder in SNOMED noch LOINC spezifische Codes vorhanden sind ist ueber gene-studied anzugeben.)
* insert Translation(code ^short, en, Code for immunohistochemical examination)
* insert Translation(code ^definition, en, Coding for immunohistochemical examination. Specific codes should be used whenever possible. If no specific codes are available in SNOMED or LOINC use gene-studied.)
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding contains spezifisch 0..1 MS and generisch 0..1 MS
* code.coding[spezifisch].system 1..1 MS
* code.coding[spezifisch] from $mii-vs-mtb-immunohistochemistry-specific-codes (preferred)
* code.coding[spezifisch] ^short = "Immunhistochemische Untersuchung"
* code.coding[spezifisch] ^definition = "Spezifischer Code SNOMED-CT- oder LOINC-Code für immunhistochemische Untersuchung. Wenn kein spezifischer Code in SNOMED oder LOINC vorhanden ist, ist der generische Code zu verwenden und das nachgewiesene Gen unter component[gene-studied] anzugeben."
* insert Translation(code.coding[spezifisch] ^short, de-DE, Immunhistochemische Untersuchung)
* insert Translation(code.coding[spezifisch] ^definition, de-DE, Spezifischer SNOMED-CT- oder LOINC-Code fuer immunhistochemische Untersuchung. Wenn kein spezifischer Code in SNOMED oder LOINC vorhanden ist ist der generische Code zu verwenden und das nachgewiesene Gen unter component[gene-studied] anzugeben.)
* insert Translation(code.coding[spezifisch] ^short, en, Immunohistochemical examination)
* insert Translation(code.coding[spezifisch] ^definition, en, Specific SNOMED-CT or LOINC code for immunohistochemical examination. If no specific code is available in SNOMED or LOINC use the generic code and specify the detected gene under component[gene-studied].)

* code.coding[generisch] = $SCT#1234806008 "Observation using immunohistochemistry (observable entity)"
* code.coding[generisch] ^short = "Generische Immunhistochemischer Untersuchungscode. Nur zu benutzen, wenn kein spezifischer Code in SNOMED oder LOINC vorhanden ist."
* insert Translation(code.coding[generisch] ^short, de-DE, Generische Immunhistochemischer Untersuchungscode. Nur zu benutzen wenn kein spezifischer Code in SNOMED oder LOINC vorhanden ist.)
* insert Translation(code.coding[generisch] ^short, en, Generic immunohistochemical examination code. Only to be used if no specific code is available in SNOMED or LOINC.)

* specimen MS
* specimen ^definition = "Block-MAterial-Nr. der Probe. Da jede FHIR-Observation nur eine Referenz auf Specimen haben kann, Die gesamte Probe (z.B. Biopsie, Exzisat) wird von den Einzelschnitten referenziert."
* specimen ^short = "Block / Material-Nr. der Probe"
* insert Translation(specimen ^short, de-DE, Block / Material-Nr. der Probe)
* insert Translation(specimen ^definition, de-DE, Block-Material-Nr. der Probe. Da jede FHIR-Observation nur eine Referenz auf Specimen haben kann wird die gesamte Probe - z.B. Biopsie oder Exzisat - von den Einzelschnitten referenziert.)
* insert Translation(specimen ^short, en, Block / Material ID of the specimen)
* insert Translation(specimen ^definition, en, Block material number of the specimen. Since each FHIR Observation can only have one reference to Specimen the entire specimen - e.g. biopsy or excision - is referenced by the individual sections.)

// wie erstelle ich ein eigenes CodeableConcept
* value[x] MS
* valueCodeableConcept MS
* valueCodeableConcept ^short = "Ergebnis der für immunhistochemische Untersuchung"
* valueCodeableConcept ^definition = "Ergebnis der immunhistochemischen Untersuchung."
* insert Translation(valueCodeableConcept ^short, de-DE, Ergebnis der immunhistochemischen Untersuchung)
* insert Translation(valueCodeableConcept ^definition, de-DE, Ergebnis der immunhistochemischen Untersuchung.)
* insert Translation(valueCodeableConcept ^short, en, Result of the immunohistochemical examination)
* insert Translation(valueCodeableConcept ^definition, en, Result of the immunohistochemical examination.)
* interpretation MS
* component[gene-studied] 0..1 MS



