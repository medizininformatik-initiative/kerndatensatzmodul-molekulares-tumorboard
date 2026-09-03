<!-- markdownlint-disable MD041 -->
<!-- Migriert aus dem Simplifier-IG (TechnischeImplementierung/DNPM-Transformation). TODO:REVIEW -->

Diese Seite beschreibt die Transformation von [DNPM DIP](https://dnpm-dip.net/) MTB-Patientenakten in MII KDS-konforme FHIR-Bundles mittels [FHIR StructureMaps](https://www.hl7.org/fhir/R4/structuremap.html) und dem [Matchbox](https://matchbox.health/) FHIR-Server.

- [Logisches Datenmodell (DNPM)](#logisches-datenmodell-dnpm)
- [Mapping-Tabelle: DNPM zu MII FHIR](#mapping-tabelle-dnpm-zu-mii-fhir)
- [StructureMaps (FML)](#structuremaps-fml)
- [Transformation mit Matchbox](#transformation-mit-matchbox)

### Logisches Datenmodell (DNPM)

Das DNPM-Quelldatenmodell bildet die JSON-Struktur der [DNPM DIP MTB API](https://dnpm-dip.net/api/mtb/fake/data/patient-record) als FHIR Logical Model ab.
Quelle: [DAM Datenmodell V2.1 inkl. MVGenomSeq-Anpassungen](https://ibmi-ut.atlassian.net/wiki/spaces/DAM/pages/698777783/Datenmodell+V2.1+-+inkl.+MVGenomSeq-Anpassungen)

### Mapping-Tabelle: DNPM zu MII FHIR

Die folgende Tabelle zeigt die Element-Zuordnung zwischen dem DNPM-Quelldatenmodell und den MII FHIR-Profilen aus verschiedenen MII-Modulen (Person, MTB, Onkologie, Mol.gen Befund, Pathologie).

### StructureMaps (FML)

Die Transformation ist modular in einzelne StructureMaps aufgeteilt:

| StructureMap | Beschreibung |
|---|---|
| `dnpm-to-mii-mtb` | Orchestrator: Ruft alle Sub-Maps auf und erzeugt ein Transaction-Bundle |
| `sm-patient-demographics` | Patient, EpisodeOfCare, FamilyMemberHistory |
| `sm-diagnosis` | Diagnosen, ECOG Performance Status |
| `sm-specimen-histology-ihc-msi` | Proben, Histologie, IHC, MSI |
| `sm-ngs-report` | NGS-Berichte inkl. Varianten, CNV, Fusionen, TMB, HRD |
| `sm-careplan` | MTB-Beschluss, Therapieempfehlungen, Studieneinschluss |
| `sm-guideline-therapy` | Leitlinientherapien und -prozeduren |
| `sm-follow-up` | Follow-Up Dokumentation |
| `sm-systemic-therapy` | Systemische Therapien, Response-Befunde |
| `sm-claims` | Kostenübernahme-Anträge und -Antworten |

Die FML-Dateien liegen unter `input/maps/` im Repository und sind direkt mit Matchbox ausführbar.

#### Beispiel: Patient-Demographie

Die folgende StructureMap zeigt exemplarisch die Transformation von DNPM-Patientendaten zu einem MII KDS-konformen FHIR Patient:

```fml
group MapPatient(source src : BackboneElement, target tgt : Patient) {

  src.id as srcId -> tgt.id = cast(srcId, "id") "patientId";
  src.birthDate as birthDateDt -> tgt.birthDate = cast(birthDateDt, 'date') "birthDate";

  // Profile meta - MII KDS Person Patient
  src -> tgt.meta as m then {
    src -> m.profile = 'https://www.medizininformatik-initiative.de/fhir/core/modul-person/StructureDefinition/Patient' "patientProfile";
  } "patientMeta";

  // Gender: DNPM codes -> FHIR administrative-gender
  src.gender as g where g.code = 'female'  -> tgt.gender = 'female'  "genderFemale";
  src.gender as g where g.code = 'male'    -> tgt.gender = 'male'    "genderMale";
  src.gender as g where g.code = 'other'   -> tgt.gender = 'other'   "genderOther";
  src.gender as g where g.code = 'unknown' -> tgt.gender = 'unknown' "genderUnknown";

  // Vital status
  src.vitalStatus as vs where vs.code = 'deceased' -> tgt.deceased = true  "deceasedTrue";
  src.vitalStatus as vs where vs.code = 'alive'    -> tgt.deceased = false "deceasedFalse";

  // Address: municipalityCode -> AGS extension
  src.address as srcAddr -> tgt.address as tgtAddr then MapAddress(srcAddr, tgtAddr) "address";
}
```

### Transformation mit Matchbox

[Matchbox](https://matchbox.health/) ist ein FHIR-Server basierend auf HAPI FHIR, der StructureMap-basierte Transformationen (`$transform`) unterstuetzt.

#### 1. Matchbox starten

```bash
docker compose -f scripts/docker-compose.matchbox.yaml up -d
```

Der Server ist unter `http://localhost:8080/matchbox/fhir` erreichbar. Die Bereitschaft kann geprueft werden mit:

```bash
curl -sf http://localhost:8080/matchbox/fhir/metadata
```

#### 2. StructureMaps laden

FML-Dateien werden als `text/fhir-mapping` an den StructureMap-Endpoint gesendet. Matchbox kompiliert die FML-Syntax automatisch zu einer StructureMap-Ressource:

```bash
curl -X POST \
  -H "Content-Type: text/fhir-mapping" \
  -H "Accept: application/fhir+json" \
  --data-binary @input/maps/sm-patient-demographics.fml \
  http://localhost:8080/matchbox/fhir/StructureMap
```

#### 3. Transformation ausfuehren

Ein DNPM-Patientendatensatz wird per `$transform` in ein MII-MTB FHIR Bundle transformiert:

```bash
curl -X POST \
  -H "Content-Type: application/fhir+json" \
  -H "Accept: application/fhir+json" \
  -d @dnpm-patient-record.json \
  "http://localhost:8080/matchbox/fhir/StructureMap/\$transform?source=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureMap/dnpm-to-mii-mtb"
```

#### 4. Automatisiert

Das Skript `scripts/fetch-and-transform.sh` fuehrt alle Schritte automatisch aus:
1. DNPM-Testdatensatz von der API abrufen
2. Alle FML-StructureMaps in Matchbox laden
3. Transformation ausfuehren
4. Ergebnis-Bundle in `scripts/output/mii-mtb-bundle.json` speichern

```bash
./scripts/fetch-and-transform.sh
```

Das Ergebnis kann anschliessend mit `scripts/validate-output.sh` gegen die MII-MTB-Profile validiert werden.
