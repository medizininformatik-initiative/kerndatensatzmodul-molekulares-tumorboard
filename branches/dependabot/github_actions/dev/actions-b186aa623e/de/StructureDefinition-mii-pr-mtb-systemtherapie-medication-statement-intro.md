<!-- Migriert aus dem Simplifier-IG (Quelle(n): MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Follow-Up/Systemische-Therapie/Systemische-Therapie-Medication-Statement-Medication-Statement.page.md). TODO:REVIEW -->
---

### Inhalt
Systemische Therapie Medication Statement gehört zur Systemischen Therapie um Medikamentengaben darzustellen. Dafür wurden die Slices für medicationCodeableConcept aus dem  MII_PR_Medikation_MedicationStatement Profil übernommen. 
übernommen.
In diesem Profil gibt es die zusätzliche Möglichkeit eine Dosisdichte anzugeben, welche angibt in welchem Ausmaß eine Dosisreduktion stattfand. 

### Verknüpfungen zu anderen Ressourcen
Das partOf Element verweist immer auf die übergeordnete Systemische Therapie Procedure.

### Inhalt

Mapping Datensatz zu FHIR

**Suchparameter**

Folgende Suchparameter sind für das Modul Onkologie relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationStatement?_id=12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "_profile" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationStatement?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-pr-mtb-systemtherapie-medication-statement```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_profile" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "based-on" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationStatement?based-on=MII_PR_MTB_Therapieempfehlung/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "MedicationStatement.basedOn" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).

3. Der Suchparameter "part-of" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationStatement?part-of=MII_PR_MTB_Systemische_Therapie/example```

    Anwendungshinweise: Weitere Informationen zur Suche nach "MedicationStatement.partOf" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Reference Search"](http://hl7.org/fhir/R4/search.html#reference).

5. Der Suchparameter "status" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationStatement?status=completed```

    Anwendungshinweise: Weitere Informationen zur Suche nach "MedicationStatement.status" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

5. Der Suchparameter "medication" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationStatement?medication=completed```

    Anwendungshinweise: Weitere Informationen zur Suche nach "MedicationStatement.medication" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

8. Der Suchparameter "effective" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationStatement?effective=2022-01-01```

    Anwendungshinweise: Weitere Informationen zur Suche nach "MedicationStatement.effective" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Date Search"](http://hl7.org/fhir/R4/search.html#date).

13. Der Suchparameter "note" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationStatement?note=diesdas```

    Anwendungshinweise: Weitere Informationen zur Suche nach "MedicationStatement.outcome" finden sich in der [FHIR-Basisspezifikation - Abschnitt "String Search"](http://hl7.org/fhir/R4/search.html#string).

5. Der Suchparameter "dosisdichte" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/MedicationStatement?dosisdichte=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-dosisdichte|>50%```

    Anwendungshinweise: Weitere Informationen zur Suche nach "MedicationStatement.dosage[Dosisdichte]" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Token Search"](http://hl7.org/fhir/R4/search.html#token).

**Beispiele**

---
