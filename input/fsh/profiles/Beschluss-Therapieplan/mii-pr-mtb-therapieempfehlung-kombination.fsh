Profile: MII_PR_MTB_Therapieempfehlung_Kombination
Parent: MII_PR_Onko_Therapieempfehlung_Kombinationstherapie
Id: mii-pr-mtb-therapieempfehlung-kombination
Title: "MII PR MTB Therapieempfehlung Kombinationstherapie"
Description: "Therapieempfehlung für eine medikamentöse Kombinationstherapie"
* insert PR_Header

* identifier MS

* status ^short = "draft | active | on-hold | revoked | completed | entered-in-error | unknown"
* status ^definition = "Status der Umsetzung der Therapieempfehlung"
* status ^comment = "
    draft: Nicht umgesetzt,
    active: In Umsetzung,
    completed: Abgeschlossen oder abgebrochen (Patient verstorben)"
* insert Translation(status ^short, de-DE, draft | active | on-hold | revoked | completed | entered-in-error | unknown)
* insert Translation(status ^definition, de-DE, Status der Umsetzung der Therapieempfehlung)
* insert Translation(status ^short, en, draft | active | on-hold | revoked | completed | entered-in-error | unknown)
* insert Translation(status ^definition, en, Status of therapy recommendation implementation)

// TODO Strictly Constrain intent to proposal and option? (Option is needed for RequestGroup)
* intent ^short = "proposal | option"
* intent ^definition = "Da das MTB nur Empfehlungen abgibt, wird hier typischerweise 'proposal' stehen. Es sei denn,
diese Therapieempfehlung ist selbst nochmal Teil einer RequestGroup. In dem Fall muss hier 'option' stehen."
* insert Translation(intent ^short, de-DE, proposal | option)
* insert Translation(intent ^definition, de-DE, Da das MTB nur Empfehlungen abgibt wird hier typischerweise proposal stehen. Es sei denn diese Therapieempfehlung ist selbst nochmal Teil einer RequestGroup. In dem Fall muss hier option stehen.)
* insert Translation(intent ^short, en, proposal | option)
* insert Translation(intent ^definition, en, Since the MTB only provides recommendations this will typically be proposal. Unless this therapy recommendation is itself part of a RequestGroup. In that case option must be used.)

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
