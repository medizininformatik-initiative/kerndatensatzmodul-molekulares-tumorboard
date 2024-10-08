Extension: MII_EX_MTB_Therapieempfehlung_Prioritaet
Id: mii-ex-mtb-therapieempfehlung-prioritaet
Context: RequestGroup, MedicationRequest
Title: "MII EX MTB Therapieempfehlung Priorität"
Description: "Priorität der (einzelnen) Therapieempfehlung"
* insert EX_Header($mii-ex-mtb-therapieempfehlung-prioritaet)

* value[x] only positiveInt
* value[x] 1..1 MS

* value[x] ^short = "Priorität"
* value[x] ^definition = "Priorität dieser Kombinationstherapie-Empfehlung"
* value[x] ^comment = "Wert 1 entspricht der höchsten Priorität, alle weiteren eine jeweils niedrigere Priorität"