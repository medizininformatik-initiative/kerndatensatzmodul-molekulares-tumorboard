ValueSet: MII_VS_MTB_Systemische_Therapie_Status
Id: mii-vs-mtb-systemische-therapie-status
Title: "MII VS MTB Systemtherapie Status"
Description: "Einschränkung der Status für Systemtherapie"
* insert VS_Header($mii-vs-mtb-systemische-therapie-status)

// Begrenzung des default 'Required' VS für Procedure.status
* $systemtherapie-status#not-done
* $systemtherapie-status#in-progress
* $systemtherapie-status#stopped
* $systemtherapie-status#completed