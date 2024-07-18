CodeSystem: MII_CS_MTB_TherapieempfehlungStatusBegruendung
Id: mii-cs-mtb-therapieempfehlung-status-begruendung
Title: "MII CS Therapieempfehlung Status Begründung"
Description: "Begründung bei fehlender Therapieempfehlung im MTB-Beschluss"
* insert CS_Header($mii-cs-mtb-therapieempfehlung-status-begruendung)
* #no-target "Keine therapeutische Konsequenz"

ValueSet: MII_VS_MTB_TherapieempfehlungStatusBegruendung
Id: mii-vs-mtb-therapieempfehlung-status-begruendung
Title: "MII VS Therapieempfehlung Status Begründung"
Description: "ValueSet für Begründung bei fehlender Therapieempfehlung im MTB-Beschluss"
* insert VS_Header($mii-vs-mtb-therapieempfehlung-status-begruendung)
* include codes from system MII_CS_MTB_TherapieempfehlungStatusBegruendung