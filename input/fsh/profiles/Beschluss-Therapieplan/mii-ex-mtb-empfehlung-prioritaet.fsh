Extension: MII_EX_MTB_Empfehlung_Prioritaet
Id: mii-ex-mtb-empfehlung-prioritaet
Context: MedicationRequest, RequestGroup, ServiceRequest
Title: "MII EX MTB Empfehlung Priorität"
Description: "Priorität der (einzelnen) Empfehlung"
* insert EX_Header($mii-ex-mtb-empfehlung-prioritaet)

* value[x] only decimal or positiveInt
* value[x] 1..1 MS
* valueDecimal 0..1 MS
* valuePositiveInt 0..1 MS

* value[x] ^short = "Priorität"
* value[x] ^definition = "Priorität dieser Empfehlung"
* value[x] ^comment = "Wert 1 entspricht der höchsten Priorität, alle weiteren eine jeweils niedrigere Priorität"
* insert Translation(value[x] ^short, de-DE, Priorität)
* insert Translation(value[x] ^definition, de-DE, Priorität dieser Empfehlung)
* insert Translation(value[x] ^short, en, Priority)
* insert Translation(value[x] ^definition, en, Priority of this recommendation)