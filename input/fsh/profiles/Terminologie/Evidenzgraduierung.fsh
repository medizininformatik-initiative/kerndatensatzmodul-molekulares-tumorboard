CodeSystem: MII_CS_MTB_TherapieempfehlungEvidenzgrad
Id: mii-cs-mtb-therapieempfehlung-evidenzgrad
Title: "MII CS Therapieempfehlung Evidenzgrad"
Description: "Evidenzgrad einer Therapieempfehlung"
* insert CS_Meta($mii-cs-mtb-therapieempfehlung-evidenzgrad)
* insert PR_CS_VS_Version
* insert Publisher
* #m1A         "m1A"     "In der gleichen Tumorentität wurde der prädiktive Wert des Biomarkers oder die klinische Wirksamkeit in einer Biomarker-stratifizierten Kohorte einer adäquat gepowerten prospektiven Studie oder Metaanalyse gezeigt."
* #m1B         "m1B"     "In der gleichen Tumorentität wurde der prädiktive Wert des Biomarkers oder die klinische Wirksamkeit in einer retrospektiven Kohorte oder Fall-Kontroll-Studie gezeigt."
* #m1C         "m1C"     "Ein oder mehrere Fallberichte in der gleichen Tumorentität."
* #m2A         "m2A"     "In einer anderen Tumorentität wurde der prädiktive Wert des Biomarkers oder die klinische Wirksamkeit in einer Biomarker-stratifizierten Kohorte einer adäquat gepowerten prospektiven Studie oder Metaanalyse gezeigt."
* #m2B         "m2B"     "In einer anderen Tumorentität wurde der prädiktive Wert des Biomarkers oder die Klinische Wirksamkeit in einer retrospektiven Kohorte oder Fall-Kontroll-Studie gezeigt."
* #m2C         "m2C"     "Unabhängig von der Tumorentität wurde beim Vorliegen des Biomarkers eine klinische Wirksamkeit in einem oder mehreren Fallberichten gezeigt."
* #m3          "m3"      "Präklinische Daten (in vitro-/in vivo-Modelle, funktionelle Untersuchungen) zeigen eine Assoziation des Biomarkers mit der Wirksamkeit der Medikation, welche durch eine wissenschaftliche Rationale gestützt wird."
* #m4          "m4"      "Eine wissenschaftliche, biologische Rationale legt eine Assoziation des Biomarkers mit der Wirksamkeit der Medikation nahe, welche bisher nicht durch (prä)klinische Daten gestützt wird."
* #undefined   "N/A"     "Nicht verfügbar"

ValueSet: MII_VS_MTB_Therapieempfehlung_Evidenzgrad
Id: mii-vs-mtb-therapieempfehlung-evidenzgrad
Title: "MII VS Therapieempfehlung Evidenzgrad"
Description: "ValueSet für den Evidenzgrad einer Therapieempfehlung"
* insert VS_Meta($mii-vs-mtb-therapieempfehlung-evidenzgrad)
* insert PR_CS_VS_Version
* insert Publisher
* include codes from system MII_CS_MTB_TherapieempfehlungEvidenzgrad

CodeSystem: MII_CS_MTB_TherapieempfehlungEvidenzgradZusatzverweis
Id: mii-cs-mtb-therapieempfehlung-evidenzgrad-zusatzverweis
Title: "MII CS Therapieempfehlung Evidenzgrad Zusatzverweis"
Description: "Zusatzverweis zum Evidenzgrad einer Therapieempfehlung"
* insert CS_Meta($mii-cs-mtb-therapieempfehlung-evidenzgrad-zusatzverweis)
* insert PR_CS_VS_Version
* insert Publisher
* #is  "is" "In situ-Daten aus Untersuchungen an Patientenmaterial (z.B. IHC, FISH) unterstützen den Evidenzgrad. Die unterstützende Methode kann in Klammern zusätzlich angegeben werden, z.B. Evidenzgrad 3 is (IHC)."
* #iv  "iv" "In vitro-Daten/ in vivo-Modelle (z.B. PDX-Modelle) derselben Tumorentität unterstützen den Evidenzgrad. Die unterstützende Methode kann in Klammern angegeben werden, z.B. Evidenzgrad 2 iv (PDX)."
* #Z   "Z"  "Zusatzverweis für Zulassungsstatus (Z = EMA-Zulassung liegt vor; Z (FDA) = nur FDA-Zulassung vorhanden)"
* #R   "R"  "Verweis, dass es sich hierbei um einen Resistenzmarker für eine bestimmte Therapie handelt"

ValueSet: MII_VS_MTB_Therapieempfehlung_EvidenzgradZusatzverweis
Id: mii-vs-mtb-therapieempfehlung-evidenzgrad-zusatzverweis
Title: "MII VS Therapieempfehlung Evidenzgrad Zusatzverweis"
Description: "ValueSet für den Zusatzverweis zum Evidenzgrad einer Therapieempfehlung"
* insert VS_Meta($mii-vs-mtb-therapieempfehlung-evidenzgrad-zusatzverweis)
* insert PR_CS_VS_Version
* insert Publisher
* include codes from system MII_CS_MTB_TherapieempfehlungEvidenzgradZusatzverweis