Profile: MII_PR_MTB_Antrag_Kostenuebernahme
Parent: Claim
Id: mii-pr-mtb-antrag-kostenuebernahme
Title: "MII PR MTB Antrag Kostenuebernahme"
Description: "Antrag Kostenübernahme"
* insert PR_Header

* status MS
* status = #active (exactly)
* status ^short = "Antrag"
* status ^definition = "Status der FHIR-Ressource - statisch auf #active gesetzt"
* type MS
* type from MII_VS_MTB_Antrag_Kostenuebernahme_Type
* type ^short = "Kategorie des Antragstellers" 
* type ^definition = "Kategorie des Antragstellers - z.B. stationär, ambulant, Apotheke"

* use MS
* use ^short = "Art des Kostenerstattungsantrags (claim, predetermination, preauthorization)"
* use ^definition = "folgt den Definitionen wie im amerikanischen Gesundsheitswesen gebräuchlich. claim: Erstattungsantrag nach erfolgter Therapie; predetermination: unverbindliche Anfrage, insb. zu Anteilen der Kostenübernahme;  preauthorization: Anfrage nach möglicher Erstattung für zukünftige Therapie"

* patient MS
//* patient only Reference(Patient) das ist redundant

* created MS
* created ^short = "Antragsdatum"
* created ^definition = "Datum der Antragstellung"

* provider MS
* provider ^short = "Antragstellende Einrichtung / Klinik / Person"
* provider ^definition = "Einrichtung, die den Antrag stellt. In der Regel die Klinik, die den Patienten behandelt"

//* provider only Reference(Organization)

* priority MS
* priority = $process-priority#normal
* priority ^short = "Priorität des Antrags"
* priority ^definition = "Priorität des Antrags. Pflichtfeld in FHIR, aber nicht in der MII-Logik relevant"

// TODO: Überlegen ob prescription die richtige Wahl für Therapieempfehlung ist
* prescription MS
* prescription ^short = "Therapieempfehlung"
* prescription ^definition = "Verweis auf die Therapieempfehlung des MTB, die zu diesem Antrag führt"
* prescription only Reference(MedicationRequest)

* insurance MS
* insurance.sequence MS 
* insurance.sequence ^short = "Priorität der Versicherung"
* insurance.sequence ^definition = "Priorität der Versicherung. In der Regel 1 für die Hauptkrankenversicherung, und fortlaufend für weitere freiwilligge Zusatzversicherungen. Wird vsl. selten relevant sein."
* insurance.focal MS
* insurance.focal = true
* insurance.focal ^short = "Versicherung relevant für diesen Antrag" 
* insurance.coverage MS
* insurance.coverage only Reference(Coverage)
* insurance.coverage ^short = "Versicherung relevant für diesen Antrag"
* insurance.claimResponse MS

* careTeam ^slicing.discriminator.type = #type
* careTeam ^slicing.discriminator.path = "sequence"
* careTeam ^slicing.rules = #open
* careTeam ^slicing.description = "Slice für Antragsstellung ZPM"
* careTeam ^slicing.ordered = false

* careTeam contains ZPMBeteiligung 1..* MS
* careTeam[ZPMBeteiligung] ^short = "Antragstellung ZPM"
* careTeam[ZPMBeteiligung] ^definition = "Verweis auf entsprechendes Feld in NGS Bericht und/oder IHC (Verweis auf KDS Molekular-Pathologischer Befundbericht)"
* careTeam[ZPMBeteiligung] 1..1 MS

* careTeam[ZPMBeteiligung].sequence MS
* careTeam[ZPMBeteiligung].sequence = 1
* careTeam[ZPMBeteiligung].sequence ^short = "interne Variable der beteiligten Einrichtung"

* careTeam[ZPMBeteiligung].provider MS
* careTeam[ZPMBeteiligung].provider only Reference(Organization)
* careTeam[ZPMBeteiligung].provider ^short = "Verweis auf ZPM"
* careTeam[ZPMBeteiligung].provider ^definition = "Verweis auf Antragstellendes ZPM (z.B. ZPM ID)"
* careTeam[ZPMBeteiligung].responsible 1..1 MS
* careTeam[ZPMBeteiligung].responsible ^short = "Beteiliung ZPM - Ja/Nein"
* careTeam[ZPMBeteiligung].responsible ^definition = "Beteiliung des ZPM - Ja/Nein"

* related MS
/* related ^slicing.discriminator.type = #value
* related ^slicing.discriminator.path = "type"
* related ^slicing.rules = #open
* related ^slicing.description = "Stadium des Antrags auf Kostenübernahme"
*/
* related.claim 0..1 MS 

