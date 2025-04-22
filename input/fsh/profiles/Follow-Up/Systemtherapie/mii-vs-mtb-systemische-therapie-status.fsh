ValueSet: MII_VS_MTB_Systemische_Therapie_Status
Id: mii-vs-mtb-systemische-therapie-status
Title: "MII VS MTB Systemtherapie Status"
Description: "Einschränkung der Status für Systemtherapie"

// Begrenzung des default 'Required' VS für MedicationStatement.status  
* $systemtherapie-status#not-done
* $systemtherapie-status#in-progress
* $systemtherapie-status#stopped
* $systemtherapie-status#completed