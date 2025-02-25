CodeSystem: MII_CS_MTB_TherapieempfehlungEvidenzgradZusatzverweis
Id: mii-cs-mtb-therapieempfehlung-evidenzgrad-zusatzverweis
Title: "MII CS Therapieempfehlung Evidenzgrad Zusatzverweis"
Description: "Zusatzverweis zum Evidenzgrad einer Therapieempfehlung"
* insert CS_Header($mii-cs-mtb-therapieempfehlung-evidenzgrad-zusatzverweis)
//* insert CS_Citation(doi:10.1002/ijc.32358)

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