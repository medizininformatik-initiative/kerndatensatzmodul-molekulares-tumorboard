---

### Inhalt

Dieses Profil beschreibt eine Empfehlung zur Rebiopsie.

Ein häufiger Grund ist ein zu niedriger Tumorzellgehalt in der ursprünglichen Probe, oder das Alter der Probe. Diese neue Biopsie kann anschließend erneut molekularpathologisch und/oder durch Next Generation Sequencing untersucht werden. Daraus ergibt sich jeweils ein zusätzlicher `DiagnosticReport`. 

Es ist zu diskutieren, ob eine Rebiopsie, die im Laufe des diagnostischen Prozesses im Rahmen des Molekularen Tumorboards angefertigt wird, Bestandteil der abschließenden Therapieempfehlungen ist, oder lediglich als zusätzlicher Rebiopsie-Auftrag an der Behandlungsepisode nachgehalten wird. 

### Statusangabe

Die Statusangabe eines Auftrags zur Rebiopsie bezieht sich auf dessen Umsetzungsstand. Es wird empfohlen folgende Statusangaben für die beschriebenen Situationen zu verwenden:

|Belegung `status`|Beschreibung|
|-|-|
|`draft`|Geplant, nicht angefragt|
|`active`|Biopsie|
|`completed`|Abgeschlossen|

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

    ```GET [base]/ServiceRequest?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-biopsie-auftrag```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

3. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ServiceRequest?code=http://snomed.info/sct|86273004```

    Anwendungshinweise: Weitere Informationen zur Suche nach "code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token)

4. Der Suchparameter "reason-reference" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ServiceRequest?reason-reference=Observation/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "reason-reference" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#reference)

5. Der Suchparameter "specimen" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ServiceRequest?specimen=Specimen/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "specimen" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#reference)

**Beispiele**

Beispiel: Rebiopsie-Auftrag für Kim Musterperson vom 28.03.2023 (siehe [Szenarien](guidance.html))

---
