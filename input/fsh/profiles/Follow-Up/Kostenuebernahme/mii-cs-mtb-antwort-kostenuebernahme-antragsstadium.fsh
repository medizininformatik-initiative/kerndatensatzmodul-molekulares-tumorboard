CodeSystem: MII_CS_MTB_Antwort_Kostenuebernahme_Status
Id: mii-cs-mtb-antwort-kostenuebernahme-status
Title: "MII CS Antwort Kostenuebernahme Status"
Description: "Codesystem zum Status der Antwort zur Kostenuebernahme"
* insert CS_Header($mii-cs-mtb-antwort-kostenuebernahme-status)
* #accepted      "Angenommen"                 ""
* #rejected      "Abgelehnt"                  ""
* #unknown       "Unbekannt"                  ""

CodeSystem: MII_CS_MTB_Ablehnung_Kostenuebernahme_Grund
Id: mii-cs-mtb-ablehnung-kostenuebernahme-grund
Title: "MII CS Ablehnung Kostenuebernahme Grund"
Description: "Codesystem zum Grund der Ablehnung der Kostenuebernahme"
* insert CS_Header($mii-cs-mtb-ablehnung-kostenuebernahme-grund)
* #insufficient-evidence               "Nicht ausreichende Evidenz"                                            ""
* #standard-therapy-not-exhausted      "Standardtherapie nicht ausgeschöpft (Neuantrag erforderlich)"          ""
// * #???                                 "Standardtherapie nicht ausgeschöpft (kein Neuantrag erforderlich)"     ""
* #formal-reasons                      "Inhaltliche Gründe"                                                    ""
* #other-therapy-recommended           "Andere Therapie vorgeschlagen"                                         ""
* #inclusion-in-study                  "Studieneinschluss"                                                     ""
* #approval-revocation                 "Rücknahme der Zulassung"                                               ""
* #other                               "Weitere Gründe"                                                        ""
* #unknown                             "Unbekannt"                                                             ""