RuleSet: Meta
* meta.profile 0..* MS

RuleSet: CS_VS_Meta(url)
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = {url}
* ^experimental = false
* ^language = #de-DE

RuleSet: CS_Meta(url)
* insert CS_VS_Meta({url})
* ^caseSensitive = true
* ^content = #complete

RuleSet: VS_Meta(url)
* insert CS_VS_Meta({url})

RuleSet: EX_Meta(url)
* ^url = {url}

RuleSet: LM_Meta(url)
* ^url = {url}

RuleSet: CS_Citation(uri)
* ^extension[http://hl7.org/fhir/StructureDefinition/codesystem-sourceReference].valueUri = "{uri}"

RuleSet: VS_Citation(uri)
* ^extension[http://hl7.org/fhir/StructureDefinition/valueset-sourceReference].valueUri = "{uri}"