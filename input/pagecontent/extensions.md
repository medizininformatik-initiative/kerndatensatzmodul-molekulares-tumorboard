<!-- markdownlint-disable MD041 -->
<!-- Split from the former combined profiles-and-extensions.md per the TF-KDS-agreed
     menu structure (one page per artifact type).
     German mirror: input/translations/de/pagecontent/extensions.md. -->


### Extensions

This page lists the FHIR extensions defined by the **Molecular Tumor Board** module
(naming convention `MII_EX_<Module>_<Name>`). Extensions carry information the
base resources and profiles cannot express; the profiles that use them are on
the [Profiles](profiles.html) page.

<!-- Migrated from the Simplifier IG (Behandlungsepisode/Extensions: Therapielinie, Zulassungsstatus). TODO:REVIEW machine-translated. -->

The complete list of extensions is generated automatically on the
[artifacts summary](artifacts.html).

### Therapy line (Therapielinie)

This extension concept describes the therapy line of a systemic (drug-based)
(prior) therapy. The therapy line is given as an integer.

<!-- DERIVED:suggestion source=MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Extensions/Therapielinie-Extension.page.md gate=B -->
> **Written during migration - review before release.** TODO:REVIEW — the source guide described an extension
> `mii-ex-mtb-therapielinie`, which is no longer part of this package (the
> concept is carried by the referenced Oncology-module profiles). Confirm and
> either restore the artifact or keep this note.
{: .ig-highlight .ig-highlight-grey}

### Approval status (Zulassungsstatus)

This extension concept describes the approval status of a systemic
(drug-based) (prior) therapy. It allows a medication administration to be
marked as in-label, off-label or guideline-compliant — see
[mii-cs-mtb-zulassungsstatus](CodeSystem-mii-cs-mtb-zulassungsstatus.html).

<!-- DERIVED:suggestion source=MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Extensions/Zulassungsstatus-Extension.page.md gate=B -->
> **Written during migration - review before release.** TODO:REVIEW — the source guide described an extension
> `mii-ex-mtb-zulassungsstatus`, which is no longer part of this package (the
> CodeSystem/ValueSet `mii-cs/vs-mtb-zulassungsstatus` remain). Confirm and
> either restore the artifact or keep this note.
{: .ig-highlight .ig-highlight-grey}
