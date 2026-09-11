// Generic tumor-tissue specimen for the module's standalone profile examples
// (they previously referenced Specimen/example, which no package ships). TODO:REVIEW
Instance: mii-exa-mtb-specimen
InstanceOf: Specimen
Usage: #example
Title: "Beispiel-Probe (Tumorgewebe)"
Description: "Generische Tumorgewebe-Probe als Referenzziel der Profil-Beispiele."
* status = #available
* type = $SCT#119376003 "Tissue specimen"
* subject = Reference(Patient/mii-exa-mtb-patient)
