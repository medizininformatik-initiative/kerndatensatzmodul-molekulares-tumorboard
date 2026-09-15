<!-- Migriert aus dem Simplifier-IG (Quelle(n): MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Immunhistochemie/Immunhistochemie-Phosphorylation-Observation.page.md; MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Molekular-Pathologie-Befund/Immunhistochemie/P-Immunhistochemie-Observation.page.md). TODO:REVIEW -->
---

### Beschreibung

Immunohistochemie-Profil für Phosphorylierungs-Färbungen.

---

### Inhalt

Dieses Profil beschreibt den IHC-Befund, der ein Protein speziell in seiner phosphorylierten Form nachweist. Es existieren derzeit keine international anerkannenten HL7-Spezifkationen zur präzisen und harmonisierten Darstellung von posttranslationalen Modifikationen. 

Dieses Profil soll daher ein erstes Konzept zur generalisierten Erschließung von post-translationalen Modifikation am Beispiel von Phosphorylierung
Vereinfacht werden phosphorylierte Proteine häudig mit dem Präfix `p-`, z.B. p-AKT. 	

Diese Kodierung mag im klinisch-pathologischen Alltag und den standardisierten Diagnoseabläufen implizit verständlich sein. Falls die Information in dieser Form aus einem Pathologiesystem kommt, ist im weiteren (für DIZ-Mitarbeiter, Forscher etc. ) jedoch nicht ersichtlich, an welcher Stelle eine Phosphorylierung vorliegt. Daher handelt es sich bei der dnpm-Kodierung nicht um eine e präzise Angabe einer Phosphorylierungsstelle möglich. 

Beispiel:  Das Gen Rb-1 hat mit Serin eine mögliche Phosphorylierungsstelle an Position 949 (siehe p-RB-Seite auf UniProt, unter dem Abschnitt PRTM/Processing https://www.uniprot.org/uniprotkb/Q13733/entry). 
Die Proteine AKT1, AKT2 und AKT3 hingegen haben zwei potentielle Phosyphorylierungsstellen, die von verschiedenen Enzymen aktiviert werden: Thr308 und Ser473, wobei vor allem für den Nachweis der letzten Mutation eine negative Prognose existiert.  

Es existieren mehrere Ansätze, wie trotzdem eine Abgrenzung zur nicht-phosphorylierten Version vorgenommen werden kann. Für Details sei auf die Diskussion posttranslationaler Modifikation auf der UniProt-Seite verwiesen https://www.uniprot.org/help/mod_res: 
- Angabe des Antikörper-Klons zur eindeutigen Identifizierung des verwendeten Antikörper-Produkts (z.B. über https://www.cellsignal.com/learn-and-support/phosphositeplus-ptm-database oder vergleichbare Datenbanken)

- Darstellung der veränderten Raumstruktur des Proteins über UniProt
- Verweis auf eine vorangegangene Aktivität 

MOD

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
