<!-- Migriert aus dem Simplifier-IG (Quelle(n): MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Therapieplan-MTB-Beschluss/Studieneinschlussempfehlung/Studieneinschluss-Anfrage-ServiceRequest.page.md). TODO:REVIEW -->
---

### Inhalt

Dieses Profil beschreibt eine Anfrage zum Studieneinschluss als Teil der Studieneinschlussempfehlung. 

### Statusangabe

Die Statusangabe einer Anfrage zum Studieneinschluss bezieht sich auf deren Umsetzungsstand. Es wird empfohlen folgende Statusangaben für die beschriebenen Situationen zu verwenden:

|Belegung `status`|Beschreibung|
|-|-|
|`draft`|Anfrage noch nicht abgeschickt|
|`active`|Anfrage abgeschickt, Entscheidung ausstehend|
|`revoked`|Anfrage abgeschickt, kein Studieneinschluss (abgelehnt oder verstorben, Angabe des Grundes unter `statusReason`|
|`completed`|Patient erfolgreich eingeschlossen|

*Hinweis: Die Statusangabe sollte mit der des beschlossenen Therapieplans (siehe [Therapieplan](StructureDefinition-mii-pr-mtb-therapieplan.html)) semantisch abgestimmt sein.*

### Verknüpfungen zu anderen Ressourcen

Die Studeinanfrage verlinkt über `ServiceRequest.reasonsReference` auf die onkologische Diagnose. Die entsprechende Studie kann über Referenz auf eine `ResearchStudy` mit Details zum eigentlichen Studienvorhaben verweisen.

Die Erweiterung `Priorität` bezieht sich auf die Priorisierung einer Studieneinschlussempfehlung im Verhältnis zu anderen Therapieempfehlungen. Es wäre denkbar, dass die Priorität beim Wegfall anderer Therapieoptionen dynamisch angepasst wird, während die Priorität an den Therapieempfehlungen konstant persistieren kann. 

Die Erweiterung `Publikation` bezieht sich auf relevantes Material, das im Zusammenhang mit dem Studienvorhaben steht. Hierbei kann es sich um die Ergebnisstudie handeln (insbesondere bei der Integration von Therapieverlaufsdaten, die bereits länger zurückliegen). Gleichzeitig können hier bereits während der Laufzeit Studienprotokolle o.ä. referenziert werden. 

### Inhalt

Mapping Datensatz zu FHIR

<span style="color:red;font-weight:bold">TODO: FHIR LM an Profil anpassen</span>

**Suchparameter**

Folgende Suchparameter sind für dieses Modul relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ServiceRequest?_id=12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ServiceRequest?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-biopsie-auftrag```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

3. Der Suchparameter "status" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ServiceRequest?status=active```

    Anwendungshinweise: Weitere Informationen zur Suche nach "status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token)

4. Der Suchparameter "intent" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ServiceRequest?status=proposal```

    Anwendungshinweise: Weitere Informationen zur Suche nach "intent" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token)

5. Der Suchparameter "category" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ServiceRequest?category=110465008```

    Anwendungshinweise: Weitere Informationen zur Suche nach "category" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token)

6. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ServiceRequest?code=02475000```

    Anwendungshinweise: Weitere Informationen zur Suche nach "code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "token"](http://hl7.org/fhir/R4/search.html#token)

7. Der Suchparameter "reason-reference" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ServiceRequest?reason-reference=MII_PR_MTB_Diagnose_Primaertumor/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "reason-reference" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference)

8. Der Suchparameter "supporting-info" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ServiceRequest?supporting-info=ResearchStudy/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "supporting-info" finden sich in der [FHIR-Basisspezifikation - Abschnitt "reference"](http://hl7.org/fhir/R4/search.html#reference)

**Beispiele**

Beispiel: Studieneinschlussanfrage für Kim Musterperson vom 28.03.2023 (siehe [Szenarien](guidance.html))

---
