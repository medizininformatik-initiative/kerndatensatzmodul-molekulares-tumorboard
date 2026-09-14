// Panel-Produktkatalog als DeviceDefinition-TEMPLATES (Nutzerentscheidung
// 2026-09-14): DeviceDefinition = das Produkt (Katalogebene), konkrete
// Geraete-/Kit-Instanzen einer Einrichtung verweisen via Device.definition
// darauf und haengen wie bisher ueber die GR-Extension
// genomic-study-analysis-device an der Genomic Study Analysis. TODO:REVIEW

CodeSystem: MII_CS_MTB_Panel_Capability
Id: mii-cs-mtb-panel-capability
Title: "MII CS MTB Panel Capability"
Description: "Analytische Faehigkeiten eines Sequenzier-Panels (aus dem Panel-Metadatenkatalog abgeleitet). TODO:REVIEW"
* insert CS_Header($mii-cs-mtb-panel-capability)
* #snv-detection "SNV-Detektion" "Detektion einfacher Varianten (SNVs/kleine Indels)"
* #fusion-detection "Fusions-Detektion" "Detektion von Genfusionen"
* #deletion-detection "Deletions-Detektion" "Detektion von Deletionen"
* #amplification-detection "Amplifikations-Detektion" "Detektion von Amplifikationen"
* #overexpression-detection "Ueberexpressions-Detektion" "Detektion von Ueberexpression"
* #signature-detection "Signatur-Detektion" "Detektion genomischer Signaturen (z. B. TMB, HRD)"

ValueSet: MII_VS_MTB_Panel_Capability
Id: mii-vs-mtb-panel-capability
Title: "MII VS MTB Panel Capability"
Description: "Analytische Faehigkeiten eines Sequenzier-Panels."
* insert VS_Header($mii-vs-mtb-panel-capability)
* include codes from system MII_CS_MTB_Panel_Capability

Extension: MII_EX_MTB_Panel_Gene_List
Id: mii-ex-mtb-panel-gene-list
Context: DeviceDefinition
Title: "MII EX MTB Panel Gene List"
Description: "Genliste eines Sequenzier-Panels als Kanonische Referenz auf ein ValueSet mit HGNC-Genen, optional nach analytischem Scope (SNV/Fusion) unterschieden."
* insert EX_Header($mii-ex-mtb-panel-gene-list)
* extension contains geneList 1..1 MS and scope 0..1 MS
* extension[geneList].value[x] only canonical
* extension[geneList].valueCanonical 1..1
* extension[scope].value[x] only CodeableConcept
* extension[scope].valueCodeableConcept from MII_VS_MTB_Panel_Capability (required)
* value[x] 0..0

Profile: MII_PR_MTB_Panel_DeviceDefinition
Parent: DeviceDefinition
Id: mii-pr-mtb-panel-devicedefinition
Title: "MII PR MTB Panel DeviceDefinition"
Description: "Katalog-Template eines Sequenzier-Panel-Produkts (Genpanel): Hersteller, Produktname/Version, analytische Faehigkeiten und Genliste(n). Konkrete Geraete/Kits einer Einrichtung verweisen via Device.definition auf ihr Template."
* insert PR_Header
* type 1..1 MS
* type = $mii-cs-mtb-genomicanalysis-devicefunction#gene-panel
* manufacturer[x] MS
* deviceName 1..* MS
* deviceName.name 1..1 MS
* deviceName.type MS
* version MS
* onlineInformation MS
* onlineInformation ^short = "Herstellerseite / Produktdokumentation"
* capability MS
* capability.type 1..1 MS
* capability.type from MII_VS_MTB_Panel_Capability (required)
* note MS
* extension contains MII_EX_MTB_Panel_Gene_List named geneList 0..* MS
