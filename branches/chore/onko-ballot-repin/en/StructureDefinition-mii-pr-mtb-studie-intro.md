<!-- Migrated from the Simplifier IG (source(s): MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Studieneinschlussempfehlung/Studieneinschluss-Studie-ResearchStudy.page.md). TODO:REVIEW machine-translated from the German source. -->
---

### Content

This profile describes, as part of the study inclusion recommendation, the study into which inclusion is recommended.

The present profile mainly defines three identifier systems that are frequently used in the context of studies at the Molekulares Tumorboard (molecular tumor board):

* [NCT - NIH Clinical Trial Database](https://clinicaltrials.gov)
* [EudraCT - European Union Drug Regulating Authorities Clinical Trials Database](https://eudract.ema.europa.eu)
* [DRKS - German Clinical Trials Register](https://www.bfarm.de/DE/Das-BfArM/Aufgaben/Deutsches-Register-Klinischer-Studien/_node.html)

The use of the study profile is *optional* - this module formally ends with the study inclusion recommendation.

In future expansion stages, the local study population of a study can, for example, be aggregated via `Group`, and the actual study participation can be used as an evaluation parameter. Furthermore, it can be defined in the future to what extent a study participation can be captured separately in the follow-up.

### Content

Mapping dataset to FHIR

<span style="color:red;font-weight:bold">TODO: correct FHIR LM mappings</span>

**Search parameters**

The following search parameters are relevant for this module, including in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/ResearchStudy?_id=12345```

    Usage notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/ResearchStudy?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-studie```

    Usage notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

3. The search parameter "identifier" MUST be supported:

    Examples

    ```GET [base]/ResearchStudy?identifier=DRKS00031294```

    Usage notes: Further information on searching by "identifier" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

4. The search parameter "title" MUST be supported:

    Examples

    ```GET [base]/ResearchStudy?title=Frontale transkranielle Gleichstromstimulation (tDCS) als potentielle Behandlungsmethode von Long-COVID bedingter Fatigue```

    Usage notes: Further information on searching by "title" can be found in the [FHIR base specification - section "String Search"](http://hl7.org/fhir/R4/search.html#string).

5. The search parameter "status" MUST be supported:

    Examples

    ```GET [base]/ResearchStudy?status=active```

    Usage notes: Further information on searching by "status" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

6. The search parameter "partOf" MUST be supported:

    Examples

    ```GET [base]/ResearchStudy?partOf=ResearchStudy/researchstudy-test```

    Usage notes: Further information on searching by "partOf" can be found in the [FHIR base specification - section "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).

7. The search parameter "category" MUST be supported:

    Examples

    ```GET [base]/ResearchStudy?category=interventional```

    Usage notes: Further information on searching by "category" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

8. The search parameter "armName" MUST be supported:

    Examples

    ```GET [base]/ResearchStudy?armName=frontale anodale tDCS (verum condition)```

    Usage notes: Further information on searching by "arm.name" can be found in the [FHIR base specification - section "String Search"](http://hl7.org/fhir/R4/search.html#string).

9. The search parameter "category" MUST be supported:

    Examples

    ```GET [base]/ResearchStudy?category=Long-COVID bedingter Fatigue```

    Usage notes: Further information on searching by "extension:Studienfokus" can be found in the [FHIR base specification - section "String Search"](http://hl7.org/fhir/R4/search.html#string).

10. The search parameter "keyword" MUST be supported:

    Examples

    ```GET [base]/ResearchStudy?keyword=COVID```

    Usage notes: Further information on searching by "extension:Schlagwort" can be found in the [FHIR base specification - section "String Search"](http://hl7.org/fhir/R4/search.html#string).

11. The search parameter "label" MUST be supported:

    Examples

    ```GET [base]/ResearchStudy?label=Frontale transkranielle Gleichstromstimulation (tDCS) als potentielle Behandlungsmethode von Long-COVID bedingter Fatigue```

    Usage notes: Further information on searching by "extension:Label" can be found in the [FHIR base specification - section "String Search"](http://hl7.org/fhir/R4/search.html#string).

12. The search parameter "studienregister" MUST be supported:

    Examples

    ```GET [base]/ResearchStudy?studienregister=Library/example```

    Usage notes: Further information on searching by "extension:Studienregister" can be found in the [FHIR base specification - section "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).

13. The search parameter "rekrutierungsstand-datum" MUST be supported:

    Examples

    ```GET [base]/ResearchStudy?rekrutierungsstand-datum=2023-02-17```

    Usage notes: Further information on searching by "extension:Rekrutierung.extension:rekrutierungsstand-datum" can be found in the [FHIR base specification - section "Date Search"](http://hl7.org/fhir/R4/search.html#date).

14. The search parameter "rekrutierungsstand-genauigkeit" MUST be supported:

    Examples

    ```GET [base]/ResearchStudy?rekrutierungsstand-genauigkeit=good```

    Usage notes: Further information on searching by "extension:Rekrutierung.extension:rekrutierungsstand-genauigkeit" can be found in the [FHIR base specification - section "String Search"].(http://hl7.org/fhir/R4/search.html#string).

15. The search parameter "rekrutierungsstand-rekrutierungsstand" MUST be supported:

    Examples

    ```GET [base]/ResearchStudy?rekrutierungsstand=35```

    Usage notes: Further information on searching by "extension:Rekrutierung.extension:rekrutierungsstand" can be found in the [FHIR base specification - section "Number Search"](http://hl7.org/fhir/R4/search.html#number).

16. The search parameter "rekrutierungsstand-rekrutierungsziel" MUST be supported:

    Examples

    ```GET [base]/ResearchStudy?rekrutierungsziel=40```

    Usage notes: Further information on searching by "extension:Rekrutierung.extension:rekrutierungsziel" can be found in the [FHIR base specification - section "Number Search"](http://hl7.org/fhir/R4/search.html#number).

17. The search parameter "rekrutierungsstand-rekrutierungsstart" MUST be supported:

    Examples

    ```GET [base]/ResearchStudy?rekrutierungsstart=2023-01-12```

    Usage notes: Further information on searching by "extension:Rekrutierung.extension:rekrutierungsstart" can be found in the [FHIR base specification - section "Date Search"](http://hl7.org/fhir/R4/search.html#date).

**Examples**

Example: Recommended study for Kim Musterperson dated 2023-03-28 (see [Scenarios](guidance.html))

---
