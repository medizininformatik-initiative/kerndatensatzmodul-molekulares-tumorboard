| Field | Tier | Source | Value | Contradiction |
| --- | --- | --- | --- | --- |
| packageId | P | package/package.json | de.medizininformatikinitiative.kerndatensatz.mtb |  |
| version | P | package/package.json | 2026.0.1 |  |
| description | P | package/package.json | Medizininformatik Initiative - Modul Molekulares Tumorboard. Version 2026.0.1: Dependency-Updates (Onkologie 2026.0.3, Consent 2026.0.0), QA-Validierungsdoku... |  |
| fhirVersions | P | package/package.json | ["4.0.1"] |  |
| jurisdiction | P | package/package.json | http://unstats.un.org/unsd/methods/m49/m49.htm#276 | YES -- Gate A |
| canonical | P | package/package.json | https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ImplementationGuide/mii-ig-mtb-de | YES -- Gate A |
| title | P | package/package.json | MII IG Molekulares Tumorboard | YES -- Gate A |
| license | P | package/package.json | CC0-1.0 |  |
| homepage | P | package/package.json | https://www.medizininformatik-initiative.de |  |
| dependency:de.basisprofil.r4 | P | package/package.json (source pin) | 1.5.4 |  |
| dependency:de.medizininformatikinitiative.kerndatensatz.base | P | package/package.json (source pin) | 2026.0.0 |  |
| dependency:de.medizininformatikinitiative.kerndatensatz.biobank | P | package/package.json (source pin) | 2026.0.0 |  |
| dependency:de.medizininformatikinitiative.kerndatensatz.consent | P | package/package.json (source pin) | 2026.0.0 |  |
| dependency:de.medizininformatikinitiative.kerndatensatz.medikation | P | package/package.json (source pin) | 2026.0.0 |  |
| dependency:de.medizininformatikinitiative.kerndatensatz.meta | P | package/package.json (source pin) | 2026.0.0 |  |
| dependency:de.medizininformatikinitiative.kerndatensatz.molgen | P | package/package.json (source pin) | 2026.0.4 |  |
| dependency:de.medizininformatikinitiative.kerndatensatz.onkologie | P | package/package.json (source pin) | 2026.0.3 |  |
| dependency:de.medizininformatikinitiative.kerndatensatz.patho | P | package/package.json (source pin) | 2026.0.0 |  |
| dependency:de.medizininformatikinitiative.kerndatensatz.studie | P | package/package.json (source pin) | 2026.0.2 |  |
| dependency:hl7.fhir.uv.genomics-reporting | P | package/package.json (source pin) | 3.0.0 |  |
| id | config | sushi-config.yaml | mii-kerndatensatzmodul-molekulares-tumorboard |  |
| canonical | config | sushi-config.yaml | https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb | YES -- Gate A |
| packageId | config | package.json (absent in sushi-config; matches published registry package) | de.medizininformatikinitiative.kerndatensatz.mtb |  |
| name | config | sushi-config.yaml | MII_IG_MTB_DE |  |
| title | config | sushi-config.yaml (package.json says 'MII IG Molekulares Tumorboard'; sushi-config wins) | MII IG Kerndatensatz-Modul Molekulares Tumorboard | YES -- Gate A |
| version | config | sushi-config.yaml + package.json + registry (CalVer, unchanged pending human target-version decision) | 2026.0.1 |  |
| status | config | sushi-config.yaml | active |  |
| license | config | sushi-config.yaml + package.json (template ships CC-BY-4.0 -> license-align in 5.2) | CC0-1.0 |  |
| publisher | config | sushi-config.yaml | Medizininformatik-Initiative |  |
| jurisdiction | config | sushi-config.yaml | m49#276 | YES -- Gate A |
| copyrightYear | config | sushi-config.yaml | 2024+ |  |
| releaseLabel | config | sushi-config.yaml | release |  |
| fhirVersion | config | sushi-config.yaml | 4.0.1 |  |
