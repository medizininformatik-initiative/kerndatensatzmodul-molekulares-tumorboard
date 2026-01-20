---
parent: 
topic: Leitlinienbehandlung Status: Extension
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-leitlinienbehandlung-status
---

## Extensions für Behandlungsepisode: Leitlinienbehandlung Status

---

### Inhalt

Dieses Erweiterung beschreibt den Status der Leitlinienbehandlung. Es handelt sich dabei um eine von den MTB-Ärzt*innen vorgenommene Einordnung der Ausschöpfung der zutreffenden Leitlinien, die teils fast oder vollständig ausgeschöpft sind, teils nicht angewendet werden können und teils.

Die Ausschöpfung der Therapien ist bspw. ein Kriterium zum Einschluss ins Modellvorhaben Genomsequenzierung nach SGB V §64e.

@```
from 
    StructureDefinition 
where 
    url.endsWith('mii-ex-mtb-leitlinienbehandlung-status')  
select 
    Name: name,
    Status: status,
    Version: version,
    Canonical: url,
    Basis: baseDefinition
```

### Inhalt

<tabs>
  <tab title="Darstellung">{{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-leitlinienbehandlung-status, buttons}}</tab>
  <tab title="Beschreibung"> 
        @```
        from
	        StructureDefinition
        where
	        url.endsWith('mii-ex-mtb-leitlinienbehandlung-status') 
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url.endsWith('mii-ex-mtb-leitlinienbehandlung-status') 
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

{{render:mii-cs-mtb-leitlinienbehandlung-status}}