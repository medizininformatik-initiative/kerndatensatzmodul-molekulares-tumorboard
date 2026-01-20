---
parent: 
topic: Evidenzgraduierung (Extension)
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-evidenzgraduierung
---

## Extensions für Therapieempfehlung: Evidenzgraduierung

---

### Inhalt

Diese Extension gibt den Evidenzgrad inkl. optionalem Zusatzverweis an, der vom Molekularen Tumorboard einer Empfehlung zugewiesen wurde.

Dieser Evidenzgrad basiert auf der höchsten Evidenz, die eine Therapie dieser Art bei einer vergleichbaren Patientenkohorte zum MTB-Zeitpunkt zu finden ist. Es ist anzunehmen, dass wirksame Therapien im Laufe der Zeit ein stärkeres Evidenzlevel bekommen. 

@```
from 
    StructureDefinition 
where 
    url.endsWith('mii-ex-mtb-empfehlung-evidenzgraduierung')
select 
    Name: name,
    Status: status,
    Version: version,
    Canonical: url,
    Basis: baseDefinition
```

### Inhalt

<tabs>
  <tab title="Darstellung">{{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-empfehlung-evidenzgraduierung, buttons}}</tab>
  <tab title="Beschreibung"> 
        @```
        from
	        StructureDefinition
        where
	        url.endsWith('mii-ex-mtb-empfehlung-evidenzgraduierung')
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url.endsWith('mii-ex-mtb-empfehlung-evidenzgraduierung') 
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

{{render:mii-cs-mtb-empfehlung-evidenzgrad-nct}}

{{render:mii-cs-mtb-empfehlung-evidenzgrad-zusatzverweis}}
