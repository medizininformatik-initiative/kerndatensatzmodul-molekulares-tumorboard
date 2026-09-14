---

### Inhalt

Dieses Profil beschreibt die onkologische Diagnose zum Primärtumor und umfasst die Tumorausbreitung zum *Zeitpunkt der Diagnosestellung* sowie der *Anmeldung zum Molekularen Tumorboard*. Handeln es sich um einen Tumor des zentralen Nervensystems, kann eine [Graduierung nach WHO-Klassifikation](https://publications.iarc.fr/Book-And-Report-Series/Who-Classification-Of-Tumours/Central-Nervous-System-Tumours-2021) vorgenommen werden.

### Verknüpfungen zu anderen Ressourcen

Prinzipiell erbt die Molekulare Tumorboard-Diagnose alle Datenfelder der Onkologie-Diagnose, darunter ICD-O Morphologie, Topographie usw. Pro Patient sollte es nur eine `Condition`-Ressource pro Primärtumor geben.

Die MTB-Diagnose erweitert daher die Onkologie-Felder um weitere Datenpunkte, die für die Auswertung und Therapiefindung im Molekularen Tumorboard von Bedeutung sind, z.B.:

1. Für Zentrales Nervensystem (ZNS)-Tumore kann bei Bedarf der WHO-Grad angegeben werden.

2. Für alle Tumore kann bei Bedarf eine OncoTree-Klassifikation des MSKCC / OnkoKB angegeben werden.

3. Tumorausbreitung ist eigentlich ein abgeleiteter Datenpunkt. Theoretisch kann dieser aus vorliegenden Zeitstempeln und Referenzen berechnet werden (z.B. aus TNM-Klassifikationen/ Verlaufs-Beonachtungen in der Krankheitshistorie). Da aber in der Realität an den Datenintegrationszentren nicht die komplette Krankheitsgeschichte in strukturierter Form vorliegen wird,hält das Modulteam es für die vorliegende Profilierung für vertretbar, die Datenpunkte Tumorausbreitung zum Zeitpunkt der Erstdiagonse und zum Zeitpunkt des Einschlusses ins Molekulare Tumorboard zunächst als explizite Datenpunkte zu hinterlegen.

### Inhalt

Mapping Datensatz zu FHIR

**Suchparameter**

Folgende Suchparameter sind für dieses Modul relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Condition?_id=12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Condition?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-diagnose-primaertumor```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

3. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Condition?code=http://fhir.de/CodeSystem/bfarm/icd-10-gm|A15.0```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Condition.code" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

4. Der Suchparameter "subject" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Condition?subject=Patient/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Condition.subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).

5. Der Suchparameter "patient" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Condition?patient=Patient/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Condition.subject" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).

6. Der Suchparameter "body-site" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Condition?body-site=http://terminology.hl7.org/CodeSystem/icd-o-3|C44.2```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Condition.body-site" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).

7. Der Suchparameter "morphology-behaviour-icd03" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Condition?morphology-behaviour-icdo3=http://terminology.hl7.org/CodeSystem/icd-o-3|8503/2```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Condition.extension[morphology-behaviour-icdo3]" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).

8. Der Suchparameter "icd10gm-diagnosesicherheit" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Condition?icd10gm-diagnosesicherheit=https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_ICD_DIAGNOSESICHERHEIT|G```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Condition.code.coding.extension.where(url='http://fhir.de/StructureDefinition/icd-10-gm-diagnosesicherheit').value" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

9. Der Suchparameter "icd10gm-mehrfachcodierung" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Condition?icd10gm-mehrfachcodierung=http://fhir.de/CodeSystem/icd-10-gm-mehrfachcodierungs-kennzeichen|†```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Condition.code.coding.extension.where(url='http://fhir.de/StructureDefinition/icd-10-gm-mehrfachcodierungs-kennzeichen').value" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

10. Der Suchparameter "icd10gm-seitenlokalisation" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Condition?icd10gm-seitenlokalisation=https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_ICD_SEITENLOKALISATION|B```

    Anwendungshinweise: Weitere Informationen zur Suche nach "Condition.code.coding.extension.where(url = 'http://fhir.de/StructureDefinition/seitenlokalisation').value" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

**Beispiele**

Beispiel: Beschluss MTB-Fall für Kim Musterperson vom 28.03.2023 (siehe [Szenarien](guidance.html))

---
