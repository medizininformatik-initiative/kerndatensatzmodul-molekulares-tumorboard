<!-- Migriert aus dem Simplifier-IG (Quelle(n): MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Immunhistochemie/Immunhistochemie-Observation.page.md). TODO:REVIEW -->
---

### Inhalt

Dieses Profil beschreibt einen einzelnen IHC-Befund als Teil eines molekulargenetischen Profils. 

Die Immunhistochemie wird hier mit dem Fokus auf onkologisch relevante Untersuchungen getestet. Langfristig ist ggfs. eine Überführung ins Pathologiemodul angedacht. 

Für viele Immunhistochemische Befunde gibt es passende LOINC-Codes, die das Vorhandensein qualitativ oder semiquantitativ (+, ++, +++, - ) beschreiben. Allerdings muss eine forschungsorientierte IHC-Spezifikation in der Lage sein, alle möglichen Proteine nachzuweisen. Daher wurde folgende Modellierung gewählt: 

* **Spezifische** IHC kann angewandt werden, wenn es einen in LOINC, SNOMED oder einem ander Kodiersystem  eine konkrete Kodierung vorloegt (z.B. 	`40557-1 Progesterone receptor Ag [Presence] in Tissue by Immune stain`. In dem Fall kann die Ausprägung normal über valueCodeableConcept vorgenommen werden, z.B: Present/absent)
* **Generische** IHC kann vor allem zur Darstellung seltener Proteine ohne. Dazu wird unter `code` der statische code SNOMED `1234806008 Observation using immunohistochemistry (observable entity)` verwendet, um eine Immunhoistochemie anzuzeigen. Das konkret nachgewiesene Protein kann dann unter `component[gene-studied]` kodiert werden. Dabei wird wie bei anderen Biomarkern auch, HGNC zur konkreten Identifikation der beteiligten Gene genutzt. 

Es ist zu beachten, dass es sich bei IHC um einen **Proteinnachweis** handelt, der losgelöst vom eigentlich kodierenden Gen stattfindet. Die vorliegende Modellierung ist daher eine systematische Vereinfachung mit 
Es ist davon auszugehen, dass bestimmte Gene verschiedene Protein-Spliceprodukte herstellen können. Falls es dafür Beispiele mit onkologischer Relevanz gibt, kann diese Modellierung gern verfeinert werden. 
Zusätzlich steht die Annotation mit weiteren Proteindatenbanken (z.B. UniProt) frei.  

### Verknüpfungen zu anderen Ressourcen

Da es eine Reihe von etablierten Immunistochemien mit spezialisierten Auswertungen gibt, wurden dafür spezialisierte Profile geschrieben. Diese sind in Zukunft bei Bedarf erweiterbar. Dazu gehören
* Her2-IHC und Her2-Status, auch in Verbindung mit Her2-ISH
* MMR-Protein-Nachweis per IHC zum Nachweis von MMR-deficiency
* PDL1-IHC inkl. Berechnung der Subscores
* Methodischer Sonderfall des IHC-Nachweises von phosphorylierten Isoformen

### Inhalt

Mapping Datensatz zu FHIR

**Suchparameter**

Folgende Suchparameter sind für das Modul Onkologie relevant, auch in Kombination:

1. Der Suchparameter "_id" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?_id=12345```

    Anwendungshinweise: Weitere Informationen zur Suche nach "_id" finden sich in der [FHIR-Basisspezifikation - Abschnitt "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. Der Suchparameter "code" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?code=http://snomed.info/sct|1234806008```

    Anwendungshinweise: Weitere Informationen zur Suche nach "code" finden sich in der 
    [FHIR-Basisspezifikation - Abschnitt "token"](https://hl7.org/fhir/R4/search.html#token).

3. Der Suchparameter "focus" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?focus=Condition/example-mii-mtb-diagnose```

    Anwendungshinweise: Weitere Informationen zur Suche nach "focus" finden sich in der 
    [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).

4. Der Suchparameter "interpretation" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?interpretation=http://hl7.org/fhir/uv/genomics-reporting/ValueSet/high-low-codes-vs|high```

    Anwendungshinweise: Weitere Informationen zur Suche nach "interpretation" finden sich in der 
    [FHIR-Basisspezifikation - Abschnitt "token"](https://hl7.org/fhir/R4/search.html#token).

5. Der Suchparameter "specimen" MUSS unterstützt werden:

    Beispiele:

    ```GET [base]/Observation?specimen=Specimen/1234```

    Anwendungshinweise: Weitere Informationen zur Suche nach "specimen" finden sich in der 
    [FHIR-Basisspezifikation - Abschnitt "reference"](https://hl7.org/fhir/R4/search.html#reference).

**Beispiele**

---
