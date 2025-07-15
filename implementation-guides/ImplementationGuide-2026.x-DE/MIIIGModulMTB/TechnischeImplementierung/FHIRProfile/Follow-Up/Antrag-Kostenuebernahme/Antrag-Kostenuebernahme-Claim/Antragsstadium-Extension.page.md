---
parent: 
topic: Antragsstadium: Extension
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-antrag-kostenuebernahme-antragsstadium
---

## Extensions für Antrag Kostenübernahme: Antragsstadium

---

### Inhalt

Diese Erweiterung gibt an, welchem Stadium ein Antrag zur Kostenübernahme an den Versicherungsträger entspricht.

@```
from 
    StructureDefinition 
where 
    url.endsWith('mii-ex-mtb-antrag-kostenuebernahme-antragsstadium')  
select 
    Name: name,
    Status: status,
    Version: version,
    Canonical: url,
    Basis: baseDefinition
```

### Inhalt

<tabs>
  <tab title="Darstellung">{{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-antrag-kostenuebernahme-antragsstadium, buttons}}</tab>
  <tab title="Beschreibung"> 
        @```
        from
	        StructureDefinition
        where
	        url.endsWith('mii-ex-mtb-antrag-kostenuebernahme-antragsstadium') 
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url.endsWith('mii-ex-mtb-antrag-kostenuebernahme-antragsstadium') 
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

{{render:mii-cs-mtb-antrag-kostenuebernahme-antragsstadium}}