CodeSystem: MII_CS_MTB_TherapieempfehlungEvidenzgrad
Id: mii-cs-mtb-therapieempfehlung-evidenzgrad
Title: "MII CS Therapieempfehlung Evidenzgrad"
Description: "Evidenzgrad einer Therapieempfehlung"
* insert CS_Header($mii-cs-mtb-therapieempfehlung-evidenzgrad)
* insert CS_Citation(doi:10.1002/ijc.32358)

* #m1A         "m1A"     "In der gleichen Tumorentität wurde der prädiktive Wert des Biomarkers oder die klinische Wirksamkeit in einer Biomarker-stratifizierten Kohorte einer adäquat gepowerten prospektiven Studie oder Metaanalyse gezeigt."
* #m1A ^designation.language = #en
* #m1A ^designation.value = "Predictive value of the biomarker or clinical effectiveness of the corresponding drug in a molecularly stratified cohort was demonstrated in a prospective study or a meta-analysis in the same tumor type."

* #m1B         "m1B"     "In der gleichen Tumorentität wurde der prädiktive Wert des Biomarkers oder die klinische Wirksamkeit in einer retrospektiven Kohorte oder Fall-Kontroll-Studie gezeigt."
* #m1B ^designation.language = #en
* #m1B ^designation.value = "Predictive value of the biomarker or clinical effectiveness of the drug in a molecularly stratified cohort was demonstrated in a retrospective cohort or case–control study in the same tumor type."

* #m1C         "m1C"     "Ein oder mehrere Fallberichte in der gleichen Tumorentität."
* #m1C ^designation.language = #en
* #m1C ^designation.value = "Case study or single unusual responder indicates the biomarker is associated with response to the drug in the same tumor type."

* #m2A         "m2A"     "In einer anderen Tumorentität wurde der prädiktive Wert des Biomarkers oder die klinische Wirksamkeit in einer Biomarker-stratifizierten Kohorte einer adäquat gepowerten prospektiven Studie oder Metaanalyse gezeigt."
* #m2A ^designation.language = #en
* #m2A ^designation.value = "Predictive value of the biomarker or clinical effectiveness of the corresponding drug in a molecularly stratified cohort was demonstrated in a prospective study or a meta-analysis in a different tumor type."

* #m2B         "m2B"     "In einer anderen Tumorentität wurde der prädiktive Wert des Biomarkers oder die Klinische Wirksamkeit in einer retrospektiven Kohorte oder Fall-Kontroll-Studie gezeigt."
* #m2B ^designation.language = #en
* #m2B ^designation.value = "Predictive value of the biomarker or clinical effectiveness of the drug in a molecularly stratified cohort was demonstrated in a retrospective cohort or case–control study in a different tumor type."

* #m2C         "m2C"     "Unabhängig von der Tumorentität wurde beim Vorliegen des Biomarkers eine klinische Wirksamkeit in einem oder mehreren Fallberichten gezeigt."
* #m2C ^designation.language = #en
* #m2C ^designation.value = "Case study or single unusual responder indicates the biomarker is associated with response to the drug in a different tumor type."

* #m3          "m3"      "Präklinische Daten (in vitro-/in vivo-Modelle, funktionelle Untersuchungen) zeigen eine Assoziation des Biomarkers mit der Wirksamkeit der Medikation, welche durch eine wissenschaftliche Rationale gestützt wird."
* #m3 ^designation.language = #en
* #m3 ^designation.value = "Preclinical data (in vitro, in vivo models or functional genomics studies) demonstrate that the biomarker predicts response to a specific drug treatment, supported by scientific rationale."

* #m4          "m4"      "Eine wissenschaftliche, biologische Rationale legt eine Assoziation des Biomarkers mit der Wirksamkeit der Medikation nahe, welche bisher nicht durch (prä)klinische Daten gestützt wird."
* #m4 ^designation.language = #en
* #m4 ^designation.value = "Biological rationale that associates the biomarker with altered signaling pathway activity or drug sensitivity without direct clinical or preclinical evidence for response to the drug."

* #undefined   "N/A"     "Nicht verfügbar"
* #undefined ^designation.language = #en
* #undefined ^designation.value = "Not available"

ValueSet: MII_VS_MTB_Therapieempfehlung_Evidenzgrad
Id: mii-vs-mtb-therapieempfehlung-evidenzgrad
Title: "MII VS Therapieempfehlung Evidenzgrad"
Description: "ValueSet für den Evidenzgrad einer Therapieempfehlung"
* insert VS_Header($mii-vs-mtb-therapieempfehlung-evidenzgrad)
* insert VS_Citation(doi:10.1002/ijc.32358)
* include codes from system MII_CS_MTB_TherapieempfehlungEvidenzgrad

CodeSystem: MII_CS_MTB_TherapieempfehlungEvidenzgradZusatzverweis
Id: mii-cs-mtb-therapieempfehlung-evidenzgrad-zusatzverweis
Title: "MII CS Therapieempfehlung Evidenzgrad Zusatzverweis"
Description: "Zusatzverweis zum Evidenzgrad einer Therapieempfehlung"
* insert CS_Header($mii-cs-mtb-therapieempfehlung-evidenzgrad-zusatzverweis)
* insert CS_Citation(doi:10.1002/ijc.32358)

* #is  "is" "In situ-Daten aus Untersuchungen an Patientenmaterial (z.B. IHC, FISH) unterstützen den Evidenzgrad. Die unterstützende Methode kann in Klammern zusätzlich angegeben werden, z.B. Evidenzgrad 3 is (IHC)."
* #is ^designation.language = #en
* #is ^designation.value = "Several in situ data and studies on patient material (e.g., IHC, FISH) support the biomarker and the level of evidence."

* #iv  "iv" "In vitro-Daten/ in vivo-Modelle (z.B. PDX-Modelle) derselben Tumorentität unterstützen den Evidenzgrad. Die unterstützende Methode kann in Klammern angegeben werden, z.B. Evidenzgrad 2 iv (PDX)."
* #iv ^designation.language = #en
* #iv ^designation.value = "in vitro data"

* #Z   "Z"  "Zusatzverweis für Zulassungsstatus (Z = EMA-Zulassung liegt vor; Z (FDA) = nur FDA-Zulassung vorhanden)"
* #Z ^designation.language = #en
* #Z ^designation.value = "Drug is approved for use with the specific biomarker [Z = EMA approval, Z(FDA) = FDA approval]"

* #R   "R"  "Verweis, dass es sich hierbei um einen Resistenzmarker für eine bestimmte Therapie handelt"
* #R ^designation.language = #en
* #R ^designation.value = "Biomarker predicts resistance to the drug."

ValueSet: MII_VS_MTB_Therapieempfehlung_EvidenzgradZusatzverweis
Id: mii-vs-mtb-therapieempfehlung-evidenzgrad-zusatzverweis
Title: "MII VS Therapieempfehlung Evidenzgrad Zusatzverweis"
Description: "ValueSet für den Zusatzverweis zum Evidenzgrad einer Therapieempfehlung"
* insert VS_Header($mii-vs-mtb-therapieempfehlung-evidenzgrad-zusatzverweis)
* insert VS_Citation(doi:10.1002/ijc.32358)
* include codes from system MII_CS_MTB_TherapieempfehlungEvidenzgradZusatzverweis