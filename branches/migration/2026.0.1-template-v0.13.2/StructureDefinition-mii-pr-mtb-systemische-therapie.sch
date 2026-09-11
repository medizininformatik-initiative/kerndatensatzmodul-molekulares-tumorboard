<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile MII_PR_Onko_Systemische_Therapie
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Procedure</sch:title>
    <sch:rule context="f:Procedure">
      <sch:assert test="count(f:extension[@url = 'http://fhir.de/StructureDefinition/ProzedurDokumentationsdatum']) &lt;= 1">extension with URL = 'http://fhir.de/StructureDefinition/ProzedurDokumentationsdatum': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht']) &lt;= 1">extension with URL = 'https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-systemische-therapie-intention']) &lt;= 1">extension with URL = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-systemische-therapie-intention': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/procedure-causedBy']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/procedure-causedBy': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:basedOn) &lt;= 1">basedOn: maximum cardinality of 'basedOn' is 1</sch:assert>
      <sch:assert test="count(f:note) &lt;= 1">note: maximum cardinality of 'note' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Procedure/f:statusReason</sch:title>
    <sch:rule context="f:Procedure/f:statusReason">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:coding) &gt;= 1">coding: minimum cardinality of 'coding' is 1</sch:assert>
      <sch:assert test="count(f:coding) &lt;= 1">coding: maximum cardinality of 'coding' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Procedure/f:statusReason/f:coding</sch:title>
    <sch:rule context="f:Procedure/f:statusReason/f:coding">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &lt;= 1">version: maximum cardinality of 'version' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &lt;= 1">code: maximum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:display) &lt;= 1">display: maximum cardinality of 'display' is 1</sch:assert>
      <sch:assert test="count(f:userSelected) &lt;= 1">userSelected: maximum cardinality of 'userSelected' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Procedure/f:code/f:coding</sch:title>
    <sch:rule context="f:Procedure/f:code/f:coding">
      <sch:assert test="count(f:extension[@url = 'http://fhir.de/StructureDefinition/seitenlokalisation']) &lt;= 1">extension with URL = 'http://fhir.de/StructureDefinition/seitenlokalisation': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:version) &gt;= 1">version: minimum cardinality of 'version' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
