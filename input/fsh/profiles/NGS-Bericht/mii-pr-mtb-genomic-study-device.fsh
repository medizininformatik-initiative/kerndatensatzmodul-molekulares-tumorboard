Profile: MII_PR_MTB_Genomic_Study_Device
Parent: Device
Id: genomic-study-device
Title: "Genomic Study Device"
Description: "Profil für die Abbildung von Geräten, Labormaterialien und Pipelines, die in der Genomic Study Analysis verwendet werden."
* insert PR_Header

* manufacturer MS
* manufacturer ^short = "Hersteller des Geräts"
* manufacturer ^definition = "Hersteller des Geräts, das in der Genomic Study Analysis verwendet wird."
* insert Translation(manufacturer ^short, de-DE, Hersteller des Geraets)
* insert Translation(manufacturer ^definition, de-DE, Hersteller des Geraets das in der Genomic Study Analysis verwendet wird.)
* insert Translation(manufacturer ^short, en, Device manufacturer)
* insert Translation(manufacturer ^definition, en, Manufacturer of the device used in the Genomic Study Analysis.)

* deviceName MS
* deviceName.name MS
* deviceName ^short = "Name des Geräts"
* insert Translation(deviceName ^short, de-DE, Name des Geraets)
* insert Translation(deviceName ^short, en, Device name)
* deviceName.type = #user-friendly-name
* type MS
* type ^short = "Genomic Study Device Type"
* insert Translation(type ^short, de-DE, Geraetetyp der Genomic Study)
* insert Translation(type ^short, en, Genomic Study Device Type)

