// GENERIERT aus metadata_panels_and_sequencing.xlsx — Panel-Produktkatalog als
// DeviceDefinition-Templates (Usage #definition). Hersteller teils aus
// Produktwissen ergaenzt: TODO:REVIEW. Konkrete Geraete einer Einrichtung
// verweisen via Device.definition auf diese Templates.

Instance: mii-dd-mtb-panel-ofa
InstanceOf: MII_PR_MTB_Panel_DeviceDefinition
Usage: #definition
Title: "Oncomine Focus Assay"
Description: "Panel-Template: Oncomine Focus Assay. DNA + RNA, 52 Gene; SNVs + Fusionen."
* type = $mii-cs-mtb-genomicanalysis-devicefunction#gene-panel
* manufacturerString = "Thermo Fisher Scientific"
* deviceName.name = "Oncomine Focus Assay"
* deviceName.type = #user-friendly-name
* onlineInformation = "https://www.thermofisher.com/de/de/home/clinical/preclinical-companion-diagnostic-development/oncomine-oncology/oncomine-focus-assay.html"
* capability[+].type = $mii-cs-mtb-panel-capability#snv-detection
* capability[+].type = $mii-cs-mtb-panel-capability#fusion-detection
* extension[geneList][+].extension[geneList].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-ofa"
* extension[geneList][=].extension[scope].valueCodeableConcept = $mii-cs-mtb-panel-capability#snv-detection
* extension[geneList][+].extension[geneList].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-ofa"
* extension[geneList][=].extension[scope].valueCodeableConcept = $mii-cs-mtb-panel-capability#fusion-detection
* note.text = "DNA + RNA, 52 Gene; SNVs + Fusionen."

Instance: mii-dd-mtb-panel-ofa-plus
InstanceOf: MII_PR_MTB_Panel_DeviceDefinition
Usage: #definition
Title: "Oncomine Focus Assay Plus"
Description: "Panel-Template: Oncomine Focus Assay Plus. 517 Gene; SNVs + Fusionen."
* type = $mii-cs-mtb-genomicanalysis-devicefunction#gene-panel
* manufacturerString = "Thermo Fisher Scientific"
* deviceName.name = "Oncomine Focus Assay Plus"
* deviceName.type = #user-friendly-name
* onlineInformation = "https://documents.thermofisher.com/TFS-Assets/GSD/Product-Information/oca-plus-gene-list.pdf"
* capability[+].type = $mii-cs-mtb-panel-capability#snv-detection
* capability[+].type = $mii-cs-mtb-panel-capability#fusion-detection
* extension[geneList][+].extension[geneList].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-ofa-plus"
* extension[geneList][=].extension[scope].valueCodeableConcept = $mii-cs-mtb-panel-capability#snv-detection
* extension[geneList][+].extension[geneList].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-ofa-plus"
* extension[geneList][=].extension[scope].valueCodeableConcept = $mii-cs-mtb-panel-capability#fusion-detection
* note.text = "517 Gene; SNVs + Fusionen."

Instance: mii-dd-mtb-panel-dhs-3501z
InstanceOf: MII_PR_MTB_Panel_DeviceDefinition
Usage: #definition
Title: "Qiagen DHS-3501Z"
Description: "Panel-Template: Qiagen DHS-3501Z. 275 Gene; nur SNVs (keine Fusionsanalyse)."
* type = $mii-cs-mtb-genomicanalysis-devicefunction#gene-panel
* manufacturerString = "Qiagen"
* deviceName.name = "Qiagen DHS-3501Z"
* deviceName.type = #user-friendly-name
* onlineInformation = "https://geneglobe.qiagen.com/us/product-groups/qiaseq-targeted-dna-panels/DHS-3501Z"
// Quelle-Notiz: Excel sheet with gene list under: Save target list
* capability[+].type = $mii-cs-mtb-panel-capability#snv-detection
* extension[geneList][+].extension[geneList].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-dhs-3501z"
* extension[geneList][=].extension[scope].valueCodeableConcept = $mii-cs-mtb-panel-capability#snv-detection
* note.text = "275 Gene; nur SNVs (keine Fusionsanalyse)."

Instance: mii-dd-mtb-panel-mh600plus
InstanceOf: MII_PR_MTB_Panel_DeviceDefinition
Usage: #definition
Title: "MH IVD 600+"
Description: "Panel-Template: MH IVD 600+. Laut Katalog 617 Gene; nur SNVs. TODO:REVIEW Quelle nennt 617 Gene, verweist aber auf die CGP-Genliste (602) — pruefen."
* type = $mii-cs-mtb-genomicanalysis-devicefunction#gene-panel
* manufacturerString = "Agilent Technologies"
* deviceName.name = "MH IVD 600+"
* deviceName.type = #user-friendly-name
* capability[+].type = $mii-cs-mtb-panel-capability#snv-detection
* extension[geneList][+].extension[geneList].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-cgp"
* extension[geneList][=].extension[scope].valueCodeableConcept = $mii-cs-mtb-panel-capability#snv-detection
* note.text = "Laut Katalog 617 Gene; nur SNVs."

