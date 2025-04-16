Profile: MII_PR_MTB_Therapieempfehlung_Kombination
Parent: RequestGroup
Id: mii-pr-mtb-therapieempfehlung-kombination
Title: "MII PR MTB Therapieempfehlung Kombinationstherapie"
Description: "Therapieempfehlung für eine medikamentöse Kombinationstherapie"
* insert PR_Header

* identifier MS

* status ^short = "Umsetzungsstatus"
* status ^definition = "Status der Umsetzung der Therapieempfehlung"
* status ^comment = "
    draft: Nicht umgesetzt<br>
    active: In Umsetzung<br>
    completed: Abgeschlossen oder abgebrochen (Patient verstorben)"

* replaces only Reference(
    MII_PR_MTB_Therapieempfehlung_Kombination or
    MII_PR_MTB_Therapieempfehlung or
    RequestGroup or
    MedicationRequest
  )

* intent MS
//* intent = #proposal // wenn intent = option sein soll, kann das hier nicht gesetzt werden
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

* extension contains
    MII_EX_MTB_Empfehlung_Prioritaet named Prioritaet 0..1 MS and
    MII_EX_MTB_Empfehlung_Evidenzgraduierung named Evidenzgraduierung 0..1 MS and
    MII_EX_MTB_Empfehlung_Publikation named Publikation 0..* MS
