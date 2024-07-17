CodeSystem: MII_CS_MTB_TherapieempfehlungStatusBegruendung
Id: mii-cs-mtb-therapieempfehlung-status-begruendung
Title: "MII CS Therapieempfehlung Status Begründung"
Description: "Begründung bei fehlender Therapieempfehlung im MTB-Beschluss"
* insert CS_Meta($mii-cs-mtb-therapieempfehlung-status-begruendung)
* insert PR_CS_VS_Version
* insert Publisher
* #no-target "Keine therapeutische Konsequenz"

ValueSet: MII_VS_MTB_TherapieempfehlungStatusBegruendung
Id: mii-vs-mtb-therapieempfehlung-status-begruendung
Title: "MII VS Therapieempfehlung Status Begründung"
Description: "ValueSet für Begründung bei fehlender Therapieempfehlung im MTB-Beschluss"
* insert VS_Meta($mii-vs-mtb-therapieempfehlung-status-begruendung)
* insert PR_CS_VS_Version
* insert Publisher
* include codes from system MII_CS_MTB_TherapieempfehlungStatusBegruendung