Instance: mii-dd-mtb-panel-cgp
InstanceOf: MII_PR_MTB_Panel_DeviceDefinition
Usage: #definition
Title: "SureSelect Cancer CGP Assay"
Description: "Panel-Template: SureSelect Cancer CGP Assay. 602 Gene; nur SNVs."
* type = $mii-cs-mtb-genomicanalysis-devicefunction#gene-panel
* manufacturerString = "Agilent Technologies"
* deviceName.name = "SureSelect Cancer CGP Assay"
* deviceName.type = #user-friendly-name
* onlineInformation = "https://pathologie-ccm.charite.de/fileadmin/user_upload/microsites/m_cc05/pathologie-ccm/00_formulare_documente/00_molekularpathologie/Anlage_Genlisten_NGS-Panel.pdf"
* capability[+].type = $mii-cs-mtb-panel-capability#snv-detection
* extension[geneList][+].extension[geneList].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-cgp"
* extension[geneList][=].extension[scope].valueCodeableConcept = $mii-cs-mtb-panel-capability#snv-detection
* note.text = "602 Gene; nur SNVs."

Instance: mii-dd-mtb-panel-master
InstanceOf: MII_PR_MTB_Panel_DeviceDefinition
Usage: #definition
Title: "DKTK/MASTER Whole-Genome/-Exome Sequencing"
Description: "Panel-Template: DKTK/MASTER Whole-Genome/-Exome Sequencing. Analyse im DKTK/MASTER-Programm; genomweit, keine endliche Panelliste (all_assessed). TODO:REVIEW Hersteller/Betreiber ergaenzen (Konsortium, kein Produkt)."
* type = $mii-cs-mtb-genomicanalysis-devicefunction#gene-panel
* deviceName.name = "DKTK/MASTER Whole-Genome/-Exome Sequencing"
* deviceName.type = #user-friendly-name
* version = "Stand 02-2026"
* onlineInformation = "https://pathologie-ccm.charite.de/fileadmin/user_upload/microsites/m_cc05/pathologie-ccm/00_formulare_documente/00_molekularpathologie/Anlage_Genlisten_NGS-Panel.pdf"
// Quelle-Notiz: Alle kodierenden Exons der jeweils untersuchten Gene sind abgedeckt. From:
* capability[+].type = $mii-cs-mtb-panel-capability#snv-detection
* capability[+].type = $mii-cs-mtb-panel-capability#fusion-detection
* capability[+].type = $mii-cs-mtb-panel-capability#deletion-detection
* capability[+].type = $mii-cs-mtb-panel-capability#amplification-detection
* capability[+].type = $mii-cs-mtb-panel-capability#overexpression-detection
* capability[+].type = $mii-cs-mtb-panel-capability#signature-detection
* note.text = "Analyse im DKTK/MASTER-Programm; genomweit, keine endliche Panelliste (all_assessed)."

Instance: mii-dd-mtb-panel-wgs
InstanceOf: MII_PR_MTB_Panel_DeviceDefinition
Usage: #definition
Title: "Whole Genome Sequencing (generisch)"
Description: "Panel-Template: Whole Genome Sequencing (generisch). Genomweite Sequenzierung; keine endliche Panelliste (all_assessed). TODO:REVIEW generisches Verfahren, kein Produkt — behalten oder streichen."
* type = $mii-cs-mtb-genomicanalysis-devicefunction#gene-panel
* deviceName.name = "Whole Genome Sequencing (generisch)"
* deviceName.type = #user-friendly-name
* capability[+].type = $mii-cs-mtb-panel-capability#snv-detection
* capability[+].type = $mii-cs-mtb-panel-capability#fusion-detection
* capability[+].type = $mii-cs-mtb-panel-capability#deletion-detection
* capability[+].type = $mii-cs-mtb-panel-capability#amplification-detection
* note.text = "Genomweite Sequenzierung; keine endliche Panelliste (all_assessed)."

