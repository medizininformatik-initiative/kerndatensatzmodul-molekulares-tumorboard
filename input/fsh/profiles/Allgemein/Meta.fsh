RuleSet: Meta
* meta.profile 0..* MS

RuleSet: CS_VS_Meta(url)
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = {url}
* ^experimental = false

RuleSet: CS_Meta(url)
* insert CS_VS_Meta({url})
* ^caseSensitive = true
* ^content = #complete

RuleSet: VS_Meta(url)
* insert CS_VS_Meta({url})

RuleSet: EX_Meta(url)
* ^url = {url}