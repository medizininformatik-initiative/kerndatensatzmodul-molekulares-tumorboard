Logical: MII_LM_MTB
Parent: Element
Id: mii-lm-mtb
Title: "MII LM Molekulares Tumorboard"
Description: "MII Logical Model Modul Molekulares Tumorboard"
// * insert Publisher
// * insert PR_CS_VS_Version
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/LogicalModel/mii-lm-mtb"



* insert FollowUp
// TODO: Allgemeine, geteilte Elemente und Metadaten einfügen
* insert BeschlussTherapieplan

// TODO: Mappings auf in Sub-Pakete via RuleSet definieren und einbinden
Mapping: MII_MAP_MTB
Source: MII_LM_MTB
Id: mii-map-mtb
Title: "MII MAP Molekulares Tumorboard"
Description: "MII Mappings Modul Molekulares Tumorboard"
* insert FollowUpMapping
* insert BeschlussTherapieplanMapping
