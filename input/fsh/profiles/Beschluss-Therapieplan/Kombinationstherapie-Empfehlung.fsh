Profile: MII_PR_MTB_Therapieempfehlung_Gruppe
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

* basedOn MS // Limit to 0-1?
* basedOn only Reference(MII_PR_MTB_Therapieplan or CarePlan)
* replaces only Reference(MII_PR_MTB_Therapieempfehlung_Gruppe or MII_PR_MTB_Therapieempfehlung or RequestGroup or MedicationRequest)

* status MS
* intent MS // Wouldn't that always be 'proposal' or 'plan'?
// priority left out - maybe it makes sense to use the built-in priority over the Extension?

* subject MS
* subject only Reference(Patient)

* authoredOn MS
* author MS
* author only Reference(Practitioner or PractitionerRole)
* reasonCode MS
* reasonReference MS

* action MS
  * resource MS // Constrain to 1..1?
  * resource only Reference(MII_PR_MTB_Therapieempfehlung or MedicationRequest)
// I'd like to overwrite action ^contentReference, but I cannot make it point to my profile (the publisher rejects that)