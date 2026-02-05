---
parent: 
---
## Kontext im Gesamtprojekt / Bezüge zu anderen Modulen

Der Kerndatensatz der Medizininformatik-Initiative hat mittlerweile eine Vielzahl von KDS-Modulen. Ein Zusammenspiel der Module an einzelnen Standorten ist angedacht und gewünscht, kann aber aufgrund der lokal verschiedenen Systeme und Ressourcen nicht vorausgesetzt werden. Außerdem ist zu beachten, dass sich alle Module des MII KDS in einem stetigen weiterentwicklungsprozess befinden. 

Verpflichtend für die Nutzung sind:

- die MII Basismodule, v.a. Prozedur, Medikation und Diagnose
- das Onkologie-Modul
- der Molekulargenetische Befundbericht 

### Modul Onkologie

* Das Modul Onkologie modelliert in der ersten Version 2025 die klinischen Daten aus dem oBDS. 
* Es umfasst damit die strukturierte Darstellung der "regulären" leitliniengerechten Therapien. 
* In zukünftigen Versionen wird das Modul um weitere Datenpunkte auch jenseits des oBDS-Krebsregisterdatensatzes erweitert. 
* Das MTB-Modul nutzt prinzipiell die gleichen Profile wie das Onkologie-Modul, oder erweitert diese in eigenen abgeleiteten Profilen durch weitere Datenelemente.  

### Modul Molekulargenetischer Befundbericht

* Das MTB-Modul erbt von der aktuellen Version des Moduls "Molekulargenetischer Befundbericht". 
* Das Modul Molekulargenetischer Befundbericht v2025.0.0 basiert auf Version STU2 des HL7 International [Genomics Reporting Implementation Guide](https://build.fhir.org/ig/HL7/genomics-reporting/general.html).  
* Dieser wurde mittlerweile in die Version STU3 überarbeitet, u.a. zur besseren Darstellung von genübergreifenden molekularen Biomarkern. 
* In der kommenden Version des Molekulargenetischen Befundsberichts (v2026) ist ein Update auf diese Version STU3 geplant. Die Vorliegende Kommentierung benutzt daher bereits eine Definition von Molekularen Biomarkern aus Genomics Reporting STU3, auch wenn die Varianten weiterhin auf dem MolGen/GenomicsReporting STU2 basieren  
* Langfristig wird sich die HL7-Spezifikation des Genomics Reporting Implementation Guide an den Spezifikationen der Global Alliance for Genomic Health (GA4GH) orientieren, wobei insbesondere die Variation Representation Specification (VRS) zu nennen ist. 

### Modul Pathologie-Befund

* Das Pathologiemodul enthält Vorgaben zur **Strukturierung** eines Pathologieberichts - diese wurden damals mit Blick auf die [IHE-Vormodellierung](https://www.ihe.net/resources/technical_frameworks/#PaLM) APSR entwickelt. 
* In der derzeitigen Version enthält das Pathologiemodul jedoch noch **keine genaueren Vorgaben** zur exakten Darstellung von z.B. Ergebnissen aus der Immunhistochemie (IHC) und In-situ-hybridisierung (ISH).
* Diese sollen daher hier im MTB-Modul mit besonderem Fokus auf onkologisch relevante Beobachtungen getestet und ggfs. langfristig als allgemeingültige Profile ins Pathologie-Modul übergehen.

### Modul Forschungsvorhaben

* Das Modul Forschungsvorhaben stellt Ressourcen insbesondere für die Beschreibung von Studien, Registern, Kohorten und Evidenzvariablen dar. Es wird nicht unmittelbar benötigt, aber da versuchte Studieneinschlüsse ein häufiger Anwendungsfall von MTB-Beschlüssen sind, wird von vornherein eine enge Zusammenarbeit angestrebt. 



