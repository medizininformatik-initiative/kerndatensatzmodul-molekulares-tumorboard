Invariant: mii-mtb-ihc-1
Description: "Entweder muss ein spezifischer Code oder gene-studied angegeben werden (Either a specific code or gene-studied must be provided)"
Expression: "code.coding.where(system != 'http://snomed.info/sct' or code != '1234806008').exists() or component.where(code.coding.where(system = 'http://loinc.org' and code = '48018-6').exists()).exists()"
Severity: #error

Profile: MII_PR_MTB_Immunohistochemistry
Parent: MII_PR_MTB_Molekularer_Biomarker // Evtl von Observation von MolecularBiomarker erben
Id: mii-pr-mtb-immunohistochemistry
Title: "MII PR MTB Immunohistochemistry"
Description: "Immunhistorchemistry report"
* insert PR_Header
* identifier MS

* obeys mii-mtb-ihc-1

* code 1..1 MS
* code.coding MS
* code ^short = "Code für Immunhistochemische Untersuchung"
* code ^definition = "Kodierung für Immunhistochemische Untersuchung. Enthält immer den generischen IHC-Code. Nach Möglichkeit sind zusätzlich spezifische Codes zu verwenden. Wenn weder in SNOMED noch LOINC spezifische Codes vorhanden sind, ist über gene-studied das untersuchte Gen anzugeben."
* insert Translation(code ^short, de-DE, Code fuer Immunhistochemische Untersuchung)
* insert Translation(code ^definition, de-DE, Kodierung fuer Immunhistochemische Untersuchung. Enthaelt immer den generischen IHC-Code. Nach Moeglichkeit sind zusaetzlich spezifische Codes zu verwenden. Wenn weder in SNOMED noch LOINC spezifische Codes vorhanden sind ist ueber gene-studied das untersuchte Gen anzugeben.)
* insert Translation(code ^short, en, Code for immunohistochemical examination)
* insert Translation(code ^definition, en, Coding for immunohistochemical examination. Always contains the generic IHC code. Specific codes should be used additionally whenever possible. If no specific codes are available in SNOMED or LOINC the examined gene must be specified via gene-studied.)
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains generisch 1..1 MS

* code.coding[generisch] = $SCT#1234806008 "Observation using immunohistochemistry (observable entity)"
* code.coding[generisch] ^short = "Generischer Immunhistochemischer Untersuchungscode"
* code.coding[generisch] ^definition = "Generischer Code für immunhistochemische Untersuchungen. Wird immer angegeben, um die Interoperabilität zu gewährleisten. Zusätzliche spezifische Codes können über open slicing hinzugefügt werden."
* insert Translation(code.coding[generisch] ^short, de-DE, Generischer Immunhistochemischer Untersuchungscode)
* insert Translation(code.coding[generisch] ^definition, de-DE, Generischer Code fuer immunhistochemische Untersuchungen. Wird immer angegeben um die Interoperabilitaet zu gewaehrleisten. Zusaetzliche spezifische Codes koennen ueber open slicing hinzugefuegt werden.)
* insert Translation(code.coding[generisch] ^short, en, Generic immunohistochemical examination code)
* insert Translation(code.coding[generisch] ^definition, en, Generic code for immunohistochemical examinations. Always provided to ensure interoperability. Additional specific codes can be added via open slicing.)

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



