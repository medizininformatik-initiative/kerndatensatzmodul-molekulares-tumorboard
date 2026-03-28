// dnpm-lm-shared.fsh
// Shared RuleSets for DNPM DIP MTB Logical Models
// These describe common structural patterns found in the DNPM JSON API responses.

// A standard DNPM coding element: code + display + system + optional version
RuleSet: DNPMCoding
* code 1..1 string "Code value"
* display 0..1 string "Display text"
* system 1..1 string "CodeSystem URI"
* version 0..1 string "CodeSystem version"

// A DNPM reference element: id + type (lightweight pointer to another entity)
RuleSet: DNPMReference
* id 1..1 string "Referenced resource ID"
* type 1..1 string "Type of referenced resource"

// A DNPM period: start (required) + optional end
RuleSet: DNPMPeriod
* start 1..1 string "Period start date (YYYY-MM-DD)"
* end 0..1 string "Period end date (YYYY-MM-DD)"

// A DNPM external identifier: value + system (used for dbSNP, COSMIC, etc.)
RuleSet: DNPMExternalId
* value 1..1 string "Identifier value"
* system 1..1 string "Identifier system URI"

// A DNPM gene reference as coding: code (HGNC) + display + system
RuleSet: DNPMGeneCoding
* code 1..1 string "HGNC gene code"
* display 0..1 string "Gene symbol"
* system 1..1 string "Gene nomenclature system URI (e.g. https://www.genenames.org/)"
