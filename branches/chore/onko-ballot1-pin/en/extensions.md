# Extensions - MII IG Kerndatensatz-Modul Molekulares Tumorboard v2026.0.1

* [**Table of Contents**](toc.md)
* **Extensions**

## Extensions

### Extensions

This page lists the FHIR extensions defined by the **Molecular Tumor Board** module (naming convention `MII_EX_<Module>_<Name>`). Extensions carry information the base resources and profiles cannot express; the profiles that use them are on the [Profiles](profiles.md) page.

The complete list of extensions is generated automatically on the [artifacts summary](artifacts.md).

### Therapy line (Therapielinie)

This extension concept describes the therapy line of a systemic (drug-based) (prior) therapy. The therapy line is given as an integer.

> **Written during migration - review before release.** TODO:REVIEW — the source guide described an extension `mii-ex-mtb-therapielinie`, which is no longer part of this package (the concept is carried by the referenced Oncology-module profiles). Confirm and either restore the artifact or keep this note.

### Approval status (Zulassungsstatus)

This extension concept describes the approval status of a systemic (drug-based) (prior) therapy. It allows a medication administration to be marked as in-label, off-label or guideline-compliant — see [mii-cs-mtb-zulassungsstatus](CodeSystem-mii-cs-mtb-zulassungsstatus.md).

> **Written during migration - review before release.** TODO:REVIEW — the source guide described an extension `mii-ex-mtb-zulassungsstatus`, which is no longer part of this package (the CodeSystem/ValueSet `mii-cs/vs-mtb-zulassungsstatus` remain). Confirm and either restore the artifact or keep this note.

