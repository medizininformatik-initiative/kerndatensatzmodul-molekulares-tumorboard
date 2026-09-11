<!-- Migriert aus dem Simplifier-IG (Quelle(n): MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Therapieplan-CarePlan.page.md). TODO:REVIEW -->
---

### Inhalt

Dieses Profil beschreibt ein Therapieplan gemäß des Beschlusses des Molekularen Tumorboards.

Inhaltlich basiert er auf dem Tumorboard-Profil des Onkologie-Moduls, in dem bereits Therapiebeschlüsse nach den Kategorien des oBDS kodiert werden konnten. Da im Rahmen des Molekularen Tumorboards jedoch ein Follow-up-Monitoring geplant ist, u.a. um den Status der Therapieempfehlungen zu überprüfen, wurden die Empfehlungen hier als einzelne Datenelemente ausmodelliert, damit sie ihrerseits einzeln referenzierbar sind. 

Dies betrifft sowohl (medikamentöse) *Therapieempfehlungen* (`MedicationRequest`, bzw. `RequestGroup` bei Kombinationstherapien) als auch *Studieneinschlussempfehlungen* und andere *diagnostische Verfahren und Dienstleistungen* wie Rebiopsien und humangenetische Beratung (`ServiceRequest)`.

### Statusangabe

Die Statusangabe eines Therapieplans bezieht sich auf den Umsetzungsstand aller enthaltenen Empfehlungen (siehe Element `activity`). Es wird empfohlen folgende Statusangaben für die beschriebenen Situationen zu verwenden:

|Belegung `status`|Beschreibung|
|-|-|
|`active`|Empfehlung bzw. Therapieoption in Umsetzung (Regelfall)|
|`revoked`|Molekularer Tumorboard-Fall ist abgeschlossen|
|`completed`|Alle Empfehlungen bzw. Therapieoptionen ausgeschöpft oder Patient verstorben|

*Hinweis: Die Statusangabe eines Therapieplans sollte mit den enthaltenen Empfehlungen (den `status`-Feldern) semantisch abgestimmt sein.*

### Inhalt

Mapping Datensatz zu FHIR

**Suchparameter**

Folgende Suchparameter sind für diese Modul relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/CarePlan?_id=12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/CarePlan?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-therapieplan```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

3. Der Suchparameter "identifier" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/CarePlan?identifier=123456```

    Anwendungshinweise: Weitere Informationen zur Suche nach "identifier" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

4. Der Suchparameter "status" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/CarePlan?status=active```

    Anwendungshinweise: Weitere Informationen zur Suche nach "status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

5. Der Suchparameter "intent" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/CarePlan?intent=proposal```

    Anwendungshinweise: Weitere Informationen zur Suche nach "intent" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

6. Der Suchparameter "category" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/CarePlan?category=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieplanung-typ|praeth```

    Anwendungshinweise: Weitere Informationen zur Suche nach "category" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

7. Der Suchparameter "description" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/CarePlan?description=contains:Musterperson```

    Anwendungshinweise: Weitere Informationen zur Suche nach "description" finden sich in der [FHIR-Basisspezifikation - Abschnitt "String Search"](https://hl7.org/fhir/R4/search.html#string).

8. Der Suchparameter "subject" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/CarePlan?subject=Patient/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

9. Der Suchparameter "encounter" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/CarePlan?encounter=Encounter/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "encounter" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

10. Der Suchparameter "created" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/CarePlan?created=eq2021-06-10```

    Anwendungshinweise: Weitere Informationen zur Suche nach "created" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Date Search"](https://hl7.org/fhir/R4/search.html#date).

11. Der Suchparameter "contributor" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/CarePlan?contributor=Practitioner/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "contributor" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

12. Der Suchparameter "condition" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/CarePlan?condition=Condition/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "condition" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

13. Der Suchparameter "activity-reference" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/CarePlan?activity-reference=MedicationRequest/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "activity-reference" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

14. Der Suchparameter "activity-code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/CarePlan?activity-code=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ|CH```

    Anwendungshinweise: Weitere Informationen zur Suche nach "activity-code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

15. Der Suchparameter "outcome-reference" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/CarePlan?outcome-reference=MedicationStatement/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "outcome-reference" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

<span style="color:red;font-weight:bold">TODO: SP CarePlan.supportingInfo</span>

**Beispiele**

Beispiel: Beschluss MTB-Fall für Kim Musterperson vom 28.03.2023 (siehe [Szenarien](guidance.html))

---
