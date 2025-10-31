Profile: MII_PR_MTB_Humangenetische_Beratung_Auftrag
Parent: ServiceRequest
Id: mii-pr-mtb-humangenetische-beratung-auftrag
Title: "MII PR MTB Human-genetische Beratung Auftrag"
Description: "Auftrag zur (erneuten) Human-genetischen Beratung"
* insert PR_Header

* status ^short = "draft | active | on-hold | revoked | completed | entered-in-error | unknown"
* status ^definition = "Status der Umsetzung der Empfehlung"
* status ^comment = "
    draft: Nicht umgesetzt, 
    active: In Umsetzung, 
    completed: Abgeschlossen oder abgebrochen (Patient verstorben)"

* intent = #proposal (exactly)

* code 1..1 MS
* code ^short = "Empfehlung zur Humangenetischen Beratung"
* code ^definition = "Empfehlung zur Humangenetischen Beratung"
* code = $SCT#788339009 "Genetic consultation (procedure)" (exactly)

* reasonCode 0..1 MS
* reasonCode from MII_VS_MTB_AuftragBegruendung (extensible)

* specimen 0..* MS
* specimen only Reference(
    MII_PR_Onko_Specimen or
    MII_PR_Patho_Specimen or
    MII_PR_Biobank_Specimen_Bioprobe_Core or
    Specimen
)