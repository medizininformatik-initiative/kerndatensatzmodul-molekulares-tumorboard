---
parent: 
topic: Therapielinie: Extension
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-therapielinie
---

## Extensions für Behandlungsepisode: Therapielinie

---

### Inhalt

Diese Erweiterung beschreibt die Therapielinie einer Systemischen (medikamentösen) (Vor-) Therapie. Die Angabe der Therapielinie erfolgt ganzzahlig.

@```
from 
    StructureDefinition 
where 
    url.endsWith('mii-ex-mtb-therapielinie')  
select 
    Name: name,
    Status: status,
    Version: version,
    Canonical: url,
    Basis: baseDefinition
```

### Inhalt

<tabs>
  <tab title="Darstellung">{{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-therapielinie, buttons}}</tab>
  <tab title="Beschreibung"> 
        @```
        from
	        StructureDefinition
        where
	        url.endsWith('mii-ex-mtb-therapielinie') 
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url.endsWith('mii-ex-mtb-therapielinie') 
        for 
            differential.element 
            where 
                mustSupport = true 
            select
                Feldname: id,
                Kurzbeschreibung: short,
                Hinweise: comment
        ```
  </tab>
  <tab title="XML">{{xml}}</tab>
  <tab title="JSON">{{json}}</tab>
  <tab title="Link">{{link}}</tab>
</tabs>

---