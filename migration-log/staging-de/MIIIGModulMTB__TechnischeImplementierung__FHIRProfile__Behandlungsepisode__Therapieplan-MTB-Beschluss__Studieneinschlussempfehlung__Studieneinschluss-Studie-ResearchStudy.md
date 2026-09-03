---

### Inhalt

Dieses Profil beschreibt als Teil der Studieneinschlussempfehlung die Studie, in die der Einschluss empfohlen wird.

Das vorliegende Profil definiert hauptsächlich drei Identifiersysteme, die im Rahmen von Studien am Molekularen Tumorboard häufig genutzt werden:

* [NCT - NIH Clinical Trial Database](https://clinicaltrials.gov)
* [EudraCT - European Union Drug Regulating Authorities Clinical Trials Database](https://eudract.ema.europa.eu)
* [DRKS - Deutsches Register für klinische Studien](https://www.bfarm.de/DE/Das-BfArM/Aufgaben/Deutsches-Register-Klinischer-Studien/_node.html)

Die Verwendung des Studienprofils ist *optional* - dieses Modul endet formal mit der Studieneinschlussempfehlung.

In zukünftigen Ausbaustufen kann die lokale Studienpopulation einer Studie über bspw. über `Group` zusammenaggregiert und die tatsächliche Studienteilnahme als Auswertungsparameter genutzt werden. Weiterhin kann in Zukunft definiert werden, inwieweit eine Studienteilnahme im Follow-up getrennt erfasst werden kann. 

### Inhalt

Mapping Datensatz zu FHIR

<span style="color:red;font-weight:bold">TODO: FHIR LM Mappings korrigieren</span>

**Suchparameter**

Folgende Suchparameter sind für diese Modul relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ResearchStudy?_id=12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/ResearchStudy?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-studie```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

3. Der Suchparameter "identifier" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/ResearchStudy?identifier=DRKS00031294```

    Anwendungshinweise: Weitere Informationen zur Suche nach "identifier" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

4. Der Suchparameter "title" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/ResearchStudy?title=Frontale transkranielle Gleichstromstimulation (tDCS) als potentielle Behandlungsmethode von Long-COVID bedingter Fatigue```

    Anwendungshinweise: Weitere Informationen zur Suche nach "title" finden sich in der [FHIR-Basisspezifikation - Abschnitt "String Search"](http://hl7.org/fhir/R4/search.html#string).

5. Der Suchparameter "status" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/ResearchStudy?status=active```

    Anwendungshinweise: Weitere Informationen zur Suche nach "status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

6. Der Suchparameter "partOf" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/ResearchStudy?partOf=ResearchStudy/researchstudy-test```

    Anwendungshinweise: Weitere Informationen zur Suche nach "partOf" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).

7. Der Suchparameter "category" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/ResearchStudy?category=interventional```

    Anwendungshinweise: Weitere Informationen zur Suche nach "category" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

8. Der Suchparameter "armName" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/ResearchStudy?armName=frontale anodale tDCS (verum condition)```

    Anwendungshinweise: Weitere Informationen zur Suche nach "arm.name" finden sich in der [FHIR-Basisspezifikation - Abschnitt "String Search"](http://hl7.org/fhir/R4/search.html#string).

9. Der Suchparameter "category" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/ResearchStudy?category=Long-COVID bedingter Fatigue```

    Anwendungshinweise: Weitere Informationen zur Suche nach "extension:Studienfokus" finden sich in der [FHIR-Basisspezifikation - Abschnitt "String Search"](http://hl7.org/fhir/R4/search.html#string).

10. Der Suchparameter "keyword" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/ResearchStudy?keyword=COVID```

    Anwendungshinweise: Weitere Informationen zur Suche nach "extension:Schlagwort" finden sich in der [FHIR-Basisspezifikation - Abschnitt "String Search"](http://hl7.org/fhir/R4/search.html#string).

11. Der Suchparameter "label" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/ResearchStudy?label=Frontale transkranielle Gleichstromstimulation (tDCS) als potentielle Behandlungsmethode von Long-COVID bedingter Fatigue```

    Anwendungshinweise: Weitere Informationen zur Suche nach "extension:Label" finden sich in der [FHIR-Basisspezifikation - Abschnitt "String Search"](http://hl7.org/fhir/R4/search.html#string).

12. Der Suchparameter "studienregister" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/ResearchStudy?studienregister=Library/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "extension:Studienregister" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).

13. Der Suchparameter "rekrutierungsstand-datum" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/ResearchStudy?rekrutierungsstand-datum=2023-02-17```

    Anwendungshinweise: Weitere Informationen zur Suche nach "extension:Rekrutierung.extension:rekrutierungsstand-datum" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Date Search"](http://hl7.org/fhir/R4/search.html#date).

14. Der Suchparameter "rekrutierungsstand-genauigkeit" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/ResearchStudy?rekrutierungsstand-genauigkeit=good```

    Anwendungshinweise: Weitere Informationen zur Suche nach "extension:Rekrutierung.extension:rekrutierungsstand-genauigkeit" finden sich in der [FHIR-Basisspezifikation - Abschnitt "String Search"].(http://hl7.org/fhir/R4/search.html#string).

15. Der Suchparameter "rekrutierungsstand-rekrutierungsstand" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/ResearchStudy?rekrutierungsstand=35```

    Anwendungshinweise: Weitere Informationen zur Suche nach "extension:Rekrutierung.extension:rekrutierungsstand" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Number Search"](http://hl7.org/fhir/R4/search.html#number).

16. Der Suchparameter "rekrutierungsstand-rekrutierungsziel" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/ResearchStudy?rekrutierungsziel=40```

    Anwendungshinweise: Weitere Informationen zur Suche nach "extension:Rekrutierung.extension:rekrutierungsziel" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Number Search"](http://hl7.org/fhir/R4/search.html#number).

17. Der Suchparameter "rekrutierungsstand-rekrutierungsstart" MUSS unterstützt werden:

    Beispiele

    ```GET [base]/ResearchStudy?rekrutierungsstart=2023-01-12```

    Anwendungshinweise: Weitere Informationen zur Suche nach "extension:Rekrutierung.extension:rekrutierungsstart" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Date Search"](http://hl7.org/fhir/R4/search.html#date).

**Beispiele**

Beispiel: Empfohlene Studie für Kim Musterperson vom 28.03.2023 (siehe [Szenarien](guidance.html))

---
