Profile: MII_PR_MTB_Therapieempfehlung_Kombination // Not sure if this is a suitable name or if I violate any conventions here
Parent: RequestGroup
Id: mii-pr-mtb-therapieempfehlung-kombination
Title: "MII PR MTB Therapieempfehlung Kombinationstherapie"
Description: "Therapieempfehlung für eine medikamentöse Kombinationstherapie"
* insert PR_Header

* id MS
* meta MS
* meta.source MS
* meta.profile MS
* identifier MS

* replaces only Reference(MII_PR_MTB_Therapieempfehlung_Kombination or MII_PR_MTB_Therapieempfehlung or RequestGroup or MedicationRequest)

* intent MS
* intent = #proposal
// priority left unconstrained. It has a different meaning than our priority extension and could make sense to keep here.

* subject MS
* subject only Reference(Patient)

// Excluded Device as author, given a MTB is not automated and will not be in the forseeable future. Is this too strict?
* author only Reference(Practitioner or PractitionerRole)
// * reasonReference MS

* action 1..* MS
  * resource 1..1 MS
  * resource only Reference(MII_PR_MTB_Therapieempfehlung or MedicationRequest)
  * action 0..0 // When we enforce a resource, sub-actions are disallowed by the constraint rqg-1 anyway.

* extension contains MII_EX_MTB_Therapieempfehlung_Prioritaet named Prioritaet 0..1 MS
* extension[Prioritaet] ^short = "Priorität"
* extension[Prioritaet] ^definition = "Priorität dieser Kombinationstherapie-Empfehlung"
* extension[Prioritaet] ^comment = "Wert 1 entspricht der höchsten Priorität, alle weiteren eine jeweils niedrigere Priorität"
