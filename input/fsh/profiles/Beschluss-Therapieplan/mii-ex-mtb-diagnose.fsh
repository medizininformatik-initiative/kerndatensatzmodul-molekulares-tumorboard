// TODO: In nächster Version sollte nachfolgendes ggf. in Modul Forschungsvorhaben/ Onkologie umziehen
Extension: MII_EX_MTB_Diagnose
Id: mii-ex-mtb-diagnose
Context: ResearchStudy
Title: "MII EX MTB Diagnose"
Description: "Onkologische Diagnose"
* insert EX_Header($mii-ex-mtb-diagnose)

* value[x] only Reference(MII_PR_MTB_Diagnose_Primaertumor or Condition)
* value[x] 1..1 MS
