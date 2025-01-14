Instance: mii-cm-mtb-who-grad-tumor-zns
InstanceOf: ConceptMap
Usage: #definition
* insert CM_Header($mii-cm-mtb-who-grad-tumor-zns, MTB, 2025-01-14, WHO Grad Tumor ZNS, SNOMED-CT)

* sourceUri = $mii-cs-mtb-who-grad-tumor-zns
* targetUri[+] = $SCT

* group[+].target = $SCT
* group[=].element[+].code = #1
* group[=].element[=].display = "1 - Pilocytic astrocytom"
* group[=].element[=].target.code = #396922003
* group[=].element[=].target.display = "WHO grade I (central nervous system tumour)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #2
* group[=].element[=].display = "2 - Diffuse astrocytoma"
* group[=].element[=].target.code = #396923008
* group[=].element[=].target.display = "WHO grade II (central nervous system tumor)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #3
* group[=].element[=].display = "3 - Anaplastic astrocytoma"
* group[=].element[=].target.code = #396924002
* group[=].element[=].target.display = "WHO grade III (central nervous system tumor)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #4
* group[=].element[=].display = "4 - Glioblastoma"
* group[=].element[=].target.code = #396924002
* group[=].element[=].target.display = "WHO grade IV (central nervous system tumor)"
* group[=].element[=].target.equivalence = #equivalent