* related.claim ^short = "bei Folgeantrag/Widerspruch: Verweis auf ursprünglichen Erstantrag"
* related.claim ^definition = "Verweis auf ursprünglichen Erstantrag, der zu diesem Folgeantrag oder Widerspruch führt"
* related.claim only Reference(MII_PR_MTB_Antrag_Kostenuebernahme)
* related.relationship MS 
* related.relationship.coding 1..* MS
* related.relationship.coding ^short = "Antragsstadium"
* related.relationship.coding ^definition = "Stadium des Antrags auf Kostenuebernahme - Erstantrag, Widerspruch, Folgeantrag, Unbekannt. Bei Widerspruch oder Folgeantrag ist der Verweis auf den Erstantrag erforderlich"
* related.relationship.coding.system = $mii-cs-mtb-antrag-kostenuebernahme-antragsstadium
* related.relationship.coding.code 1..1 MS

// certainly works, not sure whether this is the best way to do this. moved business logic to related above
/*
* extension contains MII_EX_MTB_Antrag_Kostenuebernahme_Antragsstadium named Antragsstadium 1..1 MS
* extension[Antragsstadium] ^short = "Antragsstadium"
* extension[Antragsstadium] ^definition = "Stadium des Antrags auf Kostenübernahme - Erstantrag, Widerspruch, Folgeantrag, Unbekannt"
*/

