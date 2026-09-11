# MII CS Empfehlung Evidenzgrad Zusatzverweis - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS Empfehlung Evidenzgrad Zusatzverweis**

## CodeSystem: MII CS Empfehlung Evidenzgrad Zusatzverweis 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-empfehlung-evidenzgrad-zusatzverweis | *Version*:2026.0.1 |
| Active Stand: 2026-09-11 | *Maschinenlesbarer Name*:MII_CS_MTB_Empfehlung_EvidenzgradZusatzverweis |

 
Zusatzverweis zum Evidenzgrad einer Empfehlung 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII VS Empfehlung Evidenzgrad Zusatzverweis](ValueSet-mii-vs-mtb-empfehlung-evidenzgrad-zusatzverweis.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-mtb-empfehlung-evidenzgrad-zusatzverweis",
  "language" : "de-DE",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/mii-cs-mtb-empfehlung-evidenzgrad-zusatzverweis",
  "version" : "2026.0.1",
  "name" : "MII_CS_MTB_Empfehlung_EvidenzgradZusatzverweis",
  "title" : "MII CS Empfehlung Evidenzgrad Zusatzverweis",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-11T15:11:15+00:00",
  "publisher" : "Medizininformatik-Initiative",
  "contact" : [{
    "name" : "Medizininformatik-Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de"
    }]
  }],
  "description" : "Zusatzverweis zum Evidenzgrad einer Empfehlung",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "is",
    "display" : "is",
    "definition" : "In situ-Daten aus Untersuchungen an Patientenmaterial (z.B. IHC, FISH) unterstützen den Evidenzgrad. Die unterstützende Methode kann in Klammern zusätzlich angegeben werden, z.B. Evidenzgrad 3 is (IHC).",
    "designation" : [{
      "language" : "en",
      "value" : "Several in situ data and studies on patient material (e.g., IHC, FISH) support the biomarker and the level of evidence."
    }]
  },
  {
    "code" : "iv",
    "display" : "iv",
    "definition" : "In vitro-Daten/ in vivo-Modelle (z.B. PDX-Modelle) derselben Tumorentität unterstützen den Evidenzgrad. Die unterstützende Methode kann in Klammern angegeben werden, z.B. Evidenzgrad 2 iv (PDX).",
    "designation" : [{
      "language" : "en",
      "value" : "in vitro data"
    }]
  },
  {
    "code" : "Z",
    "display" : "Z",
    "definition" : "Zusatzverweis für Zulassungsstatus (Z = EMA-Zulassung liegt vor; Z (FDA) = nur FDA-Zulassung vorhanden)",
    "designation" : [{
      "language" : "en",
      "value" : "Drug is approved for use with the specific biomarker [Z = EMA approval, Z(FDA) = FDA approval]"
    }]
  },
  {
    "code" : "R",
    "display" : "R",
    "definition" : "Verweis, dass es sich hierbei um einen Resistenzmarker für eine bestimmte Therapie handelt",
    "designation" : [{
      "language" : "en",
      "value" : "Biomarker predicts resistance to the drug."
    }]
  }]
}

```
