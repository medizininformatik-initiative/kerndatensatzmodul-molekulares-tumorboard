---
parent: 
topic: Zulassungsstatus: Extension
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-zulassungsstatus
---

## Extensions für Behandlungsepisode: Zulassungsstatus

---

### Inhalt

Diese Erweiterung beschreibt den Zulassungsstatus einer Systemischen (medikamentösen) (Vor-) Therapie. Damit kann eine Medikamentengabe als in-label, off-label oder leitliniengerecht gekennzeichnet werden. 

@```
from 
    StructureDefinition 
where 
    url.endsWith('mii-ex-mtb-zulassungsstatus')  
select 
    Name: name,
    Status: status,
    Version: version,
    Canonical: url,
    Basis: baseDefinition
```

### Inhalt

<tabs>
  <tab title="Darstellung">{{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-zulassungsstatus, buttons}}</tab>
  <tab title="Beschreibung"> 
        @```
        from
	        StructureDefinition
        where
	        url.endsWith('mii-ex-mtb-zulassungsstatus') 
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url.endsWith('mii-ex-mtb-zulassungsstatus') 
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

{{render:mii-cs-mtb-zulassungsstatus}}