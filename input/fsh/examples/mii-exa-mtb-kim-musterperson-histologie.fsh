// 02.01.2023 Histologie (Z 230201/23): 
// - Aszites (20ml): mit malignen Tumorzellen 
// - Diagnose: Hier Zellbild wie bei malignen Tumorzellen im Aszites, über eine affirmative Färbung folgt ebenfalls ein Nachbericht.
// Nachbericht:
// - Die Tumorzellen sind partiell positiv für CA125, durchgehend nukleär für Pax 8 und WT1, Östrogenrezeptorpositivität in ca. 70 % der Tumorzellen und das Progesteronrezeptorprotein wird in ca. 30 % der Tumorzellen exprimiert. Kräftige nukleäre Überexpression von p53. Zudem sind die Tumorzellen negativ für CDX2.
// - Diagnose: WHO-Typ: Seröses Karzinom (ICD-O M-8461/3) Unbekannte Primärlokalisation beidseits (ICD-O-C80.9) (ICD-10-C80.0)
// Kommentar: die Befunde sprechen für das Vorkommen von Zellen des bekannten high-grade serösen Ovarialkarzinoms im Aszites.

// 1. Her2neu Score 2+: Bei Her2low in der immunhistochemischen Untersuchung besteht eine off-label Therapieoption mit Trastuzumab Deruxtecan. In einer Phase-III-Studie Trastuzumab Deruxtecan vs. Physicians choice Chemotherapyie bei Her2low Mamma-Cas zeigte sich ein deutlich positiver Effekt sowohl auf PFS als auch auf OS durch die Behandlung mit Trastuzumab deruxtecan (PMID 35665782, EL m1A). Daten aus der DESTINY-PanTumor02-Studie (Phase II), wurden auf dem ASCO2023 präsentiert: hier zeigt sich eine sehr gute ORR von 45% in der Kohorte für Ovarialkarzinome, wobei gemäß zentralem Assessment auch Score1+-Patient*innen eingeschlossen worden waren . 57% vom Patientinnen mit HER2-pos Endometrium Karzinom haben auf die Therapie mit Trastuzumab- Deruxtecan angesprochen (10.1200/JCO.2023.41.17_suppl.LBA3000, PMID: 37870536, EL m1B).

// 2. Auf Grundlage der hohen Expression von Folat Rezeptor alpha (80% d. Tumorzellen) besteht die Rationale für einen Therapieversuch mit Mirvetuximab Soravtansine (EL m1A; DOI: 10.1200/JCO.2022.40.16_suppl.5512 Journal of Clinical Oncology 40, no. 16_suppl (June 01, 2022) 5512-5512 und PMID 38055253).

// 3. TP53mut (R81X): Nachweis einer pathogenen TP53-Mutation ohne direkte therapeutische Relevanz. 

// 4. PIK3R1mut (E160*): ausweislich präklinischer Daten liegt ein Ansprechen auf MEK-Inhibition nahe (PMID: 31209687, EL m3).

Instance: PatientKimMusterperson-Specimen-1
InstanceOf: MII_PR_Patho_Specimen
Usage: #example
Description: "02.01.2023 Histologie (Z 230201/23)"
* identifier.value = "Z 230201/23"
* accessionIdentifier.value = "Z 230201/23"
* status = http://hl7.org/fhir/specimen-status#available
* type.coding[sct] = $SCT#309201001 "Ascitic fluid specimen"
* subject = Reference(PatientKimMusterperson)
* collection.collectedDateTime = 2023-01-02
* collection.quantity.value = 20
* collection.quantity.unit = "mL"
* collection.quantity.system = "http://unitsofmeasure.org"
* collection.quantity.code = #mL
* collection.method = $SCT#178012008
