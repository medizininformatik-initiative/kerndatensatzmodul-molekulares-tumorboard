// dnpm-msi-method-to-mii.fsh
// ConceptMap: DNPM MSI determination method codes → MII CS MSI Method Type
//
// Source system : "dnpm-dip/mtb/msi/method"
//   #IHC            – Immunohistochemistry
//   #PCR            – PCR-based
//   #bioinformatics – NGS / bioinformatic analysis
//
// Target system : MII_CS_MTB_MSI_Method_Type  (mii-cs-mtb-msi-method-type.fsh)
//   #IHC            "IHC"
//   #PCR            "PCR"
//   #bioinformatic  "Sequenzierung"
//
// Note: the DNPM source uses "bioinformatics" (plural) while the MII code system
// uses "bioinformatic" (singular). The mapping below captures this near-identical
// relationship with equivalence = #equivalent.

Instance: DNPMMsiMethodToMII
InstanceOf: ConceptMap
Usage: #definition
* url = "https://dnpm-dip.net/fhir/ConceptMap/dnpm-msi-method-to-mii"
* name = "DNPMMsiMethodToMII"
* title = "DNPM MSI Method to MII"
* status = #active
* experimental = false
* date = "2026-03-25"
* description = "Maps DNPM DIP MSI determination method codes (dnpm-dip/mtb/msi/method) to the MII_CS_MTB_MSI_Method_Type codes used in MII_VS_MTB_MSI_Method_Type."
* sourceUri = "dnpm-dip/mtb/msi/method"
* targetUri = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-msi-method-type"
* group[+]
  * source = "dnpm-dip/mtb/msi/method"
  * target = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-msi-method-type"
  * element[+]
    * code = #IHC
    * display = "Immunohistochemistry"
    * target[+].code = #IHC
    * target[=].display = "IHC"
    * target[=].equivalence = #equal
  * element[+]
    * code = #PCR
    * display = "PCR"
    * target[+].code = #PCR
    * target[=].display = "PCR"
    * target[=].equivalence = #equal
  * element[+]
    * code = #bioinformatics
    * display = "Bioinformatics / NGS-based"
    * target[+].code = #bioinformatic
    * target[=].display = "Sequenzierung"
    * target[=].equivalence = #equivalent
