<!-- markdownlint-disable MD041 -->
<!-- Migrated from the Simplifier IG (MIIIGModulMTB/Index + BeschreibungModulModul). TODO:REVIEW machine-translated from the German source. -->

### Introduction

This specification describes the FHIR representation of the Core Dataset (CDS)
module **Molecular Tumor Board** of the Medical Informatics Initiative (MII). It
covers the module's use cases and the associated FHIR profiles, extensions and
terminology resources in their normative form. The MII Core Dataset enables the
standardized secondary use of routine clinical data for medical research.

The Molecular Tumor Board (MTB) module is based on the DNPM dataset (Deutsches
Netzwerk für Personalisierte Medizin) and complements the MII CDS module
**Oncology**. Additional data elements — and deliberate omissions — resulted
from discussing the dataset with experts from medicine and bioinformatics, and
findings from other research networks (e.g. nNGM) were integrated.

#### Module description

The module's main elements are the patient's **treatment episode** involving
the Molecular Tumor Board and the **follow-up**.

The treatment episode contains MTB-relevant information on diagnoses, previous
therapies and specimens as well as the bioinformatic data of the NGS report and
the molecular pathology report, which are decisive for the MTB decision
(therapy recommendations etc.). The patient's consent to the MTB, the ECOG
performance status and the family medical history are also part of the
treatment episode. The follow-up covers the documentation of the therapies
actually implemented afterwards and their cost coverage (Kostenübernahme).

A detailed rationale for the modelling and the intention of each profile can be
found on the individual artifact pages. The Molecular Tumor Board module is
explicitly

- complementary to the Oncology module,
- based on the DNPM dataset,
- informed by the findings of other research networks (nNGM).

| Publication |               |
|-------------|---------------|
| Date        | 2026-03-30 |
| Version     | 2026.0.1 (CalVer `YYYY.n.n`) |
| Status      | active        |
| Realm       | DE            |

### Target audience

<div class="ig-highlight ig-highlight-blue">
<h5>Implementers</h5>
<p>Data Integration Centers (DIC), software developers and system architects building FHIR-based solutions.<br/>
→ see <a href="profiles.html">Profiles</a> and <a href="logical-models.html">Logical Models</a>.</p>
</div>

<div class="ig-highlight ig-highlight-green">
<h5>Researchers</h5>
<p>Scientists using KDS data for medical research.<br/>
→ see <a href="researcher-guidance.html">Guidance for Researchers</a>.</p>
</div>

### Contents

- **[Guidance](guidance.html)** — getting started and domain notes.
- **Conformance** — the KDS-wide conformance rules (requirements language,
  Must Support, handling missing data) are maintained centrally by the
  [Meta module](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance);
  the module-specific [Security and Privacy](security-and-privacy.html)
  considerations are part of this guide.
- **[Profiles](profiles.html)** and the further
  **[artifact pages](artifacts.html)** — the technical artifacts.
- **[Examples](examples.html)** — example instances.
- **[Dependencies](ImplementationGuide-mii-kerndatensatzmodul-molekulares-tumorboard.html)** — the
  ImplementationGuide resource with the dependency table, cross-version
  analysis and copyright statements.

### Related guides

This module is part of the MII Core Dataset; the other KDS modules and their
dependencies are described at
[medizininformatik-initiative.de](https://www.medizininformatik-initiative.de/).

This module builds on the MII CDS modules
[Oncology](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie),
[Molecular Genetic Report (MolGen)](https://github.com/medizininformatik-initiative/kerndatensatzmodul-GenetischeTests),
Pathology Report, Study, Medication, Biobank, Consent and the MII base modules
(Person, Diagnosis, Procedure), as well as the HL7
[Genomics Reporting IG](https://hl7.org/fhir/uv/genomics-reporting/); the exact
version pins are listed in the
[ImplementationGuide resource](ImplementationGuide-mii-kerndatensatzmodul-molekulares-tumorboard.html).

More FHIR implementation guides can be found in the official
**[FHIR IG Registry](https://fhir.org/guides/registry/)** (source:
[`FHIR/ig-registry`](https://github.com/FHIR/ig-registry)).

### Imprint

This guide was created within the Medical Informatics Initiative and is subject,
by its governance process, to the coordination procedure of the Interoperability
Forum and the technical committees of HL7 Germany.

### Contact

Questions about this publication can be asked on the HL7 FHIR Zulip
[chat.fhir.org](https://chat.fhir.org) in the `german/mi-initiative` stream, or
on the MII Zulip [mii.zulipchat.com](https://mii.zulipchat.com/) in the
`MII-Kerndatensatz` stream.
Comments and issues are welcome as *Issues* on
[GitHub](https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/issues).

Domain contacts:

- Thomas Debertshäuser, Berlin Institute of Health (Charité)
- Martin Boeker (TUM, DIFUTURE)
- Karoline Buckow, TMF e. V.
- Franziska Klepka, TMF e. V.

### Authors (in alphabetical order)

- Alexander Schulz (UK Erlangen)
- Frederik Voigt (UK Freiburg)
- Jonas Gassenschmidt (UK Freiburg)
- Linda Gräßel (UK Freiburg)
- Marcel Susky (TU Dresden)
- Markus Budeus (TU München)
- Thomas Debertshäuser (Berlin Institute of Health, Charité)

### Copyright and License

© 2024+ TMF e. V., Charlottenstraße 42, 10117 Berlin

The content of this specification is public
([CC0 1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0/));
reuse and republication are not restricted.

For the usage rights of the underlying FHIR technology, see the FHIR base
specification.

Some of the code systems used are published and maintained by other
organizations; the copyright of the respective publishers applies.

### Disclaimer

The content of this document is public. Please note that parts of this
document are based on FHIR version R4, which is copyrighted by
HL7 International.

Although this publication was prepared with the greatest care, the authors
cannot accept any liability for direct or indirect damage that may arise from
the content of this specification.
