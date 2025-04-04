Extension: MII_EX_MTB_Empfehlung_Prioritaet
Id: mii-ex-mtb-empfehlung-prioritaet
Context: MedicationRequest, RequestGroup, ServiceRequest
Title: "MII EX MTB Empfehlung Priorität"
Description: "Priorität der (einzelnen) Empfehlung"
* insert EX_Header($mii-ex-mtb-empfehlung-prioritaet)

* value[x] only decimal or positiveInt
* valuePositiveInt 1..1 MS

* value[x] ^short = "Priorität"
* value[x] ^definition = "Priorität dieser Empfehlung"
* value[x] ^comment = "Wert 1 entspricht der höchsten Priorität, alle weiteren eine jeweils niedrigere Priorität"