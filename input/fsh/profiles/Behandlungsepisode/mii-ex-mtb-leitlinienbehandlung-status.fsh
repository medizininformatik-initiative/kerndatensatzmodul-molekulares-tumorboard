Extension: MII_EX_MTB_Leitlinienbehandlung_Status
Id: mii-ex-mtb-leitlinienbehandlung-status
Context: ClinicalImpression
Title: "MII EX MTB Leitlinienbehandlung Status"
Description: "Status der Behandlung nach Leitlinie"
* insert EX_Header($mii-ex-mtb-leitlinienbehandlung-status)

* value[x] 1..1 MS
* value[x] only Coding
* valueCoding ^short = "Leitlinienbehandlungsstatus"
* valueCoding ^definition = "Status der Behandlung nach Leitline zum Zeitpunkt des Einschlusses ins MTB"
* valueCoding.system 1..1 MS
* valueCoding.code 1..1 MS
* valueCoding.system = $mii-cs-mtb-leitlinienbehandlung-status (exactly)
* valueCoding.code from MII_VS_MTB_Leitlinienbehandlung_Status (required)