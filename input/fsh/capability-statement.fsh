Alias: $exp = http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation

RuleSet: SupportResource (resource, expectation)
* rest.resource[+].type = #{resource}
* rest.resource[=].extension[0].url = $exp
* rest.resource[=].extension[0].valueCode = {expectation}

RuleSet: Profile (profile, expectation)
* rest.resource[=].profile[+] = "{profile}"
* rest.resource[=].profile[=].extension[0].url = $exp
* rest.resource[=].profile[=].extension[0].valueCode = {expectation}

RuleSet: SupportProfile (profile, expectation)
// This rule set must follow a SupportResource rule set, and applies to that resource.
* rest.resource[=].supportedProfile[+] = "{profile}"
* rest.resource[=].supportedProfile[=].extension[0].url = $exp
* rest.resource[=].supportedProfile[=].extension[0].valueCode = {expectation}

RuleSet: SupportInteraction (interaction, expectation)
// This rule set must follow a SupportResource rule set, and applies to that resource.
* rest.resource[=].interaction[+].code = {interaction}
* rest.resource[=].interaction[=].extension[0].url = $exp
* rest.resource[=].interaction[=].extension[0].valueCode = {expectation}

RuleSet: SupportSearchParam (name, canonical, type, expectation)
// This rule set must follow a SupportResource rule set, and applies to that resource.
* rest.resource[=].searchParam[+].name = "{name}"
* rest.resource[=].searchParam[=].definition = "{canonical}"
* rest.resource[=].searchParam[=].type = {type}
* rest.resource[=].searchParam[=].extension[0].url = $exp
* rest.resource[=].searchParam[=].extension[0].valueCode = {expectation}

Instance: mii-cps-mtb-capabilitystatement
InstanceOf: CapabilityStatement
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/modul-mtb/CapabilityStatement/metadata" //ändern
* insert Version
* name = "MII_CPS_MTB_CapabilityStatement"
* title = "MII CPS MTB CapabilityStatement"
* status = #active
* experimental = false
* date = "2025-05-09"
* publisher = "Medizininformatik Initiative"
* contact.telecom.system = #url
* contact.telecom.value = "https://www.medizininformatik-initiative.de"
* description = "Das vorliegende CapabilityStatement beschreibt alle verpflichtenden Interaktionen die ein konformes System unterstützen muss, um das Modul MTB der Medizininformatik Initiative zu implementieren."
* jurisdiction = urn:iso:std:iso:3166#DE "Germany"
* kind = #requirements
* fhirVersion = #4.0.1
* format[+] = #xml
* format[+] = #json
* rest.mode = #server

