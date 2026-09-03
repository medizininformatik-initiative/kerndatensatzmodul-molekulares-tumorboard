<!-- markdownlint-disable MD041 -->
<!-- Source: kerndatensatz-basis input/pagecontent/logical-models.md.
     German mirror: input/translations/de/pagecontent/logical-models.md. -->
### Logical Models

The logical data models of the **Molecular Tumor Board** module describe the domain dataset independently of its concrete FHIR representation.

<!-- Migrated from the Simplifier IG (Datenstzeinkl.Beschreibungen). TODO:REVIEW machine-translated. -->

### Datasets and Descriptions

The dataset is based on the dataset of the
[*German Network for Personalized Medicine (DNPM)*](https://dnpm.de) — see the
References section on the [Guidance](guidance.html) page.

Note that the logical model aims purely at representing the data elements and
their descriptions. The data types and cardinalities used there are not to be
regarded as mandatory; they are conclusively determined by the FHIR profiles.
For every element within the logical model there is a 1:1 mapping onto an
element of a concrete FHIR resource.
