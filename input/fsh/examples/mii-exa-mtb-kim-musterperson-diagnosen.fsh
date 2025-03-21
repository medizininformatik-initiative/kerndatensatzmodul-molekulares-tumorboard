Instance: PatientKimMusterperson
InstanceOf: Patient // or MII Patient, but then I guess I have to import it? 
Usage: #example
* birthDate = 1956-03-14
* name.family = "Musterperson"
* name.given = "Kim"

// 20.04.22 CT T/A: 
// - [x] Z.n. atypischer Lebersegmentresektion, kein eindeutiger Hinweis auf Metastasierung. Flüssigkeitskollektion angrenzend DD postoperativ
// - [x] kein Aszites
// - [x] kein Hinweis auf Lokalrezidiv
// - [x] kein Hinweis auf thorakale Metastasierung
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
Description: "kein Hinweis auf thorakale Metastasierung"
* partOf = Reference(PatientKimMusterperson-Procedure-1)
* status = #final
* code.coding = $SCT#128462008 "Metastatic malignant neoplasm (disorder)"
* valueCodeableConcept.coding = $SCT#41647002 "No evidence of (contextual qualifier) (qualifier value)"
* valueCodeableConcept.text = "kein Hinweis auf thorakale Metastasierung"

Instance: PatientKimMusterperson-Observation-2
InstanceOf: Observation
Usage: #example
Description: "kein Hinweis auf Lokalrezidiv"
* partOf = Reference(PatientKimMusterperson-Procedure-1)
* status = #final
* code.coding = $SCT#255227004 "Recurrent"
* valueCodeableConcept.coding = $SCT#41647002 "No evidence of (contextual qualifier) (qualifier value)"
* valueCodeableConcept.text = "kein Hinweis auf Lokalrezidiv"

Instance: PatientKimMusterperson-Observation-3
InstanceOf: Observation
Usage: #example
Description: "kein Aszites"
* partOf = Reference(PatientKimMusterperson-Procedure-1)
* status = #final
* code.coding = $SCT#389026000 "Acites"
* valueCodeableConcept.coding = $SCT#860638000 "No ascites"
* valueCodeableConcept.text = "kein Aszites"

Instance: PatientKimMusterperson-Observation-4
InstanceOf: Observation
Usage: #example
Description: "Z.n. atypischer Lebersegmentresektion, kein eindeutiger Hinweis auf Metastasierung. Flüssigkeitskollektion angrenzend DD postoperativ"
* partOf = Reference(PatientKimMusterperson-Procedure-1)
* status = #final
* code.coding[+] = $SCT#237679004 "Status post (contextual qualifier) (qualifier value)"
* code.coding[+] = $SCT#112231000 "Atypical (qualifier value) "
* code.coding[+] = $SCT#174430004 "Resection of segment of liver (procedure)"
* valueCodeableConcept.coding[+] = $SCT#801911000000107 "Collection of fluid"
* valueCodeableConcept.coding[+] = $SCT#262061000 "After surgery"
* valueCodeableConcept.text = "Flüssigkeitskollektion angrenzend DD postoperativ"
* bodySite = $SCT#181247007 "Entire duodenum"

// 15.07.22 CT T/A: 
// - [x] konstante Flüssigkeitskollektion angrenzend bei Z.n. atpyischer Lebersegmentresktion, a.e. postoperativ
// - [x] kein Aszites, kein Hinweis auf Lokalrezidiv
// - [x] im linken Oberlappen der Lunge diskrete milchglasartige Trübung DD atypisch entzündlich, klinische Korrelation empfohlen, darüber hinaus kein Hinweis auf thorakale Filiae
Instance: PatientKimMusterperson-Procedure-2
InstanceOf: MII_PR_Prozedur_Procedure
Usage: #example
Description: "15.07.22 CT T/A"
* status = #completed
* subject = Reference(PatientKimMusterperson)
* code.coding = $OPS#3-20 "Native Computertomographie"
* performedDateTime = 2022-07-15
* bodySite[+] = $SCT#4120138 "Abdomen"
* bodySite[+] = $SCT#37542245 "Thorax" 

Instance: PatientKimMusterperson-Observation-5
InstanceOf: Observation
Usage: #example
Description: "konstante Flüssigkeitskollektion angrenzend bei Z.n. atpyischer Lebersegmentresktion, a.e. postoperativ"
* partOf = Reference(PatientKimMusterperson-Procedure-2)
* status = #final
* code.coding[+] = $SCT#237679004 "Status post (contextual qualifier) (qualifier value)"
* code.coding[+] = $SCT#112231000 "Atypical (qualifier value) "
* code.coding[+] = $SCT#174430004 "Resection of segment of liver (procedure)"
* valueCodeableConcept.coding[+] = $SCT#420341009 "Constant"
* valueCodeableConcept.coding[+] = $SCT#801911000000107 "Collection of fluid"
* valueCodeableConcept.text = "konstante Flüssigkeitskollektion angrenzend"
* bodySite = $SCT#181247007 "Entire duodenum"

