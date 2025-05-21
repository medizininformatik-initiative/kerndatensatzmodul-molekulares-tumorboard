
CodeSystem: MII_CS_MTB_Response_Befund_Beurteilungsmethode
Id: mii-cs-mtb-response-befund-beurteilungsmethode
Title: "MII CS Response Befund Beurteilungsmethode"
Description: "Codesystem für die Beurteilung des Response Beurteilungsmethode"
* insert CS_Header($mii-cs-mtb-response-befund-beurteilung)

* #RANO                                "Nach RANO-Kriterien"
* #RECIST                              "Nach RECIST-Kriterien"

ValueSet: MII_VS_MTB_Response_Befund_Beurteilungsmethode
Id: mii-vs-mtb-response-befund-beurteilungsmethode
Title: "MII VS Response Befund Beurteilungsmethode"
Description: "ValueSet Response Befund Beurteilungsmethode"
* insert VS_Header($mii-vs-mtb-response-befund-beurteilungsmethode)
* include codes from system MII_CS_MTB_Response_Befund_Beurteilungsmethode