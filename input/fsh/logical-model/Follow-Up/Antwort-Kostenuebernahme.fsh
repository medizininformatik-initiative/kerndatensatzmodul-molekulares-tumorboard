RuleSet: AntwortKostenuebernahme
* AntwortKostenuebernahme    0..* BackboneElement "Antwort Kostenuebernahme Follow-Up"
  * Datum                    0..1 dateTime "Datum" 
  * Antrag                   1..1 string "Antrag" 
  * Status                   1..1 code "Status" 
  * Grund                    0..1 code "Grund" 

RuleSet: AntwortKostenuebernahmeMapping
* AntwortKostenuebernahme -> "ClaimResponse"
  * Datum -> "ClaimResponse.created"
  * Antrag -> "ClaimResponse.request"
  * Status -> "ClaimResponse.extension[Status].code"
  * Grund -> "ClaimResponse.extension[Grund].code"