Instance: PatientKimMusterperson-Observation-6
InstanceOf: Observation
Usage: #example
Description: "kein Aszites"
* partOf = Reference(PatientKimMusterperson-Procedure-2)
* status = #final
* code.coding = $SCT#389026000 "Acites"
* valueCodeableConcept.coding = $SCT#860638000 "No ascites"
* valueCodeableConcept.text = "kein Aszites"

Instance: PatientKimMusterperson-Observation-7
InstanceOf: Observation
Usage: #example
Description: "kein Hinweis auf Lokalrezidiv"
* partOf = Reference(PatientKimMusterperson-Procedure-2)
* status = #final
* code.coding = $SCT#255227004 "Recurrent"
* valueCodeableConcept.coding = $SCT#41647002 "No evidence of (contextual qualifier) (qualifier value)"
* valueCodeableConcept.text = "kein Hinweis auf Lokalrezidiv"

Instance: PatientKimMusterperson-Observation-8
InstanceOf: Observation
Usage: #example
Description: "im linken Oberlappen der Lunge diskrete milchglasartige Trübung DD atypisch entzündlich, klinische Korrelation empfohlen, darüber hinaus kein Hinweis auf thorakale Filiae"
* partOf = Reference(PatientKimMusterperson-Procedure-2)
* status = #final
* code.coding[+] = $SCT#112231000 "Atypical"
* code.coding[+] = $SCT#1217294009 "Ground glass opacity"
* code.coding[+] = $SCT#44714003 "Structure of upper lobe of left lung"
* code.text = "im linken Oberlappen der Lunge diskrete milchglasartige Trübung"
* valueCodeableConcept.coding = $SCT#41647002 "No evidence of (contextual qualifier) (qualifier value)"
* valueCodeableConcept.coding[+] = $SCT#255058005 "Neoplasm of thorax"
* valueCodeableConcept.text = "kein Hinweis auf thorakale Filiae"

// 19.10.22 CT T/A
// - [x] regrediente Flüssigkeitskollektion am Leberrand, Z.n. atypische Lebersegmentresektion. Darüberhinaus kein Hinweis auf Leberfilialisierung.
// - [x] kein Aszites, kein Hinweis auf Lokalrezidiv
// - [x] regrediente Milchglasinfiltrate im linken Oberlappen, somit a.e. atypisch entzündlich. Leicht vermehrter mediastinaler Lymphknotenbesatz ohne Kontrastmittelaufnahme und ohne pathologische Vergrößerung, Verlaufskontrolle empfohlen
Instance: PatientKimMusterperson-Procedure-3
InstanceOf: MII_PR_Prozedur_Procedure
Usage: #example
Description: "19.10.22 CT T/A"
* status = #completed
* subject = Reference(PatientKimMusterperson)
* code.coding = $OPS#3-20 "Native Computertomographie"
* performedDateTime = 2022-10-22
* bodySite[+] = $SCT#4120138 "Abdomen"
* bodySite[+] = $SCT#37542245 "Thorax" 

Instance: PatientKimMusterperson-Observation-9
InstanceOf: Observation
Usage: #example
Description: "regrediente Flüssigkeitskollektion am Leberrand, Z.n. atypische Lebersegmentresektion. Darüberhinaus kein Hinweis auf Leberfilialisierung."
* partOf = Reference(PatientKimMusterperson-Procedure-3)
* status = #final
* code.coding[+] = $SCT#237679004 "Status post (contextual qualifier) (qualifier value)"
* code.coding[+] = $SCT#112231000 "Atypical (qualifier value) "
* code.coding[+] = $SCT#174430004 "Resection of segment of liver (procedure)"
* valueCodeableConcept.coding[+] = $SCT#801911000000107 "Collection of fluid"
* valueCodeableConcept.coding[+] = $SCT#249567002 "Liver edge (finding)"
* valueCodeableConcept.text = "regrediente Flüssigkeitskollektion am Leberrand"
* bodySite = $SCT#181268008 "Entire liver"

Instance: PatientKimMusterperson-Observation-10
InstanceOf: Observation
Usage: #example
Description: "regrediente Flüssigkeitskollektion am Leberrand, Z.n. atypische Lebersegmentresektion. Darüberhinaus kein Hinweis auf Leberfilialisierung."
* partOf = Reference(PatientKimMusterperson-Procedure-3)
* status = #final
* code.coding[+] = $SCT#237679004 "Status post (contextual qualifier) (qualifier value)"
* code.coding[+] = $SCT#112231000 "Atypical (qualifier value) "
* code.coding[+] = $SCT#174430004 "Resection of segment of liver (procedure)"
* valueCodeableConcept.coding[+] = $SCT#94381002 "Metastatic malignant neoplasm to liver (disorder)"
* valueCodeableConcept.coding[+] = $SCT#41647002 "No evidence of (contextual qualifier) (qualifier value)"
* valueCodeableConcept.text = "Darüberhinaus kein Hinweis auf Leberfilialisierung."
* bodySite = $SCT#181268008 "Entire liver"

