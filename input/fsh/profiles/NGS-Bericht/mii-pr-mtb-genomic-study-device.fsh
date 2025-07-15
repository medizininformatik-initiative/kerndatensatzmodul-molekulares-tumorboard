Profile: MII_PR_MTB_Genomic_Study_Device
Parent: Device
Id: genomic-study-device
Title: "Genomic Study Device"
Description: "Profil für die Abbildung von Geräten, Labormaterialien und Pipelines, die in der Genomic Study Analysis verwendet werden."
* insert PR_Header

* manufacturer MS
* manufacturer ^short = "Hersteller des Geräts"
* manufacturer ^definition = "Hersteller des Geräts, das in der Genomic Study Analysis verwendet wird."

* deviceName MS
* deviceName.name MS
* deviceName ^short = "Name des Geräts"
* deviceName.type = #user-friendly-name
* type MS
* type ^short = "Genomic Study Device Type"

