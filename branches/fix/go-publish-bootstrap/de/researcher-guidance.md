# Anleitung für Forschende - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2027.0.0-ballot.1

* [**Inhaltsverzeichnis**](toc.md)
* [**Anleitung**](guidance.md)
* **Anleitung für Forschende**

## Anleitung für Forschende

### Anleitung für Forschende

Hinweise für Forschende, die die Daten des Moduls **Molekulares Tumorboard** für Forschungszwecke nutzen — z. B. welche Datenelemente für welche Fragestellungen relevant sind und wie sie interpretiert werden.

### Outcome-Endpunkte: OS, PFS und Time to Next Treatment

Die Follow-Up-Dokumentation des Moduls ist so angelegt, dass die üblichen Real-World-Endpunkte der Onkologie aus Routinedaten ableitbar sind. Referenzzeitpunkt (t₀) ist für alle drei typischerweise der **Beginn der MTB-empfohlenen Therapie** ([SystemischeTherapie](StructureDefinition-mii-pr-mtb-systemische-therapie.md)`.performedPeriod.start`); je nach Fragestellung kann alternativ das **MTB-Beschlussdatum** ([Therapieplan](StructureDefinition-mii-pr-mtb-therapieplan.md)) als Indexdatum dienen.

**Overall Survival (OS)** — Zeit von t₀ bis zum Tod jeglicher Ursache. Todesereignis und -datum kommen aus `Patient.deceasedDateTime` (MII-Modul Person); zusätzlich führt das Modul Person die [Vitalstatus](https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Vitalstatus)-Observation den Vitalstatus je Kontaktdatum, und die [Tod](https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tod)-Observation des Onkologie-Moduls dokumentiert Sterbedatum, Todesursache und deren Tumorbezug — zur Bestätigung des Ereignisses und für ursachenspezifische Analysen (tumorbedingte Todesfälle). Patienten ohne Todeseintrag werden zum letzten dokumentierten Kontakt zensiert (jüngste datierte [Follow-Up ClinicalImpression](StructureDefinition-mii-pr-mtb-follow-up-clinicalimpression.md), Response-Befund oder Therapiedokumentation).

**Progression-Free Survival (PFS)** — Zeit von t₀ bis zur ersten dokumentierten Progression oder zum Tod, je nachdem, was zuerst eintritt. Die Progression wird aus dem [Response-Befund](StructureDefinition-mii-pr-mtb-response-befund.md) gelesen: RECIST-/iRECIST-Beurteilung **progressive disease** (`PD`) im `valueCodeableConcept`, mit `effectiveDateTime` als Ereignisdatum und der Beurteilungsmethode (RECIST, RANO, klinisch) im Method-Element des Profils. Response-Befunde hängen über `partOf` an ihrer Therapie — PFS wird damit **pro Therapielinie** berechnet, nicht nur pro Patient.

**Time to Next Treatment (TTNT)** — Zeit von t₀ bis zum Beginn der **nächsten** systemischen Therapielinie (`performedPeriod.start` der folgenden SystemischeTherapie bzw. erstes MedicationStatement der Folgelinie); ohne Folgelinie wird zum letzten Kontakt zensiert. TTNT ist das robuste Real-World-Surrogat, wenn die bildgebende Progressionsbeurteilung unvollständig dokumentiert ist — in den Daten dieses Moduls braucht es gar keine Bildgebung, nur die Therapiesequenz; der Grund für ein Linienende steht im Statusgrund der Therapie (`mii-cs-mtb-therapiestatusgrund` / `statusReason`), die Nicht-Umsetzung einer Empfehlung im Follow-Up-Coding `Grund Nicht-Umsetzung`.

Praktische Hinweise: Therapielinien werden über `performedPeriod` geordnet; die `Leitliniendokumentation`-Extension an Vortherapien trägt, wo dokumentiert, die Liniennummer (`Therapielinie`). Kostenübernahme-Latenzen (sichtbar als Spanne zwischen [Antrag](StructureDefinition-mii-pr-mtb-antrag-kostenuebernahme.md) und [Antwort Kostenübernahme](StructureDefinition-mii-pr-mtb-antwort-kostenuebernahme.md)) können t₀ systematisch verschieben und sind selbst eine untersuchbare Größe.