Instance: PatientKimMusterperson-Observation-11
InstanceOf: Observation
Usage: #example
Description: "kein Aszites"
* partOf = Reference(PatientKimMusterperson-Procedure-3)
* status = #final
* code.coding = $SCT#389026000 "Acites"
* valueCodeableConcept.coding = $SCT#860638000 "No ascites"
* valueCodeableConcept.text = "kein Aszites"

Instance: PatientKimMusterperson-Observation-12
InstanceOf: Observation
Usage: #example
Description: "kein Hinweis auf Lokalrezidiv"
* partOf = Reference(PatientKimMusterperson-Procedure-3)
* status = #final
* code.coding = $SCT#255227004 "Recurrent"
* valueCodeableConcept.coding = $SCT#41647002 "No evidence of (contextual qualifier) (qualifier value)"
* valueCodeableConcept.text = "kein Hinweis auf Lokalrezidiv"

Instance: PatientKimMusterperson-Observation-13
InstanceOf: Observation
Usage: #example
Description: "regrediente Milchglasinfiltrate im linken Oberlappen, somit a.e. atypisch entzündlich. Leicht vermehrter mediastinaler Lymphknotenbesatz ohne Kontrastmittelaufnahme und ohne pathologische Vergrößerung, Verlaufskontrolle empfohlen"
* partOf = Reference(PatientKimMusterperson-Procedure-3)
* status = #final
* code.coding[+] = $SCT#255227004 "Recurrent"
* code.coding[+] = $SCT#1217294009 "Ground glass opacity"
* code.coding[+] = $SCT#44714003 "Structure of upper lobe of left lung"
* code.text = "regrediente Milchglasinfiltrate im linken Oberlappen"
* valueCodeableConcept.coding[+] = $SCT#112231000 "Atypical"
* valueCodeableConcept.coding[+] = $SCT#257552002 "Inflammation"
* valueCodeableConcept.text = "a.e. atypisch entzündlich"


Instance: PatientKimMusterperson-Observation-13
InstanceOf: Observation
Usage: #example
Description: "regrediente Milchglasinfiltrate im linken Oberlappen, somit a.e. atypisch entzündlich. Leicht vermehrter mediastinaler Lymphknotenbesatz ohne Kontrastmittelaufnahme und ohne pathologische Vergrößerung, Verlaufskontrolle empfohlen"
* partOf = Reference(PatientKimMusterperson-Procedure-3)
* status = #final
* code.coding = $SCT#245276004 "Mediastinal lymph node group"
* code.text = "mediastinaler Lymphknoten"
* valueCodeableConcept.coding[+] = $SCT#258283002 "Lymphomatous nodal involvement"
* valueCodeableConcept.coding[+] = $SCT#385420005 "Contrast media"
* valueCodeableConcept.coding[+] = $SCT#151174005 "Drug intake observed"
* valueCodeableConcept.coding[+] = $SCT#373067005 "No"
* valueCodeableConcept.text = "vermehrter mediastinaler Lymphknotenbesatz ohne Kontrastmittelaufnahme"

Instance: PatientKimMusterperson-Observation-13
InstanceOf: Observation
Usage: #example
Description: "regrediente Milchglasinfiltrate im linken Oberlappen, somit a.e. atypisch entzündlich. Leicht vermehrter mediastinaler Lymphknotenbesatz ohne Kontrastmittelaufnahme und ohne pathologische Vergrößerung, Verlaufskontrolle empfohlen"
* partOf = Reference(PatientKimMusterperson-Procedure-3)
* status = #final
* code.coding = $SCT#245276004 "Mediastinal lymph node group"
* code.text = "mediastinaler Lymphknoten"
* valueCodeableConcept.coding[+] = $SCT#373067005 "No"
* valueCodeableConcept.coding[+] = $SCT#15454001 "Increased Size"
* valueCodeableConcept.text = "ohne pathologische Vergrößerung"

// 19.12.22 CT T/A
// - progredienter Aszites (ca. 700ml), Peritonealblatt mit zunehmender, unregelmäßiger KM-Aufnahme, suspekt auf Progress der bekannten Peritonealkarzinose. V.a. Lokalrezidiv bei kontrastmittelaufnehmender Raumforderung im kleinen Becken
// - KM-affine Vermehrung sowie pathologische Vergrößerung mehrerer mediastinaler Lymphknoten suspekt auf lymphonodale Metastasierung
Instance: PatientKimMusterperson-Procedure-4
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
Instance: PatientKimMusterperson-Procedure-5
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
Instance: PatientKimMusterperson-Procedure-6
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
Instance: PatientKimMusterperson-Procedure-7
InstanceOf: MII_PR_Prozedur_Procedure
Usage: #example
Description: "22.10.2023 CT T/A"
* status = #completed
* subject = Reference(PatientKimMusterperson)
* code.coding = $OPS#3-20 "Native Computertomographie"
* performedDateTime = 2023-10-22
* bodySite[+] = $SCT#4120138 "Abdomen"
* bodySite[+] = $SCT#37542245 "Thorax"