// Aliases für dieses Komplexbeispiel
Alias: $mii-cs-consent-category = https://www.medizininformatik-initiative.de/fhir/modul-consent/CodeSystem/mii-cs-consent-consent_category
Alias: $ngs-category = http://terminology.hl7.org/CodeSystem/v2-0074

// RuleSets für dieses Komplexbeispiel
RuleSet: BeschlussPrioritaet(prio)
* extension[Prioritaet].valuePositiveInt = {prio}

RuleSet: BeschlussSubPrioritaet(prio)
* extension[Prioritaet].valueDecimal = {prio}

RuleSet: BeschlussEvidenzgrad(grad)
* extension[Evidenzgraduierung].valueCodeableConcept.coding[Evidenzgrad] = #{grad}

RuleSet: BeschlussEvidenzQuelle(quelle)
* extension[Publikation][+].valueString = "{quelle}"

RuleSet: BeschlussEvidenzPublikation(quelle, id)
* extension[Publikation][+].valueIdentifier.system = "{quelle}"
* extension[Publikation][=].valueIdentifier.value = "{id}"

RuleSet: BeschlussEvidenz(grad, quelle, id)
* insert BeschlussEvidenzgrad({grad})
* insert BeschlussEvidenzPublikation({quelle}, {id})

RuleSet: BeschlussEvidenzZweiPublikationen(grad, quelle, id1, id2)
* insert BeschlussEvidenzgrad({grad})
* insert BeschlussEvidenzPublikation({quelle}, {id1})
* insert BeschlussEvidenzPublikation({quelle}, {id2})

RuleSet: BeschlussEvidenzZweiQuellen(grad, quelle1, id1, quelle2, id2)
* insert BeschlussEvidenzgrad({grad})
* insert BeschlussEvidenzPublikation({quelle1}, {id1})
* insert BeschlussEvidenzPublikation({quelle2}, {id2})

RuleSet: BeschlussEvidenzDreiQuellen(grad, quelle1, id1, quelle2, id2, quelle3, id3)
* insert BeschlussEvidenzgrad({grad})
* insert BeschlussEvidenzPublikation({quelle1}, {id1})
* insert BeschlussEvidenzPublikation({quelle2}, {id2})
* insert BeschlussEvidenzPublikation({quelle3}, {id3})