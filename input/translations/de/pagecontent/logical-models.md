<!-- markdownlint-disable MD041 -->
### Logische Modelle

Die logischen Datenmodelle des Moduls **Molekulares Tumorboard** beschreiben den fachlichen Datensatz unabhängig von der konkreten FHIR-Repräsentation.

<!-- Migriert aus dem Simplifier-IG (Datenstzeinkl.Beschreibungen). TODO:REVIEW -->

### Datensätze inkl. Beschreibungen

Der Datensatz basiert auf dem Datensatz des
[*Deutschen Netzwerks für Personalisierte Medizin (DNPM)*](https://dnpm.de) —
siehe den Abschnitt Referenzen auf der Seite [Anleitung](guidance.html).

Es ist zu beachten, dass das Logical Model rein auf die Abbildung der
Datenelemente und deren Beschreibung abzielt. Verwendete Datentypen und
Kardinalitäten sind nicht als verpflichtend anzusehen. Dies wird abschließend
durch die FHIR-Profile festgelegt. Für jedes Element innerhalb des Logical
Models existiert ein 1:1-Mapping auf ein Element einer konkreten
FHIR-Ressource.
