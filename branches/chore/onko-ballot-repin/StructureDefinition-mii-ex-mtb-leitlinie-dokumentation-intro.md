<!-- Migrated from the Simplifier IG (source(s): MIIIGModulMTB/TechnischeImplementierung/FHIRProfile/Behandlungsepisode/Extensions/Leitliniendokumentation-Extension.page.md). TODO:REVIEW machine-translated from the German source. -->
### Content

This extension is used to annotate prior therapies with the corresponding *therapy line* and *approval status*. 

The therapy line is specified as an integer. Via the approval status, a medication administration can be marked as in-label, off-label, or guideline-compliant. 

In the first version, no requirements are made regarding the logic by which the exact determination of the therapy lines is to be performed (contraindications, when guideline therapy has been exhausted, etc.). 

This requires overarching coordination, in which the MII is happy to participate with its experience, but which must be understood uniformly across sectors and sites.     

#### Guideline documentation

<!--
#### Approval status

-->

[mii-cs-mtb-zulassungsstatus](CodeSystem-mii-cs-mtb-zulassungsstatus.html)
