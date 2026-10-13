<!-- Migriert aus dem Simplifier-IG (Quelle(n): MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Diagnose/Oncotree-Observation.page.md). TODO:REVIEW -->
---

### Inhalt

Dieses Profil beschreibt die Oncotree-Klassifikation, die in der Präzisionsmedizin gebraucht wird.

Sie kombiniert Lokalisations- und morphologische Beschreibungen und gilt damit als besser geeignet für personalisierte Medizin als die weiter verbreitete ICD-O-Klassifikation mit Topographie und Morphologie. Die [aktuelle stabile Version wird vom MSKCC herausgegeben](https://oncotree.mskcc.org/?version=oncotree_latest_stable&field=NAME) und wird in der [OnkoKB-Datenbank](https://www.oncokb.org) verwendet. 

Es ist zu beachten, dass die OncoTree-Klassifikation zur Kommentierungsphase noch nicht als eigenständiges CodeSystem/ValueSet bereitgestellt wird - dies ist jedoch spätestens mit dem offiziellen Release geplant. 

### Inhalt

Mapping Datensatz zu FHIR

**Suchparameter**

Folgende Suchparameter sind für diese Modul relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?_id=12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-oncotree```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

3. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?code=http://snomed.info/sct|371469007```

    Anwendungshinweise: Weitere Informationen zur Suche nach "code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

4. Der Suchparameter "subject" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?subject=Patient/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

5. Der Suchparameter "encounter" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?encounter=Encounter/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "encounter" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](https://hl7.org/fhir/R4/search.html#reference).

6. Der Suchparameter "combo-value-concept" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?combo-value-concept=http://data.mskcc.org/ontologies/oncotree|HGONEC```

    Anwendungshinweise: Weitere Informationen zur Suche nach "combo-value-concept" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](https://hl7.org/fhir/R4/search.html#token).

**Beispiele**

Beispiel: Beschluss MTB-Fall für Kim Musterperson vom 28.03.2023 (siehe [Szenarien](guidance.html))

[mii-vs-mtb-oncotree](ValueSet-mii-vs-mtb-oncotree.html)
