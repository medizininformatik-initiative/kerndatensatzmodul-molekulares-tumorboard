Instance: mii-exa-mtb-behandlungsepisode-1
InstanceOf: MII_PR_MTB_Behandlungsepisode
Title: "MII PR MTB Behandlungsepisode Beispiel"
Description: "Beispiel für aktuellen Gesundheitszustand und bisherige Behandlungsmaßnahmen"

* status = #completed

* subject = Reference(Patient/example)

* effectivePeriod.start = 2023-03-01
* effectivePeriod.end = 2023-05-31


* problem[PrimaertumorDiagnose] = Reference(Condition/PrimaertumorDiagnose-1)


* investigation[+].item = Reference(FamilyMemberHistory/KrankengeschichteFamilie-1)
* investigation[=].code = $SCT#410551005 "Family history taking (procedure)"
* investigation[+].item = Reference(Observation/ECOG-1)
* investigation[=].code = $SCT#273437007 "Eastern Cooperative Oncology Group scale for physical assessment (assessment scale)"

* investigation[+].item = Reference(DiagnosticReport/NgsBericht-1)
* investigation[=].code = $SCT#396927009 "Molecular testing, diagnostic (procedure)"

* investigation[+].item = Reference(DiagnosticReport/NgsBericht-2)
* investigation[=].code = $SCT#396927009 "Molecular testing, diagnostic (procedure)"

* investigation[+].item = Reference(DiagnosticReport/MolekularPathologieBefund-1) 
* investigation[=].code = $SCT#108257001 "Anatomic pathology procedure (procedure)" // change to patho

* investigation[Einwilligung].item = Reference(Observation/ConsentGiven-1)

* supportingInfo[Vorbefund] = Reference(DiagnosticReport/Bildbefund-1)

* supportingInfo[Vortherapie][+] = Reference(Procedure/SystemischeVortherapie-1)
* supportingInfo[Vortherapie][=].extension[LeitlinieDokumentation].extension[Therapielinie].valueUnsignedInt = 1
* supportingInfo[Vortherapie][=].extension[LeitlinieDokumentation].extension[Zulassungsstatus].valueCodeableConcept.coding = $mii-cs-mtb-zulassungsstatus#leitlinie
* supportingInfo[Vortherapie][+] = Reference(Procedure/OperativeVortherapie-1)
* supportingInfo[Vortherapie][=].extension[LeitlinieDokumentation].extension[Therapielinie].valueUnsignedInt = 2
* supportingInfo[Vortherapie][+] = Reference(Procedure/SystemischeVortherapie-2)
* supportingInfo[Vortherapie][=].extension[LeitlinieDokumentation].extension[Therapielinie].valueUnsignedInt = 3
* supportingInfo[Vortherapie][=].extension[LeitlinieDokumentation].extension[Zulassungsstatus].valueCodeableConcept.coding = $mii-cs-mtb-zulassungsstatus#in-label
* supportingInfo[Therapieplan] = Reference(CarePlan/Therapieplan-1)
* extension[LeitlinienbehandlungStatus].valueCoding = $mii-cs-mtb-leitlinienbehandlung-status#exhausted