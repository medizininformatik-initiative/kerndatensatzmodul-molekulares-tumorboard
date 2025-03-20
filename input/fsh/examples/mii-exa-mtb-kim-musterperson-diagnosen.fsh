Instance: PatientKimMusterperson
InstanceOf: Patient // or MII Patient, but then I guess I have to import it? 
Usage: #example
* birthDate = 1956-03-14
* name.family = "Musterperson"
* name.given = "Kim"

// 20.04.22 CT T/A: 
// - Z.n. atypischer Lebersegmentresektion, kein eindeutiger Hinweis auf Metastasierung. Flüssigkeitskollektion angrenzend DD postoperativ
// - kein Aszites
// - kein Hinweis auf Lokalrezidiv
// - kein Hinweis auf thorakale Metastasierung
Instance: PatientKimMusterperson-Procedure-1
InstanceOf: MII_PR_Prozedur_Procedure
Usage: #example
Description: "20.04.22 CT T/A"
* status = #completed
* subject = Reference(PatientKimMusterperson)
* code.coding = $OPS#3-20 "Native Computertomographie"
* performedDateTime = 2022-04-20
* bodySite[+] = $SCT#4120138 "Abdomen"
* bodySite[+] = $SCT#37542245 "Thorax"

Instance: PatientKimMusterperson-Observation-1
InstanceOf: Observation
Usage: #example
Description: "..."
* partOf = Reference(PatientKimMusterperson-Procedure-1)
* status = #final
* code.coding = $SCT#128462008 "Metastatic malignant neoplasm (disorder)"
* valueCodeableConcept.coding = $SCT#41647002 "No evidence of (contextual qualifier) (qualifier value)"
* valueCodeableConcept.text = "kein Hinweis auf thorakale Metastasierung"
* bodySite.text = $SCT#181268008

// 19.10.22 CT T/A
// - regrediente Flüssigkeitskollektion am Leberrand, Z.n. atypische Lebersegmentresektion. Darüberhinaus kein Hinweis auf Leberfilialisierung.
// - kein Aszites, kein Hinweis auf Lokalrezidiv
// - regrediente Milchglasinfiltrate im linken Oberlappen, somit a.e. atypisch entzündlich. Leicht vermehrter mediastinaler Lymphknotenbesatz ohne Kontrastmittelaufnahme und ohne pathologische Vergrößerung, Verlaufskontrolle empfohlen
Instance: PatientKimMusterperson-Procedure-2
InstanceOf: MII_PR_Prozedur_Procedure
Usage: #example
Description: "19.10.22 CT T/A"
* status = #completed
* subject = Reference(PatientKimMusterperson)
* code.coding = $OPS#3-20 "Native Computertomographie"
* performedDateTime = 2022-10-22
* bodySite[+] = $SCT#4120138 "Abdomen"
* bodySite[+] = $SCT#37542245 "Thorax" 


// 19.12.22 CT T/A
// - progredienter Aszites (ca. 700ml), Peritonealblatt mit zunehmender, unregelmäßiger KM-Aufnahme, suspekt auf Progress der bekannten Peritonealkarzinose. V.a. Lokalrezidiv bei kontrastmittelaufnehmender Raumforderung im kleinen Becken
// - KM-affine Vermehrung sowie pathologische Vergrößerung mehrerer mediastinaler Lymphknoten suspekt auf lymphonodale Metastasierung
Instance: PatientKimMusterperson-Procedure-3
InstanceOf: MII_PR_Prozedur_Procedure
Usage: #example
Description: "19.12.22 CT T/A"
* status = #completed
* subject = Reference(PatientKimMusterperson)
* code.coding = $OPS#3-20 "Native Computertomographie"
* performedDateTime = 2022-12-19
* bodySite[+] = $SCT#4120138 "Abdomen"
* bodySite[+] = $SCT#37542245 "Thorax"



// 20.03.2023 CT T/A: 
// - regredienter Aszites, rückläufige KM-Aufnahme der lokalrezidivsuspekten Raumforderung im kleinen Becken
// - noch flaue, aber insgesamt regrediente KM-Aufnhame der zahlenmäßig vermehrten LK im Mediastinum
// - keine neue metastasensuspekte Läsion
Instance: PatientKimMusterperson-Procedure-4
InstanceOf: MII_PR_Prozedur_Procedure
Usage: #example
Description: "20.03.2023 CT T/A"
* status = #completed
* subject = Reference(PatientKimMusterperson)
* code.coding = $OPS#3-20 "Native Computertomographie"
* performedDateTime = 2023-03-20
* bodySite[+] = $SCT#4120138 "Abdomen"
* bodySite[+] = $SCT#37542245 "Thorax"


// 20.08.2023 CT T/A: 
// - kein Aszites, fast vollständig regredientes Lokalrezidiv ohne KM-Aufnahme im kleinen Becken
// - formal noch vermehrte, jedoch nicht mehr KM-aufnehmende mediastinale Lymphknoten
Instance: PatientKimMusterperson-Procedure-5
InstanceOf: MII_PR_Prozedur_Procedure
Usage: #example
Description: "20.08.2023 CT T/A"
* status = #completed
* subject = Reference(PatientKimMusterperson)
* code.coding = $OPS#3-20 "Native Computertomographie"
* performedDateTime = 2023-08-20
* bodySite[+] = $SCT#4120138 "Abdomen"
* bodySite[+] = $SCT#37542245 "Thorax"


// 22.10.2023 CT T/A
// - lediglich geringer Aszites im kleinen Becken, vormals KM-aufnehmendes Lokalrezidiv im kleinen Becken aktuell metrisch nur noch schwer fassbar
// - formal noch vermehrte, jedoch nicht mehr KM-aufnehmende mediastinale Lymphknoten
Instance: PatientKimMusterperson-Procedure-6
InstanceOf: MII_PR_Prozedur_Procedure
Usage: #example
Description: "22.10.2023 CT T/A"
* status = #completed
* subject = Reference(PatientKimMusterperson)
* code.coding = $OPS#3-20 "Native Computertomographie"
* performedDateTime = 2023-10-22
* bodySite[+] = $SCT#4120138 "Abdomen"
* bodySite[+] = $SCT#37542245 "Thorax"