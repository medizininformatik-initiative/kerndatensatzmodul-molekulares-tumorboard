---
parent: 
topic: Leitliniendokumentation: Extension
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-leitlinie-dokumentation
---

## Extensions für Behandlungsepisode: Leitliniendokumentation

---

### Inhalt

Diese Erweiterung wird genutzt, um Vortherapien mit dem entsprechenden *Therapielinie* und *Zulassungsstatus* annotieren zu können. 

Die Angabe der Therapielinie erfolgt ganzzahlig. Über den Zulassungsstatus kann eine Medikamentengabe als in-label, off-label oder leitliniengerecht gekennzeichnet werden. 

Es werden in der ersten Version keine Vorgaben gemacht, nach welcher Logik die exakte Bestimmung der Therapielinien zu erfolgen hat (Kontraindikationen, wann Leitlinientherapie ausgereizt ist, etc.). 

Dies erfordert übergreifende Abstimmungen, an die sich die MII mit ihrer Erfahrung gerne beteiligt, die aber sektor- und standortübergreifend einheitlich verstanden werden müssen.     

@```
from 
    StructureDefinition 
where 
    url.endsWith('mii-ex-mtb-leitlinie-dokumentation')  
select 
    Name: name,
    Status: status,
    Version: version,
    Canonical: url,
    Basis: baseDefinition
```

### Inhalt

#### Leitliniendokumentation

<tabs>
  <tab title="Darstellung">{{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/mii-ex-mtb-leitlinie-dokumentation, buttons}}</tab>
  <tab title="Beschreibung"> 
        @```
        from
	        StructureDefinition
        where
	        url.endsWith('mii-ex-mtb-leitlinie-dokumentation') 
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url.endsWith('mii-ex-mtb-leitlinie-dokumentation') 
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

<!--
#### Therapielinie

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

#### Zulassungsstatus

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
-->

{{render:mii-cs-mtb-zulassungsstatus}}