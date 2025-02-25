RuleSet: Header
* insert PR_CS_VS_Version
* insert Publisher

RuleSet: PR_Header
* insert Header
* insert Meta
* insert Status

RuleSet: CM_Header(url, module, date, source, target)
* insert CM_Meta({url})
* status = #active
* name = "MII CM {module} {source} {target}"
* title = "MII CM {module} {source} {target}"
* date = "{date}"
* description = "Mapping {source} Codes zu {target}"
* purpose = "Technisches Mapping zur Transformation von {source} zu {target}"

RuleSet: EX_Header(url)
* insert Header
* insert EX_Meta({url})

RuleSet: CS_Header(url)
* insert Header
* insert CS_Meta({url})

RuleSet: VS_Header(url)
* insert Header
* insert VS_Meta({url})

RuleSet: LM_Header(url)
* insert PR_CS_VS_Version
* insert Publisher
* insert LM_Meta({url})