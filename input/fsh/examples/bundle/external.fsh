Instance: PatientKimMusterperson-PrimaryDiagnosis-2
InstanceOf: mii-pr-onko-diagnose-primaertumor
Usage: #example
Description: "bestätigte Primärdiagnose"
* extension[Feststellungsdatum].valueDateTime = 2021-06-10
* recordedDate = 2021-06-10
* subject = Reference(PatientKimMusterperson)
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active //zum Zeitpunkt der Diagnosestellung
* verificationStatus.coding[condition-ver-status] = http://terminology.hl7.org/CodeSystem/condition-ver-status#unconfirmed
* verificationStatus.coding[primaertumorDiagnosesicherung] = $mii-cs-onko-primaertumor-diagnosesicherung#2 //"klinische Diagnostik"  steht für "Alle Untersuchungstechniken, einschl. Röntgen, Endoskopie, bildgeb. Verfahren, Ultraschall, explorativer Eingriffe(wie Laparotomie) und Autopsie, aber ohne Gewebsuntersuchungen"
* code.coding  = $ICD10GM|2020#C48.2 "Bösartige Neubildung: Peritoneum, nicht näher bezeichnet"
// 389026000 | Ascites (disorder) |
* bodySite = $ICDO3#C56.9 "Ovar" // mögliche Lokalisation des Haupttumors?

Instance: mii-exa-onko-allgemeiner-leistungszustand-ecog
InstanceOf: mii-pr-onko-allgemeiner-leistungszustand-ecog
Usage: #example
* status = #final
* code = $SCT#423740007
* subject = Reference(Patient/PatientKimMusterperson)

* valueCodeableConcept.coding =  https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-allgemeiner-leistungszustand-ecog#2 "Gehfähig, Selbstversorgung möglich, aber nicht arbeitsfähig; kann mehr als 50 % der Wachzeit aufstehen (50 - 60 % nach Karnofsky)"