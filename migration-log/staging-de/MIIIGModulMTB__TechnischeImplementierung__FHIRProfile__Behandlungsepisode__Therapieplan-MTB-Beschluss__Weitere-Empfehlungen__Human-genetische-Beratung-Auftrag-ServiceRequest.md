---

### Inhalt

Dieses Profil beschreibt eine Empfehlung zur Human-genetischen Beratung.

Dies kann beispielsweise bei der Befundung von Keimbahn-Varianten bei nahen Verwandten sowie zur Abklärung eines erhöhten Risikos für bestimmte Krebsentitäten erfolgen. Dies kann auch auf Basis einer Zufallsbefundung einer umfangreicheren Sequenzierung (z.B. Whole-Exom) erfolgen, falls der/die Patient*in der Information über eine Benachrichtigung bei Zufallsbefunden zugestimmt hat.  

### Statusangabe

Die Statusangabe eines Auftrags zur Human-genetischen Beratung bezieht sich auf dessen Umsetzungsstand. Es wird empfohlen folgende Statusangaben für die beschriebenen Situationen zu verwenden:

|Belegung `status`|Beschreibung|
|-|-|
|`draft`|Nicht umgesetzt|
|`active`|In Umsetzung|
|`completed`|Abgeschlossen oder abgebrochen (Patient verstorben)|

*Hinweis: Die Statusangabe sollte mit der des beschlossenen Therapieplans (siehe [Therapieplan](StructureDefinition-mii-pr-mtb-therapieplan.html)) semantisch abgestimmt sein.*

### Inhalt

Mapping Datensatz zu FHIR

**Suchparameter**

Folgende Suchparameter sind für dieses Modul relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ServiceRequest?_id=12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ServiceRequest?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-humangenetische-beratung-auftrag```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

4. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ServiceRequest?code=http://snomed.info/sct|788339009```

    Anwendungshinweise: Weitere Informationen zur Suche nach "code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#token)

4. Der Suchparameter "reason-code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ServiceRequest?reason-code=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/mii-vs-mtb-auftrag-begruendung|other```

    Anwendungshinweise: Weitere Informationen zur Suche nach "reason-code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#token)

5. Der Suchparameter "specimen" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ServiceRequest?specimen=Specimen/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "specimen" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#reference)

**Beispiele**

Beispiel: Auftrag zur Human-genetischen Beratung für Kim Musterperson vom 28.03.2023 (siehe [Szenarien](guidance.html))

---
