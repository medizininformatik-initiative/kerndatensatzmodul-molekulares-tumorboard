---
parent: 
expand: 2
---

## Datensätze inkl. Beschreibungen

Der Datensatz basiert auf dem Datensatz des [_Deutschen Netzwerks für Personalisierte Medizin (DNPM)_](https://dnpm.de), siehe [Referenzen](../Referenzen.page.md).

{{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/LogicalModel/mii-lm-mtb}} 

Es ist zu beachten, dass das Logical Model rein auf die Abbildung der Datenelemente und deren Beschreibung abzielt. Verwendete Datentypen und Kardinalitäten sind nicht als verpflichtend anzusehen. Dies wird abschließend durch die FHIR-Profile festgelegt. Für jedes Element innerhalb des Logical Models existiert ein 1:1 Mapping auf ein Element einer konkreten FHIR Ressource.

@```
from StructureDefinition 
where url.endsWith('LogicalModel/mii-lm-mtb')
    for 
        differential.element
    select
        Datensatz: path.replace('mii-lm-mtb.', ''),
        'Erklärung': definition
```
 
