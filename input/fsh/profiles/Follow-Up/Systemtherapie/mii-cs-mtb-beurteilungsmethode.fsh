
CodeSystem: MII_CS_MTB_Response_Befund_Beurteilungsmethode
Id: mii-cs-mtb-response-befund-beurteilungsmethode
Title: "MII CS Response Befund Beurteilungsmethode"
Description: "Codesystem für die Beurteilungsmethode eines Response Befunds"
* insert CS_Header($mii-cs-mtb-response-befund-beurteilungsmethode)

* #RECIST                            "RECIST"
* #RANO                              "RANO"

ValueSet: MII_VS_MTB_Beurteilungsmethode
Id: mii-vs-mtb-beurteilungsmethode-response-befund
Title: "MII VS Response Befund Beurteilung"
Description: "ValueSet Beurteilungsmethode eines Response Befunds"
* insert VS_Header($mii-vs-mtb-response-befund-beurteilungsmethode)
* include codes from system MII_CS_MTB_Response_Befund_Beurteilungsmethode