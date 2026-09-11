# Guidance - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* **Guidance**

## Guidance

This section collects the domain guidance for implementing and using the **Molecular Tumor Board** module.

### General Implementation Guidance

* **[Datasets and Descriptions](logical-models.md)** — the module's data elements, described as logical models. (This entry shares its target with **Artifacts → Logical Models**; neither Artifacts-Summary anchor is usable as a link target — see [`docs/page-structure.md`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/blob/main/docs/page-structure.md) in this repository.)
* **[UML Diagrams](uml-diagrams.md)** — visual representation of the data models and their relationships.
* **[Application Scenarios](anwendungsszenarien.md)** — worked scenarios for applying the module's profiles.
* **[DNPM Transformation](dnpm-transformation.md)** — the mapping and transformation pipeline between the DNPM dataset and the MII MTB profiles.

### Audience-Specific Guidance

* **[Guidance for Researchers](researcher-guidance.md)** — for researchers using the module's data.
* **[Guidance for Implementers](implementer-guidance.md)** — technical guidance for DIC implementers.

### Context within the Overall Project / Relations to Other Modules

The Core Dataset of the Medical Informatics Initiative now comprises a large number of CDS modules. An interplay of the modules at individual sites is intended and desired, but cannot be presupposed because of locally differing systems and resources. Note also that all modules of the MII CDS are under continuous further development.

Mandatory for using this module are:

* the MII base modules, above all Procedure, Medication and Diagnosis,
* the Oncology module,
* the Molecular Genetic Report (MolGen) module.

#### Oncology module

* In its first version (2025) the Oncology module models the clinical data of the oBDS (basic oncology dataset).
* It thereby covers the structured representation of "regular" guideline-compliant therapies.
* Future versions will extend the module with further data points beyond the oBDS cancer-registry dataset.
* The MTB module in principle uses the same profiles as the Oncology module, or extends them with additional data elements in derived profiles of its own.

#### Molecular Genetic Report module

* The MTB module inherits from the current version of the Molecular Genetic Report module.
* MolGen v2025.0.0 is based on version STU2 of the HL7 International [Genomics Reporting Implementation Guide](https://build.fhir.org/ig/HL7/genomics-reporting/general.html).
* That guide has meanwhile been revised to STU3, among other things for a better representation of gene-spanning molecular biomarkers.
* The upcoming MolGen version (v2026) plans an update to STU3. This specification therefore already uses a definition of molecular biomarkers from Genomics Reporting STU3, while the variants still build on MolGen/Genomics Reporting STU2.
* In the long term the HL7 Genomics Reporting IG will align with the specifications of the Global Alliance for Genomics and Health (GA4GH), in particular the Variation Representation Specification (VRS).

#### Pathology Report module

* The Pathology module specifies the **structure** of a pathology report, developed with a view to the [IHE pre-modelling](https://www.ihe.net/resources/technical_frameworks/#PaLM) APSR.
* In its current version, however, the Pathology module does **not** yet make detailed specifications for the exact representation of e.g. results from immunohistochemistry (IHC) and in-situ hybridization (ISH).
* These are therefore tested here in the MTB module with a particular focus on oncologically relevant observations, and may in the long term move into the Pathology module as generally applicable profiles.

#### Study (research project) module

* The Study module provides resources in particular for describing studies, registries, cohorts and evidence variables. It is not immediately required, but since attempted study enrolments are a frequent use case of MTB decisions, close collaboration is sought from the outset.

### References

The CDS module **Molecular Tumor Board** is largely based on the data model of the **German Network for Personalized Medicine (DNPM)**, which incorporates the requirements of the [Modellvorhaben Genomsequenzierung (MV GenomSeq)](https://www.bfarm.de/DE/Das-BfArM/Aufgaben/Modellvorhaben-Genomsequenzierung/_node.html) per [§ 64e SGB V](https://www.sozialgesetzbuch-sgb.de/sgbv/64e.html). The content is publicly available:

* DNPM website with all relevant data fields, descriptions and answer options: 
* [DNPM data model v2.0](https://ibmi-ut.atlassian.net/wiki/spaces/DAM/pages/2589011/Datenmodell+V2.0)
* [DNPM data model v2.0 **with MV GenomSeq adjustments**](https://ibmi-ut.atlassian.net/wiki/spaces/DAM/pages/525336578/Datenmodell+V2.0+-+MVGenomSeq-Anpassungen)
 

Furthermore, the current version of the [HL7 Clinical Genomics Reporting Guide](https://build.fhir.org/ig/HL7/genomics-reporting/), which already served as the template for the Molecular Genetic Report, has now also been used as the basis for representing molecular biomarkers and molecular-pathology markers.

-------

For the KDS-wide conformance requirements see the [Conformance rules of the Meta module](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance); for the technical artifacts see [Profiles](profiles.md).

