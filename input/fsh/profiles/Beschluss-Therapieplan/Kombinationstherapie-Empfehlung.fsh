Profile: MII_PR_MTB_Therapieempfehlung_Gruppe // Not sure if this is a suitable name or if I violate any conventions here
Parent: RequestGroup
Id: mii-pr-mtb-therapieempfehlung-gruppe
Title: "MII PR MTB Therapieempfehlung Kombinationstherapie"
Description: "Therapieempfehlung für eine medikamentöse Kombinationstherapie"
* insert PR_Header

* id MS
* meta MS
* meta.source MS
* meta.profile MS
* identifier MS

* basedOn MS // Limit to 0-1? Since it would only make sense to link to the CarePlan?
* basedOn only Reference(MII_PR_MTB_Therapieplan or CarePlan)
* replaces only Reference(MII_PR_MTB_Therapieempfehlung_Gruppe or MII_PR_MTB_Therapieempfehlung or RequestGroup or MedicationRequest)

* status MS
* intent MS // Wouldn't that always be 'proposal' or 'plan'? Does it make sense to constrain this?
// priority left unconstrained. It has a different meaning than our priority extension and could make sense to keep here.

* subject MS
* subject only Reference(Patient)

* authoredOn MS
* author MS
// Excluded Device as author, given a MTB is not automated and will not be in the forseeable future. Is this too strict?
* author only Reference(Practitioner or PractitionerRole)
* reasonCode MS
* reasonReference MS

* action MS
  * prefix MS // TODO Do we need prefix, description and textEquivalent?
  * title MS
  * description MS
  * textEquivalent MS
  * resource MS // Constrain to 1..1?
  * resource only Reference(MII_PR_MTB_Therapieempfehlung or MedicationRequest)
  // TODO The HL7 R4 RequestGroup resource has the following comment set for action.resource:
  //   'The target resource SHALL be a Request resource with a Request.intent set to "option"'
  //   However, for a combination therapy, it makes no sense to me to set the intent of each MedicationRequest to 'option'.

  // TODO I'd like to overwrite the action.action contentReference, but I cannot make it point to my profile (the publisher rejects that)

  // I left a significant number of subfields of 'action' unconstrained as they make sense, but are not of major interest
  // for our current use case, which is to simply have an option to describe combination therapies.

* extension contains MII_EX_MTB_Therapieempfehlung_Prioritaet named Prioritaet 0..1 MS
* extension[Prioritaet] ^short = "Priorität"
* extension[Prioritaet] ^definition = "Priorität dieser Kombinationstherapie-Empfehlung"
* extension[Prioritaet] ^comment = "Wert 1 entspricht der höchsten Priorität, alle weiteren eine jeweils niedrigere Priorität"