Instance: mii-dd-mtb-panel-archer-lung-v2
InstanceOf: MII_PR_MTB_Panel_DeviceDefinition
Usage: #definition
Title: "FusionPlex Archer Lung V2"
Description: "Panel-Template: FusionPlex Archer Lung V2. Fusionsanalyse, 17 Gene."
* type = $mii-cs-mtb-genomicanalysis-devicefunction#gene-panel
* manufacturerString = "Integrated DNA Technologies (ArcherDX)"
* deviceName.name = "FusionPlex Archer Lung V2"
* deviceName.type = #user-friendly-name
* onlineInformation = "https://eu.idtdna.com/pages/products/next-generation-sequencing/archer-ngs-assay-solutions/solid-tumor-research/archer-fusionplex-lung-v2-panel"
// Quelle-Notiz: Genliste auch in der Charité-Molekularpathologie-Anlage: https://pathologie-ccm.charite.de/fileadmin/user_upload/microsites/m_cc05/pathologie-ccm/00_formulare_documente/00_molekularpathologie/Anlage_Genlisten_NGS-Panel.pdf
* capability[+].type = $mii-cs-mtb-panel-capability#fusion-detection
* extension[geneList][+].extension[geneList].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-archer-lung-v2"
* extension[geneList][=].extension[scope].valueCodeableConcept = $mii-cs-mtb-panel-capability#fusion-detection
* note.text = "Fusionsanalyse, 17 Gene."

Instance: mii-dd-mtb-panel-tcm-ngs
InstanceOf: MII_PR_MTB_Panel_DeviceDefinition
Usage: #definition
Title: "TCM NGS Panel"
Description: "Panel-Template: TCM NGS Panel. 409 Gene; SNVs + Fusionen. TODO:REVIEW Betreiber/Hersteller des Hauspanels ergaenzen."
* type = $mii-cs-mtb-genomicanalysis-devicefunction#gene-panel
* deviceName.name = "TCM NGS Panel"
* deviceName.type = #user-friendly-name
* onlineInformation = "https://documents.thermofisher.com/TFS-Assets/LSG/brochures/CO25560_Ion_AmpliSeq_Comprehensive_Cancer_Panel_Gene_List_final9062012.pdf"
* capability[+].type = $mii-cs-mtb-panel-capability#snv-detection
* capability[+].type = $mii-cs-mtb-panel-capability#fusion-detection
* extension[geneList][+].extension[geneList].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-tcm-ngs"
* extension[geneList][=].extension[scope].valueCodeableConcept = $mii-cs-mtb-panel-capability#snv-detection
* extension[geneList][+].extension[geneList].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-tcm-ngs"
* extension[geneList][=].extension[scope].valueCodeableConcept = $mii-cs-mtb-panel-capability#fusion-detection
* note.text = "409 Gene; SNVs + Fusionen."

Instance: mii-dd-mtb-panel-basic-ngs
InstanceOf: MII_PR_MTB_Panel_DeviceDefinition
Usage: #definition
Title: "Basic-NGS Panel"
Description: "Panel-Template: Basic-NGS Panel. 36 Gene; nur SNVs. TODO:REVIEW Betreiber/Hersteller des Hauspanels ergaenzen."
* type = $mii-cs-mtb-genomicanalysis-devicefunction#gene-panel
* deviceName.name = "Basic-NGS Panel"
* deviceName.type = #user-friendly-name
* onlineInformation = "https://pathologie-ccm.charite.de/fileadmin/user_upload/microsites/m_cc05/pathologie-ccm/00_formulare_documente/00_molekularpathologie/Anlage_Genlisten_NGS-Panel.pdf"
* capability[+].type = $mii-cs-mtb-panel-capability#snv-detection
* extension[geneList][+].extension[geneList].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-basic-ngs"
* extension[geneList][=].extension[scope].valueCodeableConcept = $mii-cs-mtb-panel-capability#snv-detection
* note.text = "36 Gene; nur SNVs."

Instance: mii-dd-mtb-panel-tso-500
InstanceOf: MII_PR_MTB_Panel_DeviceDefinition
Usage: #definition
Title: "TruSight Oncology 500"
Description: "Panel-Template: TruSight Oncology 500. 523 SNV-Gene, 55 Fusions-Gene; misst u. a. auch TMB/MSI. TODO:REVIEW Version (vermutlich v2) und vollstaendige Faehigkeiten bestaetigen."
* type = $mii-cs-mtb-genomicanalysis-devicefunction#gene-panel
* manufacturerString = "Illumina"
* deviceName.name = "TruSight Oncology 500"
* deviceName.type = #user-friendly-name
* onlineInformation = "https://www.illumina.com/products/by-type/clinical-research-products/trusight-oncology-500.html"
* capability[+].type = $mii-cs-mtb-panel-capability#snv-detection
* capability[+].type = $mii-cs-mtb-panel-capability#fusion-detection
* capability[+].type = $mii-cs-mtb-panel-capability#signature-detection
* extension[geneList][+].extension[geneList].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-tso-500-snv"
* extension[geneList][=].extension[scope].valueCodeableConcept = $mii-cs-mtb-panel-capability#snv-detection
* extension[geneList][+].extension[geneList].valueCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-panel-tso-500-fusion"
* extension[geneList][=].extension[scope].valueCodeableConcept = $mii-cs-mtb-panel-capability#fusion-detection
* note.text = "523 SNV-Gene, 55 Fusions-Gene; misst u. a. auch TMB/MSI."