// ClinicalImpression requirements
* insert SupportResource(ClinicalImpression, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/ClinicalImpression, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-behandlungsepisode, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-follow-up-clinicalimpression, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(patient, http://hl7.org/fhir/SearchParameter/clinical-patient, #reference, #SHALL)
* insert SupportSearchParam(problem, http://hl7.org/fhir/SearchParameter/ClinicalImpression-problem, #reference, #SHALL)
* insert SupportSearchParam(investigation, http://hl7.org/fhir/SearchParameter/ClinicalImpression-investigation, #reference, #SHALL)
* insert SupportSearchParam(supporting-info, http://hl7.org/fhir/SearchParameter/ClinicalImpression-supporting-info, #reference, #SHALL)
* insert SupportSearchParam(period-start, https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/SearchParameter/mii-sp-meta-mtb-clinicalimpression-effectiveperiod-start , #date, #SHALL)
* insert SupportSearchParam(period-end, https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/SearchParameter/mii-sp-meta-mtb-clinicalimpression-effectiveperiod-end, #date, #SHALL)
// effective & statusReason von MII_PR_MTB_Follow_Up_ClinicalImpression ??

// ServiceRequest requirements
* insert SupportResource(ServiceRequest, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/ServiceRequest, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-biopsie-auftrag, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-histologie-evaluation-auftrag, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-humangenetische-beratung-auftrag, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-studieneinschluss-anfrage, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(status, http://hl7.org/fhir/SearchParameter/ServiceRequest-status, #token, #SHALL)
* insert SupportSearchParam(reason-code, https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-task-reasoncode, #token, #SHALL)
* insert SupportSearchParam(reason-reference, https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-task-reasonreference, #reference, #SHALL)
* insert SupportSearchParam(specimen, http://hl7.org/fhir/SearchParameter/ServiceRequest-specimen, #reference, #SHALL)
* insert SupportSearchParam(intent, http://hl7.org/fhir/SearchParameter/ServiceRequest-intent, #token, #SHALL)
* insert SupportSearchParam(category, http://hl7.org/fhir/SearchParameter/ServiceRequest-category ,#token, #SHALL)
* insert SupportSearchParam(supporting-info, https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-servicerequest-supportinginfo ,#reference, #SHALL)
// muss man diese hier nochmal extra für ServiceRequest schreiben?
* insert SupportSearchParam(prioritaet, https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/SearchParameter/mii-sp-meta-mtb-request-group-extension-prioritaet, #number, #SHALL)
* insert SupportSearchParam(evidenzgraduierung, https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/SearchParameter/mii-sp-meta-mtb-extension-evidenzgraduierung, #token, #SHALL)
* insert SupportSearchParam(publikation, https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/SearchParameter/mii-sp-meta-mtb-request-group-extension-publikation, #token, #SHALL)
//* insert SupportSearchParam(code-concept, ,#token, #SHALL)

// ResearchStudy requirements
* insert SupportResource(ResearchStudy, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/ResearchStudy, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-studie, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(identifier, http://hl7.org/fhir/SearchParameter/ResearchStudy-identifier, #token, #SHALL)
// hier noch die extensions von mii-pr-mtb-studie?

// * insert SupportSearchParam(specimen, ,#reference, #SHALL) //???
// * insert SupportSearchParam(, ,#reference, #SHALL) // ??=?

// RequestGroup requirements
* insert SupportResource(RequestGroup, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/RequestGroup, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung-kombination, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(identifier, http://hl7.org/fhir/SearchParameter/RequestGroup-identifier, #token, #SHALL)
* insert SupportSearchParam(status, http://hl7.org/fhir/SearchParameter/RequestGroup-status, #token, #SHALL)
* insert SupportSearchParam(intent, http://hl7.org/fhir/SearchParameter/RequestGroup-intent, #token, #SHALL)
* insert SupportSearchParam(patient, http://hl7.org/fhir/SearchParameter/RequestGroup-patient, #reference, #SHALL)
* insert SupportSearchParam(author, http://hl7.org/fhir/SearchParameter/RequestGroup-author, #reference, #SHALL)
* insert SupportSearchParam(action-resource, https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/SearchParameter/mii-sp-meta-mtb-request-group-action-resource, #reference, #SHALL)
* insert SupportSearchParam(prioritaet, https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/SearchParameter/mii-sp-meta-mtb-request-group-extension-prioritaet, #number, #SHALL)
* insert SupportSearchParam(evidenzgraduierung, https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/SearchParameter/mii-sp-meta-mtb-extension-evidenzgraduierung, #token, #SHALL)
* insert SupportSearchParam(publikation, https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/SearchParameter/mii-sp-meta-mtb-request-group-extension-publikation, #token, #SHALL)

// MedicationRequest requirements
* insert SupportResource(MedicationRequest, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/MedicationRequest, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieempfehlung, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(status, http://hl7.org/fhir/SearchParameter/medications-status, #token, #SHALL)
* insert SupportSearchParam(intent, http://hl7.org/fhir/SearchParameter/MedicationRequest-intent, #token, #SHALL)
* insert SupportSearchParam(medication, http://hl7.org/fhir/SearchParameter/medications-medication, #reference, #SHALL)
// muss man diese hier nochmal extra für MedicationRequest schreiben?
* insert SupportSearchParam(prioritaet, https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/SearchParameter/mii-sp-meta-mtb-request-group-extension-prioritaet, #number, #SHALL) //new
* insert SupportSearchParam(evidenzgraduierung, https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/SearchParameter/mii-sp-meta-mtb-extension-evidenzgraduierung, #token, #SHALL) //new
* insert SupportSearchParam(publikation, https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/SearchParameter/mii-sp-meta-mtb-request-group-extension-publikation, #token, #SHALL) //new
// hier noch supportingInfo?


// Claim requirements
* insert SupportResource(Claim, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/Claim, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-antrag-kostenuebernahme, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(status, http://hl7.org/fhir/SearchParameter/Claim-status, #token, #SHALL)
* insert SupportSearchParam(use, http://hl7.org/fhir/SearchParameter/Claim-use, #token, #SHALL)
* insert SupportSearchParam(patient, http://hl7.org/fhir/SearchParameter/Claim-patient, #reference, #SHALL) 
* insert SupportSearchParam(created, http://hl7.org/fhir/SearchParameter/Claim-created, #date, #SHALL) 
* insert SupportSearchParam(provider, http://hl7.org/fhir/SearchParameter/Claim-provider, #reference, #SHALL)
* insert SupportSearchParam(priority, http://hl7.org/fhir/SearchParameter/Claim-priority, #token, #SHALL)
* insert SupportSearchParam(care-team, http://hl7.org/fhir/SearchParameter/care-team, #reference, #SHALL)
* insert SupportSearchParam(claim-type, https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/SearchParameter/mii-sp-meta-mtb-claim-type, #token, #SHALL)
* insert SupportSearchParam(claim-related, https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/SearchParameter/mii-sp-meta-mtb-claim-related-claim, #reference, #SHALL)
* insert SupportSearchParam(claim-related-relationship, https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/SearchParameter/mii-sp-meta-mtb-claim-related-relationship, #token, #SHALL)
// * insert SupportSearchParam(prescription, https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/SearchParameter/ , #reference, #SHALL) //gibts noch nicht


// ClaimResponse requirements
* insert SupportResource(ClaimResponse, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/ClaimResponse, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-antwort-kostenuebernahme, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(status, http://hl7.org/fhir/SearchParameter/ClaimResponse-status, #token, #SHALL) 
* insert SupportSearchParam(use, http://hl7.org/fhir/SearchParameter/ClaimResponse-use, #token, #SHALL) 
* insert SupportSearchParam(patient, http://hl7.org/fhir/SearchParameter/ClaimResponse-patient, #reference, #SHALL) 
* insert SupportSearchParam(created, http://hl7.org/fhir/SearchParameter/ClaimResponse-created, #date, #SHALL) 
* insert SupportSearchParam(insurer, http://hl7.org/fhir/SearchParameter/ClaimResponse-insurer, #reference, #SHALL) 
* insert SupportSearchParam(request, http://hl7.org/fhir/SearchParameter/ClaimResponse-request, #reference, #SHALL)
* insert SupportSearchParam(outcome, http://hl7.org/fhir/SearchParameter/ClaimResponse-outcome, #token, #SHALL)
* insert SupportSearchParam(claimresponse-entscheidung, https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/SearchParameter/mii-sp-meta-mtb-claim-response-entscheidung, #token, #SHALL) //new
* insert SupportSearchParam(claimresponse-ablehnungsgrund, https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/SearchParameter/mii-sp-meta-mtb-claim-response-ablehnungsgrund, #token, #SHALL) //new


// Condition requirements
* insert SupportResource(Condition, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/Condition, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-diagnose-primaertumor, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(stage, http://hl7.org/fhir/SearchParameter/Condition-stage, #token, #SHALL)
* insert SupportSearchParam(assessment, https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/SearchParameter/mii-sp-meta-mtb-condition-stage-assessment, #token, #SHALL)
* insert SupportSearchParam(leitlinie, https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/SearchParameter/mii-sp-meta-mtb-condition-leitlinie-therapielinie, #number, #SHALL)
* insert SupportSearchParam(therapielinie, https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/SearchParameter/mii-sp-meta-mtb-condition-leitlinie-zulassungsstatus, #number, #SHALL)
// * insert SupportSearchParam(morphology-behavior-icdo3, https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/SearchParameter/mii-sp-onko-condition-ext-morphology-behavior-icdo, #token, #SHALL)
// * insert SupportSearchParam(code, http://hl7.org/fhir/SearchParameter/clinical-code, #token, #SHALL) 
// * insert SupportSearchParam(body-site, http://hl7.org/fhir/SearchParameter/Condition-body-site, #token, #SHALL) 
// * insert SupportSearchParam(subject, http://hl7.org/fhir/SearchParameter/Condition-subject, #reference, #SHALL)
// * insert SupportSearchParam(encounter, http://hl7.org/fhir/SearchParameter/clinical-encounter, #reference, #SHALL)
// * insert SupportSearchParam(recorded-date, http://hl7.org/fhir/SearchParameter/Condition-recorded-date, #date, #SHALL)
// * insert SupportSearchParam(asserted-date, https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-condition-asserted-date, #date, #SHALL)
// * insert SupportSearchParam(evidence-detail, https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-condition-evidence, #reference, #SHALL)

// DiagnosticReport requirements
* insert SupportResource(DiagnosticReport, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/DiagnosticReport, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-befund, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(subject, http://hl7.org/fhir/SearchParameter/DiagnosticReport-subject, #reference, #SHALL)
* insert SupportSearchParam(performer, http://hl7.org/fhir/SearchParameter/DiagnosticReport-performer, #reference, #SHALL)
* insert SupportSearchParam(specimen, http://hl7.org/fhir/SearchParameter/DiagnosticReport-specimen, #reference, #SHALL)
* insert SupportSearchParam(issued, http://hl7.org/fhir/SearchParameter/DiagnosticReport-issued, #date, #SHALL)
* insert SupportSearchParam(result, http://hl7.org/fhir/SearchParameter/DiagnosticReport-result, #reference, #SHALL)
// * insert SupportSearchParam(code, http://hl7.org/fhir/SearchParameter/clinical-code, #token, #SHALL)
// * insert SupportSearchParam(encounter, http://hl7.org/fhir/SearchParameter/clinical-encounter, #reference, #SHALL) 
// * insert SupportSearchParam(conclusion, http://hl7.org/fhir/SearchParameter/DiagnosticReport-conclusion, #token, #SHALL)
// * insert SupportSearchParam(based-on, http://hl7.org/fhir/SearchParameter/DiagnosticReport-based-on, #reference, #SHALL)

// // Observation requirements
* insert SupportResource(Observation, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/Observation, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-oncotree, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-tumorausbreitung, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-who-grad-tumor-zns, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-response-befund, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-tumorzellgehalt, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(identifier, http://hl7.org/fhir/SearchParameter/clinical-identifier, #token, #SHALL)
* insert SupportSearchParam(status, http://hl7.org/fhir/SearchParameter/Observation-status, #token, #SHALL)
* insert SupportSearchParam(category, http://hl7.org/fhir/SearchParameter/Observation-category, #token, #SHALL)
* insert SupportSearchParam(code, http://hl7.org/fhir/SearchParameter/clinical-code, #token, #SHALL)
* insert SupportSearchParam(date, http://hl7.org/fhir/SearchParameter/clinical-date, #date, #SHALL)
* insert SupportSearchParam(encounter, http://hl7.org/fhir/SearchParameter/clinical-encounter, #reference, #SHALL)
* insert SupportSearchParam(focus, http://hl7.org/fhir/SearchParameter/Observation-focus, #reference, #SHALL)
* insert SupportSearchParam(method, http://hl7.org/fhir/SearchParameter/Observation-method, #token, #SHALL)
* insert SupportSearchParam(subject, http://hl7.org/fhir/SearchParameter/Observation-subject, #reference, #SHALL)
* insert SupportSearchParam(value-quantity, http://hl7.org/fhir/SearchParameter/Observation-value-quantity, #quantity, #SHALL)
* insert SupportSearchParam(value-concept, http://hl7.org/fhir/SearchParameter/Observation-value-concept, #token, #SHALL)
* insert SupportSearchParam(part-of, http://hl7.org/fhir/SearchParameter/Observation-part-of, #reference, #SHALL)
* insert SupportSearchParam(derived-from, http://hl7.org/fhir/SearchParameter/Observation-derived-from, #reference, #SHALL)
* insert SupportSearchParam(specimen, http://hl7.org/fhir/SearchParameter/specimen, #reference, #SHALL)
* insert SupportSearchParam(component-value-concept, http://hl7.org/fhir/SearchParameter/Observation-component-value-concept, #token, #SHALL)
* insert SupportSearchParam(component-code, http://hl7.org/fhir/SearchParameter/Observation-component-code, #token, #SHALL)
* insert SupportSearchParam(component-value-range-high, https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/SearchParameter/mii-sp-meta-mtb-observation-valuerange-high, #quantity, #SHALL) //new
* insert SupportSearchParam(component-value-range-low,  https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/SearchParameter/mii-sp-meta-mtb-observation-valuerange-low, #quantity, #SHALL) //new
* insert SupportSearchParam(interpretation, https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-observation-interpretation,  #token, #SHALL)
// * insert SupportSearchParam(component-value-ratio, , #token, #SHALL) // gibts noch nicht
// * insert SupportSearchParam(reasonReference, , #reference, #SHALL) gibt es nicht
// * insert SupportSearchParam(note, https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-observation-note, #string, #SHALL)

// Procedure requirements
* insert SupportResource(Procedure, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/Procedure, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemische-vortherapie, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(based-on, http://hl7.org/fhir/SearchParameter/Procedure-based-on, #reference, #SHALL)
* insert SupportSearchParam(outcome, https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-procedure-outcome, #token, #SHALL)
* insert SupportSearchParam(performed, http://hl7.org/fhir/SearchParameter/clinical-date, #date, #SHALL)
* insert SupportSearchParam(status, http://hl7.org/fhir/SearchParameter/Procedure-status, #token, #SHALL)
* insert SupportSearchParam(status-reason, https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/SearchParameter/mii-sp-meta-mtb-procedure-status-reason, #token, #SHALL) //new
* insert SupportSearchParam(caused-by, https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/SearchParameter/mii-sp-meta-mtb-procedure-extension-causedby, #reference, #SHALL) //new
* insert SupportSearchParam(note, https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/SearchParameter/mii-sp-meta-mtb-procedure-note, #string, #SHALL) //new
* insert SupportSearchParam(method-type, https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/SearchParameter/mii-sp-meta-mtb-genomicstudyanalysis-method-type, #token, #SHALL) //new
* insert SupportSearchParam(genome-build, https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/SearchParameter/mii-sp-meta-mtb-genomicstudyanalysis-genome-build, #token, #SHALL) //new
* insert SupportSearchParam(focus, https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/SearchParameter/mii-sp-meta-mtb-genomicstudyanalysis-focus, #reference, #SHALL) //new
* insert SupportSearchParam(specimen, https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/SearchParameter/mii-sp-meta-mtb-genomicstudyanalysis-specimen, #reference, #SHALL) //new
* insert SupportSearchParam(device, https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/SearchParameter/mii-sp-meta-mtb-genomicstudyanalysis-device-device, #token, #SHALL) //new
* insert SupportSearchParam(device-function, https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/SearchParameter/mii-sp-meta-mtb-genomicstudyanalysis-device-function, #token, #SHALL) //new
* insert SupportSearchParam(subject, http://hl7.org/fhir/SearchParameter/Procedure-subject, #reference, #SHALL)
* insert SupportSearchParam(category, http://hl7.org/fhir/SearchParameter/Procedure-category, #token, #SHALL)
* insert SupportSearchParam(encounter, http://hl7.org/fhir/SearchParameter/clinical-encounter, #reference, #SHALL)
* insert SupportSearchParam(reason-reference, http://hl7.org/fhir/SearchParameter/Procedure-reason-reference, #reference, #SHALL)
* insert SupportSearchParam(code, http://hl7.org/fhir/SearchParameter/clinical-code, #token, #SHALL)

// * insert SupportSearchParam(operation-intention, https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/SearchParameter/mii-sp-onko-procedure-ext-operation-intention, #token, #SHALL)
// * insert SupportSearchParam(part-of, http://hl7.org/fhir/SearchParameter/Procedure-part-of, #reference, #SHALL)
// * insert SupportSearchParam(complication, https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-procedure-complication, #token, #SHALL)

// Medication Statement requirements
* insert SupportResource(MedicationStatement, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/MedicationStatement, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-mtb-systemtherapie-medication-statement, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(based-on, https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-medicationstatement-based-on, #reference, #SHALL)
* insert SupportSearchParam(part-of, http://hl7.org/fhir/SearchParameter/MedicationStatement-part-of, #reference, #SHALL)
* insert SupportSearchParam(code, http://hl7.org/fhir/SearchParameter/clinical-code, #token, #SHALL)
* insert SupportSearchParam(subject, http://hl7.org/fhir/SearchParameter/MedicationStatement-subject, #reference, #SHALL)
* insert SupportSearchParam(date, http://hl7.org/fhir/SearchParameter/clinical-date, #date, #SHALL)
* insert SupportSearchParam(note, https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-medicationstatement-note, #token, #SHALL)
* insert SupportSearchParam(dosisdichte, https://www.medizininformatik-initiative.de/fhir/modul-mtb/SearchParameter/mii-sp-meta-mtb-medicationstatement-dosage, #token, #SHALL)

// CarePlan requirements
// description SP?
* insert SupportResource(CarePlan, #SHALL)
* insert Profile(http://hl7.org/fhir/StructureDefinition/CarePlan, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-tumorkonferenz, #SHALL)
* insert SupportProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieplan, #SHALL)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(_profile, http://hl7.org/fhir/SearchParameter/Resource-profile, #uri, #SHALL)
* insert SupportSearchParam(status, http://hl7.org/fhir/SearchParameter/CarePlan-status, #token, #SHALL)
* insert SupportSearchParam(created, https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-careplan-created, #date, #SHALL)
* insert SupportSearchParam(outcome-reference, https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-mtb-careplan-activity-outcomereference, #reference, #SHALL) // new
* insert SupportSearchParam(activity-reference, http://hl7.org/fhir/SearchParameter/CarePlan-activity-reference, #reference, #SHALL)
* insert SupportSearchParam(activity-status, https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-careplan-activity-status, #token, #SHALL)
* insert SupportSearchParam(activity-status-reason, https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-careplan-activity-status-reason, #token, #SHALL)
* insert SupportSearchParam(activity-code, http://hl7.org/fhir/SearchParameter/CarePlan-activity-code, #token, #SHALL)
// * insert SupportSearchParam(activity-detail, , #reference, #SHALL) // gibts noch nicht in MII Meta
* insert SupportSearchParam(supportingInfo, https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-careplan-supporting-info, #reference, #SHALL) 

// * insert SupportSearchParam(identifier, http://hl7.org/fhir/SearchParameter/clinical-identifier, #token, #SHALL)
// * insert SupportSearchParam(intent, http://hl7.org/fhir/SearchParameter/CarePlan-intent, #token, #SHALL)
// * insert SupportSearchParam(category, http://hl7.org/fhir/SearchParameter/CarePlan-category, #token, #SHALL)
// * insert SupportSearchParam(subject, http://hl7.org/fhir/SearchParameter/CarePlan-subject, #reference, #SHALL)
// * insert SupportSearchParam(encounter, http://hl7.org/fhir/SearchParameter/clinical-encounter, #reference, #SHALL)
// * insert SupportSearchParam(addresses, https://www.medizininformatik-initiative.de/fhir/modul-meta/SearchParameter/mii-sp-meta-careplan-addresses, #reference, #SHALL)
