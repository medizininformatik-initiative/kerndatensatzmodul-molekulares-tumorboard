Diese Seite befasst sich mit der Kommentierungsphase und wird in der abschließenden Version des Implementation Guides nicht mehr präsent sein. 

### Neuerungen
Jede Kommentierung der Medizininformatik-Initiative bietet die Möglichkeit, neue 
1. Eine Neuerung ist diese Seite, die wir als Modulteam nutzen wollen, um unsere Ziele für die Kommentierungsphase näher zu erläutern, Kontext zu bieten und den Fokus der Kommentierenden auf bestimmte Aspekte zu richten. 
2. Weiterhin haben wir Feedback aus dem Modulteam aufgegriffen, dass die JSON-Beispiele auf den Seiten für klinisch-wissenschaftlich-fokussierte Interessenten schwer zu erfassen waren. Wir haben daher die Beispiele auf jeder Seite jeweils in tabellarischer Form und in JSON-Format aufbereitet. JSON hat weiterhin denn Vorteil, dass während des Lesens der Spezifikaition einfach Beispiele extrahiert und auf eigenen (Test-)Systemen direkt eingespielt werden kann. 

### Technische Ausgereiftheit
Die Profile der verssoin `2025.0.0-ballot`entsprechen dem aktuellen Entwicklungsstand des Moduls und geben die Inhalte des Informationsmodells vollständig wieder. 
Durch die tiefe Einbindung mehrerer Module, die sich auch parallel noch in Entwicklung befinden, kommt es in der Validierung der Ballotiervers
Wir streben eine Version an, die nanch abgeschlossener Kommentierungsphase und Einarbeitung der Kommentare stabil unter Verwendung der Module in der kommenden Version 2026 ist. 

### Fokus der Kommentierung

Insbesondere wünschen wir uns: 
- Kommentare zur inhaltichen Ergänzung des komplexen Fallbeispiels
- Kommentare zur Darstellung von Medikationsempfehlungen in der Tumortherapie als MedicationRequests/RequestGroups bei Kombinationstherapie
- Kommentare zur Integration von Referenzen auf Studiendatenbanken und Publikationen
- Kommentare zur strukturierten Darstellung von Pathologie-Befunddaten, insb. IHC-Daten
- Kommentare zur strukturierten Darstellung von NGS-Daten
    - zum Fit von internem Datenformat zur vorgeschlagenen Spezifikation von Varianten mit lokal zugänglichen Ergebnis aus Pathologie und Bioinformatik
    - zur Modellierung von Fusions-Varianten und RNASeq
- Kommentare zur Verwendung der Ressourcen Diagnostischer und Therapeutischer Implikation zur korrekten Annotation von Pathogenität und Behandlungsoptions-Evidenz, die auf mehreren Datenpunkten beruht 
- Kommentare über die Bedeutung weiterer Datenpunkte des klinischen Workflows
    - Art des Kontakts (Arztbrief, telefon, persönlich) 
    - Art des Follow-ups (geplant, situationsbezogen)
    - Quelle der Informationen für Behandlungsepisode allgemein (Tumordokumentation, Arztbrief, externe)
    - Weitere Datentypen/Ressourcen unter ClinicalImpression zusammenfassbar