/*# Understanding Healthcare Claims Terminology

In healthcare insurance systems, particularly in the United States, there are three distinct but related processes that are often confused: claims, pre-determinations, and pre-authorizations. Here's how they differ:

## Healthcare Claims

A healthcare claim is a formal request submitted by a healthcare provider (like a hospital or doctor's office) to an insurance company seeking reimbursement for medical services provided to a patient[1]. This document includes:

- Patient information
- Details of services provided
- Associated medical codes
- Total cost of treatment[8]

Claims are submitted after the medical service has been delivered and contain unique medical codes detailing the care administered, including diagnoses, procedures, medical supplies, devices, pharmaceuticals, and transportation[8].

## Pre-determination

Pre-determination is a process where healthcare providers submit details of a proposed medical or dental procedure to the insurer before treatment[9]. This process:

- Helps determine if a specific procedure will be covered under the patient's insurance policy[9]
- Confirms what percentage of the treatment is covered[7]
- Specifies the approved payment amount and the patient's financial responsibility[9]
- Does not guarantee final approval[9]
- Is optional but recommended for services that may be considered experimental or investigational[9]

Pre-determination essentially gives both the provider and patient advance knowledge about coverage and potential costs, helping to avoid unexpected expenses[10]. It's typically done using a claim form that includes patient details, procedure codes, charges, and provider information[7].

## Pre-authorization (Prior Authorization)

Pre-authorization (also called prior authorization, preauthorization, or prior approval) is a required approval process that must be completed before a patient receives certain treatments or medications[5][9]. This process:

- Is mandatory for specific services, unlike pre-determination which is optional[9]
- Determines if the patient is eligible for certain procedures, medications, or tests[9]
- Assesses whether a service or treatment is medically necessary[9]
- Is typically required for expensive medications, treatments, invasive procedures, and imaging scans[9]
- Must be obtained before services are provided, or the insurance may not cover the cost[6]

Pre-authorization confirms whether patients have the recommended treatment covered by their insurance company, while pre-determination provides more detailed information about coverage percentages and payment specifics[7].

## Key Differences

- **Timing**: Claims are submitted after services are provided; pre-determinations and pre-authorizations happen before treatment.
- **Purpose**: Claims request payment; pre-determinations check coverage details; pre-authorizations seek mandatory approval.
- **Requirement**: Claims and pre-authorizations are mandatory processes; pre-determinations are optional but recommended.
- **Consequence**: Without pre-authorization, insurance may deny coverage completely; pre-determination helps avoid surprises but isn't required[10].

Understanding these distinctions is important for patients to navigate healthcare systems effectively, especially in countries with private insurance models like the United States.

Citations:
[1] https://thessigroup.com/blog/understanding-the-healthcare-claim-life-cycle-from-patient-registration-to-payment/
[2] https://www.iciciprulife.com/health-insurance/health-insurance-claim.html
[3] https://datamatrixmedical.com/insurance-predetermination-vs-prior-authorization/
[4] https://www.rcmmastersacademy.com/blog/what-is-pre-determination-in-medical-billing
[5] https://www.priorauthtraining.org/prior-authorization/
[6] https://en.wikipedia.org/wiki/Prior_authorization
[7] https://www.caplinedentalservices.com/what-is-the-difference-between-prior-authorization-and-predetermination/
[8] https://www.definitivehc.com/blog/medical-claims-101-what-you-need-to-know
[9] https://www.outsourcestrategies.com/blog/predetermination-vs-prior-authorization/
[10] https://www.bradybilling.com/blog/preauthorization-predetermination/
[11] https://primarycareins.com/everything-you-need-to-know-about-the-importance-of-predetermination/
[12] https://www.definitivehc.com/resources/glossary/claim
[13] https://www.healthysteps.org/wp-content/uploads/2023/07/Medical-Claims-101-How-to-avoid-common-denial-and-rejection-pitfalls_2022.pdf
[14] https://www.ehealthinsurance.com/resources/individual-and-family/what-is-a-health-insurance-claim
[15] https://www.healthpartners.com/blog/medical-claim/
[16] https://azzly.com/blog/understanding-encounters-and-claims-in-healthcare/
[17] https://food.ec.europa.eu/food-safety/labelling-and-nutrition/nutrition-and-health-claims/health-claims_en
[18] https://en.wikipedia.org/wiki/Health_claim
[19] http://plus.telushealth.co/page/eclaims/help/learningcorner/Submitting_a_predetermination.htm
[20] https://www.bcbsil.com/PDF/sprint_understanding_predetermination.pdf
[21] http://clienthelp.grouphealth.ca/wp-content/uploads/2018/08/20180430_FYB_Predetermination-of-Benefits.pdf
[22] https://www.omsp.com/blog/pre-authorization-vs-predetermination/
[23] https://hr.virginia.edu/sites/default/files/IMPACT%20COE/Benefits/Predetermination_Flyer_08122021.pdf
[24] https://w.bcbsmt.com/static/mt/provider/pdf/predetermination-general-interactive-request-form-mt.pdf
[25] https://www.ama-assn.org/practice-management/prior-authorization/prior-authorization-practice-resources
[26] https://www.healthinsurance.org/glossary/prior-authorization/
[27] https://practicesuite.com/preauthorization/
[28] https://www.ama-assn.org/practice-management/prior-authorization/what-doctors-wish-patients-knew-about-prior-authorization
[29] https://www.health.harvard.edu/staying-healthy/prior-authorization-what-is-it-when-might-you-need-it-and-how-do-you-get-it
[30] https://www.cigna.com/knowledge-center/what-is-prior-authorization
[31] https://www.patientadvocate.org/download-view/what-does-an-approved-pre-authorization-mean/
[32] https://pmc.ncbi.nlm.nih.gov/articles/PMC10391030/
[33] https://w.bcbsmt.com/provider/claims-and-eligibility/predetermination-and-preauthorization
[34] https://www.dentalclaimsupport.com/blog/dental-predetermination-and-preauthorizations?hs_amp=true
[35] https://www.cms.gov/data-research/monitoring-programs/medicare-fee-service-compliance-programs/prior-authorization-and-pre-claim-review-initiatives
[36] https://publicsitestx.hcsc.net/provider/claims/um.html
[37] https://www.onsurity.com/blog/how-does-the-health-insurance-claim-process-work/
[38] https://mbamedical.com/blog/what-is-a-medical-claim/
[39] https://www.businessnewsdaily.com/16237-medical-claims-how-to.html
[40] https://www.healthinsurance.org/glossary/claim/
[41] https://www.linkedin.com/pulse/understanding-medical-claims-comprehensive-guide-shah-ch4bf
[42] https://www.bcbsil.com/provider/claims/claims-eligibility/utilization-management/predetermination
[43] https://www.verywellhealth.com/prior-authorization-1738770
[44] https://www.patientadvocate.org/wp-content/uploads/What-does-an-Approved-Pre-Authorization-Mean-1.pdf
[45] https://portiva.com/preauthorization-vs-authorization-in-healthcare/
[46] https://annexmed.com/comprehensive-guide-to-pre-authorization/
[47] https://www.adonis.io/resources/what-is-prior-authorization-in-healthcare-all-you-need-to-know
[48] https://www.priorauthtraining.org/the-importance-of-prior-authorization-in-healthcare/
[49] https://www.bostonscientific.com/content/dam/bostonscientific/Reimbursement/Neuromodulation/preauth/Pre%20Authorization%20Reference%20Guide.pdf

---
Answer from Perplexity: pplx.ai/share*/