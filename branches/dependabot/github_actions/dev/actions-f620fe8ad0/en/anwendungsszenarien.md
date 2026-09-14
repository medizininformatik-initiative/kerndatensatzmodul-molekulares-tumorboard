# Application Scenarios - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* [**Guidance**](guidance.md)
* **Application Scenarios**

## Application Scenarios

### Disclaimer

The [course of therapy](#course-of-therapy) corresponds to one possible therapy; data and course are constructed for testing purposes, and any similarities with actual disease courses are coincidental.

### Summary

[Patient Kim Musterperson, born 1956-03-14, presented with a diagnosis of peritoneal cancer and was initially assessed surgically (atypical liver segment resection) and by imaging (CT). She then received accompanying maintenance therapy with niraparib.](https://simplifier.net/guide/mii-ig-modul-onkologie-2024-de/MIIIGModulOnkologie/AnwendungsflleInformationsmodell/BeschreibungvonSzenarienfrdieAnwendungderModule.page.md?version=current) Regular CT follow-ups and tumor-board discussions initially showed a stable course, until a local recurrence, increasing ascites and lymph-node metastases manifested. Because of the progression, platinum-based first-line chemotherapy (carboplatin plus pegylated liposomal doxorubicin) was given according to guideline recommendations. After histological confirmation of the malignant cells, a targeted therapy was discussed in the molecular tumor board — over two presentations. The first prioritized recommendation was the switch to mirvetuximab soravtansine, which was implemented after the health insurer's approval.

### Long version

[Patient Kim Musterperson, born 1956-03-14, presented with a diagnosis of peritoneal cancer. In the initial assessment an atypical liver segment resection was performed, and first imaging follow-ups by CT as well as several tumor-board sessions took place to assess the further course of treatment. Initially the patient received accompanying maintenance therapy as a monotherapy with niraparib.](https://simplifier.net/guide/mii-ig-modul-onkologie-2024-de/MIIIGModulOnkologie/AnwendungsflleInformationsmodell/BeschreibungvonSzenarienfrdieAnwendungderModule.page.md?version=current) Over several CT examinations and tumor-board discussions the disease course was initially stable, until signs of a local recurrence, increasing ascites and lymph-node metastases gradually became apparent.

Because of this progression, and in line with the established guidelines, platinum-based first-line chemotherapy was initiated. It comprised a combination of carboplatin and pegylated liposomal doxorubicin, applied in the recurrence setting according to the guideline recommendations. A repeat histological examination of the ascites confirmed malignant cells, which led to further precise therapy planning in a molecular tumor board (MTB).

Within the MTB, the current histological findings and molecular markers were discussed in depth. A first presentation took place, in which — besides tapering the previous therapy — possible further targeted therapy options were outlined. At the second MTB presentation, the results of the molecular diagnostics and possible modular therapy approaches were again discussed in detail. Based on the findings and the prioritized therapy recommendations, the switch to mirvetuximab soravtansine was finally decided as the first option. A corresponding application was submitted to the health insurer and eventually approved, so that the patient now receives this targeted therapy.

### Course of therapy

*  [Guideline-compliant prior therapy and monitoring](#guideline-compliant-prior-therapy-and-monitoring) 
*  
* [Supplementary report](#supplementary-report)
* [Diagnosis](#diagnosis)
 
*  [Molecular tumor board](#molecular-tumor-board) 
*  
* [Treatment episode](#treatment-episode)
* [Presentations](#presentations)
* [Prioritized decisions](#prioritized-decisions)
 

### Guideline-compliant prior therapy and monitoring

The initial diagnostics, therapies and assessments can be found in the patient's course of therapy in the [MII CDS Oncology module](https://simplifier.net/guide/mii-ig-modul-onkologie-2024-de/MIIIGModulOnkologie/AnwendungsflleInformationsmodell/BeschreibungvonSzenarienfrdieAnwendungderModule.page.md?version=current). The course of therapy described below follows on from it seamlessly, in order to describe a complex, coherent case and demonstrate its implementation with the MII CDS modules.

| | | |
| :--- | :--- | :--- |
| 2022-04-20 | CT chest/abdomen | • Status post atypical liver segment resection, no clear evidence of metastasis; adjacent fluid collection, DD postoperative• no ascites• no evidence of local recurrence• no evidence of thoracic metastasis |
| 2022-04-22 | Tumor board | • CT: most likely SD, CA 125 42.3 IU/ml• continue niraparib |
| 2022-07-15 | CT chest/abdomen | • constant adjacent fluid collection after atypical liver segment resection, most likely postoperative• no ascites, no evidence of local recurrence• discrete ground-glass opacity in the left upper lobe of the lung, DD atypical inflammatory, clinical correlation recommended; otherwise no evidence of thoracic metastases |
| 2022-07-18 | Tumor board | • CT: most likely SD, CA 125 45.8 IU/ml• continue niraparib |
| 2022-10-19 | CT chest/abdomen | • regressing fluid collection at the liver margin, status post atypical liver segment resection; otherwise no evidence of liver metastases• no ascites, no evidence of local recurrence• regressing ground-glass infiltrates in the left upper lobe, thus most likely atypical inflammatory; slightly increased mediastinal lymph nodes without contrast enhancement and without pathological enlargement, follow-up recommended |
| 2022-10-24 | Tumor board | • CT: increased mediastinal lymph nodes not clearly suspicious for metastases; CA 125 49.7 IU/ml, thus most likely SD• continue niraparib, short-term follow-up by CT and tumor markers in 2 months |
| 2022-12-19 | CT chest/abdomen | • progressive ascites (approx. 700 ml), peritoneum with increasing, irregular contrast enhancement, suspicious for progression of the known peritoneal carcinomatosis; suspected local recurrence with a contrast-enhancing mass in the lesser pelvis• contrast-affine increase and pathological enlargement of several mediastinal lymph nodes suspicious for lymph-node metastasis |
| 2022-12-27 | Tumor board | • CT: suspected local recurrence, increasing ascites, mediastinal lymph-node metastasis, CA 125 67.2 IU/ml• repeat histological sampling (ascites? thoracic surgery?), then platinum re-induction;[presentation to the MTB](#molecular-tumor-board) |
| 2023-01-02 | Histology (Z 230201/23) | • ascites (20 ml): with malignant tumor cells• diagnosis: cell picture as with malignant tumor cells in ascites; a[supplementary report](#supplementary-report)follows after confirmatory staining |
| 2023-01-04 | Chemotherapy | • C1 carboplatin AUC5 d1, pegylated liposomal doxorubicin 30 mg/m², d1, repeat d28 |
| 2023-02-01 | Chemotherapy | • C2 carboplatin AUC5 d1, pegylated liposomal doxorubicin 30 mg/m², d1, repeat d28 |
| 2023-03-01 | Chemotherapy | • C3 carboplatin AUC5 d1, pegylated liposomal doxorubicin 30 mg/m², d1, repeat d28 |
| 2023-03-20 | CT chest/abdomen | • regressing ascites, decreasing contrast enhancement of the mass in the lesser pelvis suspicious for local recurrence• still faint, but overall regressing contrast enhancement of the numerically increased mediastinal lymph nodes• no new lesion suspicious for metastasis |
| 2023-03-24 | Tumor board | • CT: most likely PR, CA 125 clearly declining (43.7 IU/ml)• complete 6 cycles of platinum |
| 2023-03-29 | Chemotherapy | • C4 carboplatin AUC5 d1, pegylated liposomal doxorubicin 30 mg/m², d1, repeat d28 |
| 2023-04-26 | Chemotherapy | • C5 carboplatin AUC5 d1, pegylated liposomal doxorubicin 30 mg/m², d1, repeat d28 |
| 2023-05-24 | Chemotherapy | • C6 carboplatin AUC5 d1, pegylated liposomal doxorubicin 30 mg/m², d1, repeat d28 |
| 2023-06-15 | CT chest/abdomen | • clearly increasing ascites, local recurrence progressive in size• persistently increased and weakly contrast-affine mediastinal lymph nodes |

#### Supplementary report

The tumor cells are partially positive for CA125, consistently nuclear for Pax 8 and WT1; estrogen-receptor positivity in approx. 70% of the tumor cells, and the progesterone-receptor protein is expressed in approx. 30% of the tumor cells. Strong nuclear overexpression of p53. The tumor cells are furthermore negative for CDX2.

#### Diagnosis

WHO type: serous carcinoma (ICD-O M-8461/3), unknown primary localization, bilateral (ICD-O C80.9) (ICD-10 C80.0)

##### Comment

The findings support the presence of cells of the known high-grade serous ovarian carcinoma in the ascites.

### Molecular tumor board

#### Treatment episode

| | | |
| :--- | :--- | :--- |
| 2023-01-20 | Molecular tumor board | • see[first presentation](#erstvorstellung) |
| 2023-03-10 | - | • health-insurance application submitted for mirvetuximab soravtansine |
| 2023-03-28 | Molecular tumor board | • see[re-presentation](#wiedervorstellung) |
| 2023-05-01 | - | • health-insurance application for mirvetuximab soravtansine approved |
| 2023-06-20 | Tumor board | • PD on CT, CA 125 78.2 IU/ml• insurance application for mirvetuximab approved, switch to MIRV |
| 2023-06-24 | Chemotherapy | • C1 mirvetuximab soravtansine 6 mg/kg body weight, repeat d22 |
| 2023-07-16 | Chemotherapy | • C2 mirvetuximab soravtansine 6 mg/kg body weight, repeat d22 |
| 2023-08-07 | Chemotherapy | • C3 mirvetuximab soravtansine 6 mg/kg body weight, repeat d22 |
| 2023-08-20 | CT chest/abdomen | • no ascites, almost completely regressed local recurrence without contrast enhancement in the lesser pelvis |
| 2023-08-22 | Tumor board | • very good PR, CA 125 within normal limits• continue mirvetuximab soravtansine |
| 2023-08-29 | Chemotherapy | • C4 mirvetuximab soravtansine 6 mg/kg body weight, repeat d22 |
| 2023-09-20 | Chemotherapy | • C5 mirvetuximab soravtansine 6 mg/kg body weight, repeat d22 |
| 2023-10-12 | Chemotherapy | • C6 mirvetuximab soravtansine 6 mg/kg body weight, repeat d22 |
| 2023-10-22 | CT chest/abdomen | • only minor ascites in the lesser pelvis; the formerly contrast-enhancing local recurrence in the lesser pelvis is currently barely measurable• formally still increased, but no longer contrast-enhancing mediastinal lymph nodes |

#### Presentations

##### First presentation

| | |
| :--- | :--- |
| 1. | Reason for presentation:Foreseeable exhaustion of guideline-compliant therapy |
| 2. | The MTB informed-consent discussion of 2023-01-02 is on file. |
| 3. | Perform molecular diagnostics via SOP ovary (incl. IHC for Her2neu, folate receptor alpha, Trop2) from the most recent histology (ascites puncture Z 230201/23) as well as TSO500 panel sequencing incl. HLA status. |
| 4. | Study check (incl. QuickQueck search):Evaluation of CLDN6 (claudin-6) expression and, based on it, of a possible inclusion in the phase 1/2 CLDN6 CAR-T-cell study (cohort 2: ovarian cancer) with CLDN6 RNA-LPX (PI Dr. Desuki, Mainz, or Prof. Ungerechts, Heidelberg, NCT 04503278; first results published under PMID: 37872225).Check inclusion in TEDOVA: OSE2101 (neo-epitope vaccine) +/- pembrolizumab vs. BSC in platinum-sensitive recurrent ovarian cancer (NCT04713514, PI Prof. Schochter, Ulm; platinum-sensitive recurrence (=CR, PR or SD), after at least 4 cycles of platinum in the recurrence, and HLA-A2). |
| 5. | Re-presentation once the findings are in. |

##### Re-presentation

| | |
| :--- | :--- |
| 1. | Her2neu score 2+:With Her2-low in the immunohistochemical examination there is an off-label therapy option with trastuzumab deruxtecan. A phase-III study of trastuzumab deruxtecan vs. physician's-choice chemotherapy in Her2-low breast cancers showed a clearly positive effect on both PFS and OS from treatment with trastuzumab deruxtecan (PMID 35665782, EL m1A).Data from the DESTINY-PanTumor02 study (phase II) were presented at ASCO 2023: a very good ORR of 45% in the ovarian-carcinoma cohort, where per central assessment score-1+ patients had also been included. 57% of patients with HER2-positive endometrial carcinoma responded to therapy with trastuzumab deruxtecan (10.1200/JCO.2023.41.17_suppl.LBA3000, PMID: 37870536, EL m1B). |
| 2. | Based on the high expression of folate receptor alpha (80% of tumor cells) there is a rationale for a therapy attempt with mirvetuximab soravtansine (EL m1A; DOI: 10.1200/JCO.2022.40.16_suppl.5512, Journal of Clinical Oncology 40, no. 16_suppl (June 01, 2022) 5512-5512, and PMID 38055253). |
| 3. | TP53mut (R81X):Detection of a pathogenic TP53 mutation without direct therapeutic relevance. |
| 4. | PIK3R1mut (E160*):According to preclinical data, a response to MEK inhibition is plausible (PMID: 31209687, EL m3). |
| 5. | CCNE1ampl (CN=7):A phase-I study with the first-in-class PKMYT1 inhibitor lunresertib and the ATR inhibitor camonsertib showed first clinical activity with a decent response (OR 23.6%, 2x cPR documented in ovarian carcinoma with CCNE1ampl, https://www.reparerx.com/wp-content/uploads/2023/10/ANE_B156_MYTHIC-clinical_poster.pdf and https://doi.org/10.1158/1535-7163.TARG-23-PR008, EL m1B). Check availability.In addition, with CCNE1ampl there is a rationale for a combination of the WEE1 inhibitor adavosertib +/- carboplatin (PMID: 37236033, EL m1B); check availability, in each case after exhaustion of guideline therapy. |
| 6. | Study check (incl. QuickQueck search):Evaluation of CLDN6 (claudin-6) expression and, based on it, of a possible inclusion in the phase 1/2 CLDN6 CAR-T-cell study (cohort 2: ovarian cancer) with CLDN6 RNA-LPX (PI Dr. Desuki, Mainz, or Prof. Ungerechts, Heidelberg, NCT 04503278; first results published under PMID: 37872225).Check inclusion in TEDOVA: OSE2101 (neo-epitope vaccine) +/- pembrolizumab vs. BSC in platinum-sensitive recurrent ovarian cancer (NCT04713514, PI Prof. Schochter, Ulm; platinum-sensitive recurrence (=CR, PR or SD), after at least 4 cycles of platinum in the recurrence, and HLA-A2). Also note a planned study in CCNE1-amplified ovarian cancer (UKF, PI Prof. Duque, ID pending). |
| 7. | Should one of the above therapy recommendations be applied, imaging follow-up with CT chest/abdomen is recommended before the start of therapy and at intervals of 10-12 weeks; alternatively a one-time MT1-PET/CT before the start of therapy. |
| 8. | The MTB case is herewith[closed](#prioritized-decisions). |

#### Prioritized decisions

| | |
| :--- | :--- |
| 1. | Mirvetuximab soravtansine (m1A) |
| 2. | Check study inclusions, in the following prioritization: |
| 2.1 | Phase 1/2 CLDN6 CAR-T-cell study (cohort 2: ovarian cancer, PI Dr. Desuki, Mainz, or Prof. Ungerechts, Heidelberg). |
| 2.2 | TEDOVA (NCT04713514, PI Prof. Schochter, Ulm; platinum-sensitive recurrence (=CR, PR or SD), after at least 4 cycles of platinum in the recurrence, and HLA-A2) |
| 2.3 | Study in CCNE1-amplified ovarian cancer (UKF, PI Prof. Duque, ID pending) |
| 3. | Trastuzumab deruxtecan (m1B) |
| 4. | Adavosertib +/- carboplatin (m1B) if available |
| 5. | Lunresertib + camonsertib (m1B) if available |
| 6. | MEK inhibitor, e.g. cobimetinib (m3) |

