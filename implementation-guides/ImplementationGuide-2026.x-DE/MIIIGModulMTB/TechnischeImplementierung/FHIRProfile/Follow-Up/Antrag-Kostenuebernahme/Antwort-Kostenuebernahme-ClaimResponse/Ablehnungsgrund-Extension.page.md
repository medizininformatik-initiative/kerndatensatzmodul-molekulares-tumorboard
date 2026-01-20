---
parent: 
topic: Ablehnungsgrund: Extension
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-antwort-kostenuebernahme-ablehnungsgrund
---

## Extensions für Antwort Kostenübernahme: Ablehnungsgrund

---

### Inhalt

Diese Erweiterung beschreibt den Grund, weshalb eine Kostenübernahme vom Versicherungsträger abgelehnt wurde.

@```
from 
    StructureDefinition 
where 
    url.endsWith('mii-ex-mtb-antwort-kostenuebernahme-ablehnungsgrund')  
select 
    Name: name,
    Status: status,
    Version: version,
    Canonical: url,
    Basis: baseDefinition
```

### Inhalt

<tabs>
  <tab title="Darstellung">{{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-antwort-kostenuebernahme-ablehnungsgrund, buttons}}</tab>
  <tab title="Beschreibung"> 
        @```
        from
	        StructureDefinition
        where
	        url.endsWith('mii-ex-mtb-antwort-kostenuebernahme-ablehnungsgrund') 
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url.endsWith('mii-ex-mtb-antwort-kostenuebernahme-ablehnungsgrund') 
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

{{render:mii-cs-mtb-antwort-kostenuebernahme-ablehnungsgrund}}