
CodeSystem: MII_CS_MTB_Response_Befund_Beurteilung
Id: mii-cs-mtb-response-befund-beurteilung
Title: "MII CS Response Befund Beurteilung"
Description: "Codesystem für die Beurteilung des Response Befund"
* insert CS_Header($mii-cs-mtb-response-befund-beurteilung)

* #CR                                "Complete Response"
* #PR                                "Partial Response"
* #MR                                "Mixed Response"
* #SD                                "Stable Disease"
* #PD                                "Progressive Disease"
* #NA                                "Not assessable"
* #NYA                               "Not yet assessable"

ValueSet: MII_VS_MTB_Response_Befund_Beurteilung
Id: mii-vs-mtb-response-befund-beurteilung
Title: "MII VS Response Befund Beurteilung"
Description: "ValueSet Response Befund Beurteilung"
* insert VS_Header($mii-vs-mtb-response-befund-beurteilung)
* include codes from system MII_CS_MTB_Response_Befund_Beurteilung