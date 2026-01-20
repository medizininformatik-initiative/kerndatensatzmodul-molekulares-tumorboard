CodeSystem: MII_CS_MTB_Dosisdichte
Id: mii-cs-mtb-dosisdichte
Title: "MII CS Dosisdichte"
Description: "Codesystem für die Dosisdichte einer Medikamentengabe"
* insert CS_Header($mii-cs-mtb-dosisdichte)

* #volle-Dosis                                "Volle Dosis"
* #>50%                                       "Mehr als 50%"
* #<50%                                       "Weniger als 50%"
* #unbekannt                                  "Unbekannt"

ValueSet: MII_VS_MTB_Dosisdichte
Id: mii-vs-mtb-dosisdichte
Title: "MII VS Dosisdichte"
Description: "ValueSet zur Dosisdichte"
* insert VS_Header($mii-vs-mtb-dosisdichte)
* include codes from system MII_CS_MTB_Dosisdichte