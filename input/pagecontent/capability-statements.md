<!-- markdownlint-disable MD041 -->
<!-- Source: kerndatensatz-basis input/pagecontent/capability-statements.md.
     German mirror: input/translations/de/pagecontent/capability-statements.md. -->

The CapabilityStatements of the **Molecular Tumor Board** module describe the expected server/client capabilities (supported resources and interactions).

<!-- Migrated from the Simplifier IG (TechnischeImplementierung/CapabilityStatement). TODO:REVIEW machine-translated. -->

To enable decentralized data analysis via the German Research Data Portal for Health (Deutsches Forschungsdatenportal für Gesundheit) of the Medical Informatics Initiative, the [capabilities interaction](https://www.hl7.org/fhir/R4/http.html#capabilities) MUST be supported, so that the FHIR server exposes a CapabilityStatement at `[BASE_URL]/metadata`. Within this CapabilityStatement it MUST be declared which profiles (including version) and which search parameters are supported.

The module's CapabilityStatement lists the content that MUST be declared. In addition, conformance to it MUST be declared in the respective CapabilityStatement instance under [`CapabilityStatement.instantiates`](https://www.hl7.org/fhir/R4/capabilitystatement-definitions.html#CapabilityStatement.instantiates).

Canonical: `https://www.medizininformatik-initiative.de/fhir/modul-mtb/CapabilityStatement/metadata`

- [mii-cps-mtb-capabilitystatement](CapabilityStatement-mii-cps-mtb-capabilitystatement.html)
