Instance: mii-exa-mtb-behandlungsepisode-1
InstanceOf: MII_PR_MTB_Behandlungsepisode
Usage: #example
Title: "MII PR MTB Behandlungsepisode Beispiel"
Description: "Beispiel für aktuellen Gesundheitszustand und bisherige Behandlungsmaßnahmen"

* insert Example_Header(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-behandlungsepisode)
* status = #completed

* subject = Reference(Patient/PatientKimMusterperson)

* effectivePeriod.start = 2023-03-01
* effectivePeriod.end = 2023-05-31


* problem[PrimaertumorDiagnose] = Reference(Condition/mii-exa-mtb-kim-diagnose)


* investigation[+].item = Reference(Observation/mii-exa-onko-allgemeiner-leistungszustand-ecog)
* investigation[=].code = $SCT#273437007 "Eastern Cooperative Oncology Group scale for physical assessment (assessment scale)"

* investigation[+].item = Reference(DiagnosticReport/mii-exa-mtb-kim-musterperson-ngs-bericht)
* investigation[=].code = $SCT#396927009 "Molecular testing, diagnostic (procedure)"

* investigation[+].item = Reference(DiagnosticReport/PatientKimMusterperson-MolecularPathologyReport-1) 
* investigation[=].code = $SCT#108257001 "Anatomic pathology procedure (procedure)" // change to patho

* investigation[Einwilligung].item = Reference(Observation/mii-exa-mtb-kim-musterperson-aufklaerung)

* supportingInfo[Vorbefund] = Reference(DiagnosticReport/PatientKimMusterperson-MolecularPathologyReport-1)

* supportingInfo[Vortherapie][+] = Reference(Procedure/PatientKimMusterperson-SystemicTherapy-1)
* supportingInfo[Vortherapie][=].extension[LeitlinieDokumentation].extension[Therapielinie].valueUnsignedInt = 1
* supportingInfo[Vortherapie][=].extension[LeitlinieDokumentation].extension[Zulassungsstatus].valueCodeableConcept.coding = $mii-cs-mtb-zulassungsstatus#leitlinie
* supportingInfo[Vortherapie][+] = Reference(Procedure/PatientKimMusterperson-Procedure-4)
* supportingInfo[Vortherapie][=].extension[LeitlinieDokumentation].extension[Therapielinie].valueUnsignedInt = 2
* supportingInfo[Vortherapie][+] = Reference(Procedure/PatientKimMusterperson-SystemicTherapy-2)
* supportingInfo[Vortherapie][=].extension[LeitlinieDokumentation].extension[Therapielinie].valueUnsignedInt = 3
* supportingInfo[Vortherapie][=].extension[LeitlinieDokumentation].extension[Zulassungsstatus].valueCodeableConcept.coding = $mii-cs-mtb-zulassungsstatus#in-label
* supportingInfo[Therapieplan] = Reference(CarePlan/mii-exa-mtb-kim-musterperson-therapieplan)
* extension[LeitlinienbehandlungStatus].valueCoding = $mii-cs-mtb-leitlinienbehandlung-status#exhausted