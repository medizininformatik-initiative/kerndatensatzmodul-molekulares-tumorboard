#!/bin/bash
# Fix broken Simplifier resolve links in MII MTB IG export
# Package: de.medizininformatikinitiative.kerndatensatz.mtb
# Canonical: https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb

set -e
echo "Fixing MII MTB IG export links..."
echo ""

# =============================================================================
# Step 1: Fix FHIR R4 Core links (filepath pattern)
# =============================================================================
echo "1. Fixing FHIR R4 Core links..."

# StructureDefinition links
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.fhir.r4.core@4.0.1&filepath=package/StructureDefinition-\([^.#"]*\)\.json[^"]*|https://hl7.org/fhir/R4/\1.html|g' *.html
sed -i '' 's|/resolve?scope=package:hl7.fhir.r4.core@4.0.1&amp;filepath=package/StructureDefinition-\([^.]*\)\.json|https://hl7.org/fhir/R4/\1.html|g' *.html

# ValueSet links
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.fhir.r4.core@4.0.1&filepath=package/ValueSet-\([^.#"]*\)\.json[^"]*|https://hl7.org/fhir/R4/valueset-\1.html|g' *.html

# CodeSystem links
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.fhir.r4.core@4.0.1&filepath=package/CodeSystem-\([^.#"]*\)\.json[^"]*|https://hl7.org/fhir/R4/codesystem-\1.html|g' *.html

# With &amp; encoding
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.fhir.r4.core@4.0.1&amp;filepath=package/StructureDefinition-\([^.#"]*\)\.json[^"]*|https://hl7.org/fhir/R4/\1.html|g' *.html
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.fhir.r4.core@4.0.1&amp;filepath=package/ValueSet-\([^.#"]*\)\.json[^"]*|https://hl7.org/fhir/R4/valueset-\1.html|g' *.html
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.fhir.r4.core@4.0.1&amp;filepath=package/CodeSystem-\([^.#"]*\)\.json[^"]*|https://hl7.org/fhir/R4/codesystem-\1.html|g' *.html

# =============================================================================
# Step 2: Fix HL7 Terminology (THO) links
# =============================================================================
echo "2. Fixing HL7 Terminology (THO) links..."

# CodeSystem links to THO
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.terminology.r4@[^&]*&filepath=package/CodeSystem-\([^.#"]*\)\.json[^"]*|https://terminology.hl7.org/CodeSystem-\1.html|g' *.html
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.terminology.r4@[^&]*&amp;filepath=package/CodeSystem-\([^.#"]*\)\.json[^"]*|https://terminology.hl7.org/CodeSystem-\1.html|g' *.html

# ValueSet links to THO
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.terminology.r4@[^&]*&filepath=package/ValueSet-\([^.#"]*\)\.json[^"]*|https://terminology.hl7.org/ValueSet-\1.html|g' *.html
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.terminology.r4@[^&]*&amp;filepath=package/ValueSet-\([^.#"]*\)\.json[^"]*|https://terminology.hl7.org/ValueSet-\1.html|g' *.html

# NamingSystem links to THO
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.terminology.r4@[^&]*&filepath=package/NamingSystem-\([^.#"]*\)\.json[^"]*|https://terminology.hl7.org/NamingSystem-\1.html|g' *.html

# =============================================================================
# Step 2b: Fix HL7 Genomics Reporting STU3 links
# =============================================================================
echo "2b. Fixing HL7 Genomics Reporting STU3 links..."

# StructureDefinition links
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.fhir.uv.genomics-reporting@3.0.0&filepath=package/StructureDefinition-\([^.#"]*\)\.json[^"]*|https://hl7.org/fhir/uv/genomics-reporting/STU3/StructureDefinition-\1.html|g' *.html
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.fhir.uv.genomics-reporting@3.0.0&amp;filepath=package/StructureDefinition-\([^.#"]*\)\.json[^"]*|https://hl7.org/fhir/uv/genomics-reporting/STU3/StructureDefinition-\1.html|g' *.html

# ValueSet links
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.fhir.uv.genomics-reporting@3.0.0&filepath=package/ValueSet-\([^.#"]*\)\.json[^"]*|https://hl7.org/fhir/uv/genomics-reporting/STU3/ValueSet-\1.html|g' *.html
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.fhir.uv.genomics-reporting@3.0.0&amp;filepath=package/ValueSet-\([^.#"]*\)\.json[^"]*|https://hl7.org/fhir/uv/genomics-reporting/STU3/ValueSet-\1.html|g' *.html

# CodeSystem links
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.fhir.uv.genomics-reporting@3.0.0&filepath=package/CodeSystem-\([^.#"]*\)\.json[^"]*|https://hl7.org/fhir/uv/genomics-reporting/STU3/CodeSystem-\1.html|g' *.html
sed -i '' 's|https://simplifier.net/resolve?scope=package:hl7.fhir.uv.genomics-reporting@3.0.0&amp;filepath=package/CodeSystem-\([^.#"]*\)\.json[^"]*|https://hl7.org/fhir/uv/genomics-reporting/STU3/CodeSystem-\1.html|g' *.html

# =============================================================================
# Step 3: Fix German base profile links (de.basisprofil.r4)
# =============================================================================
echo "3. Fixing German base profile links..."

sed -i '' 's|https://simplifier.net/resolve?scope=package:de.basisprofil.r4@[^&]*&filepath=package/StructureDefinition-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.basisprofil.r4/1.5.4/files/package/StructureDefinition-\1.json|g' *.html
sed -i '' 's|https://simplifier.net/resolve?scope=package:de.basisprofil.r4@[^&]*&filepath=package/ValueSet-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.basisprofil.r4/1.5.4/files/package/ValueSet-\1.json|g' *.html
sed -i '' 's|https://simplifier.net/resolve?scope=package:de.basisprofil.r4@[^&]*&filepath=package/CodeSystem-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.basisprofil.r4/1.5.4/files/package/CodeSystem-\1.json|g' *.html
sed -i '' 's|https://simplifier.net/resolve?scope=package:de.basisprofil.r4@[^&]*&filepath=package/Extension-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.basisprofil.r4/1.5.4/files/package/Extension-\1.json|g' *.html

# =============================================================================
# Step 4: Fix MII Base module links (kerndatensatz.base)
# =============================================================================
echo "4. Fixing MII Base module links..."

sed -i '' 's|https://simplifier.net/resolve?scope=package:de.medizininformatikinitiative.kerndatensatz.base@[^&]*&filepath=package/StructureDefinition-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.base/2026.0.0/files/package/StructureDefinition-\1.json|g' *.html
sed -i '' 's|https://simplifier.net/resolve?scope=package:de.medizininformatikinitiative.kerndatensatz.base@[^&]*&filepath=package/ValueSet-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.base/2026.0.0/files/package/ValueSet-\1.json|g' *.html
sed -i '' 's|https://simplifier.net/resolve?scope=package:de.medizininformatikinitiative.kerndatensatz.base@[^&]*&filepath=package/CodeSystem-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.base/2026.0.0/files/package/CodeSystem-\1.json|g' *.html

# =============================================================================
# Step 5: Fix MII Medikation module links
# =============================================================================
echo "5. Fixing MII Medikation module links..."

sed -i '' 's|https://simplifier.net/resolve?scope=package:de.medizininformatikinitiative.kerndatensatz.medikation@[^&]*&filepath=package/StructureDefinition-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.medikation/2026.0.0/files/package/StructureDefinition-\1.json|g' *.html
sed -i '' 's|https://simplifier.net/resolve?scope=package:de.medizininformatikinitiative.kerndatensatz.medikation@[^&]*&filepath=package/ValueSet-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.medikation/2026.0.0/files/package/ValueSet-\1.json|g' *.html

# =============================================================================
# Step 6: Fix MII MolGen module links
# =============================================================================
echo "6. Fixing MII MolGen module links..."

sed -i '' 's|https://simplifier.net/resolve?scope=package:de.medizininformatikinitiative.kerndatensatz.molgen@[^&]*&filepath=package/StructureDefinition-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.molgen/2026.0.4/files/package/StructureDefinition-\1.json|g' *.html

# =============================================================================
# Step 7: Fix MII Onkologie module links
# =============================================================================
echo "7. Fixing MII Onkologie module links..."

sed -i '' 's|https://simplifier.net/resolve?scope=package:de.medizininformatikinitiative.kerndatensatz.onkologie@[^&]*&filepath=package/StructureDefinition-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.onkologie/2026.0.0/files/package/StructureDefinition-\1.json|g' *.html

# =============================================================================
# Step 8: Fix MII Patho module links
# =============================================================================
echo "8. Fixing MII Patho module links..."

sed -i '' 's|https://simplifier.net/resolve?scope=package:de.medizininformatikinitiative.kerndatensatz.patho@[^&]*&filepath=package/StructureDefinition-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.patho/2026.0.0/files/package/StructureDefinition-\1.json|g' *.html

# =============================================================================
# Step 9: Fix MII Studie module links
# =============================================================================
echo "9. Fixing MII Studie module links..."

sed -i '' 's|https://simplifier.net/resolve?scope=package:de.medizininformatikinitiative.kerndatensatz.studie@[^&]*&filepath=package/StructureDefinition-\([^.#"]*\)\.json[^"]*|https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.studie/2026.0.1/files/package/StructureDefinition-\1.json|g' *.html

# =============================================================================
# Step 10: Fix FHIR R4 base StructureDefinition links (canonical box basis column)
# =============================================================================
echo "10. Fixing FHIR R4 base StructureDefinition links (canonical box)..."

# Single-quoted href with regular & (canonical box FQL table)
sed -i '' "s|'/resolve?&scope=package:de.medizininformatikinitiative.kerndatensatz.mtb@[^&]*&canonical=http://hl7.org/fhir/StructureDefinition/\([^']*\)'|'https://hl7.org/fhir/R4/\1.html'|g" *.html

# Double-quoted href with &amp; (HTML entity)
sed -i '' "s|/resolve?&amp;scope=package:de.medizininformatikinitiative.kerndatensatz.mtb@[^&]*&amp;canonical=http://hl7.org/fhir/StructureDefinition/\([^\"]*\)|https://hl7.org/fhir/R4/\1.html|g" *.html

# Also fix FHIR ValueSet canonical references
sed -i '' "s|'/resolve?&scope=package:de.medizininformatikinitiative.kerndatensatz.mtb@[^&]*&canonical=http://hl7.org/fhir/ValueSet/\([^']*\)'|'https://hl7.org/fhir/R4/valueset-\1.html'|g" *.html
sed -i '' "s|/resolve?&amp;scope=package:de.medizininformatikinitiative.kerndatensatz.mtb@[^&]*&amp;canonical=http://hl7.org/fhir/ValueSet/\([^\"]*\)|https://hl7.org/fhir/R4/valueset-\1.html|g" *.html

# =============================================================================
# Step 11: Fix MII MTB profile canonical links (canonical box)
# =============================================================================
echo "11. Fixing MII MTB profile canonical links..."

# Convert relative /resolve? to https://simplifier.net/resolve? with fhirVersion
# Single-quoted href with regular &
sed -i '' "s|'/resolve?&scope=package:de.medizininformatikinitiative.kerndatensatz.mtb@\([^&]*\)&canonical=\(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/[^']*\)'|'https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.mtb@\1\&canonical=\2\&fhirVersion=R4'|g" *.html

# Double-quoted href with &amp;
sed -i '' "s|/resolve?&amp;scope=package:de.medizininformatikinitiative.kerndatensatz.mtb@\([^&]*\)&amp;canonical=\(https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/[^\"]*\)|https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.mtb@\1\&amp;canonical=\2\&amp;fhirVersion=R4|g" *.html

# =============================================================================
# Step 12: Fix MII Core module canonical links (now in kerndatensatz.base)
# =============================================================================
echo "12. Fixing MII Core module canonical links..."

# MII Diagnose -> kerndatensatz.base package (Diagnose is now part of base)
# Single-quoted href
sed -i '' "s|'/resolve?&scope=package:de.medizininformatikinitiative.kerndatensatz.mtb@[^&]*&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose'|'https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.base/2026.0.0/files/package/StructureDefinition-mii-pr-diagnose-condition.json'|g" *.html
# Double-quoted href with &amp;
sed -i '' "s|/resolve?&amp;scope=package:de.medizininformatikinitiative.kerndatensatz.mtb@[^&]*&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose|https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.base/2026.0.0/files/package/StructureDefinition-mii-pr-diagnose-condition.json|g" *.html

# MII Prozedur -> kerndatensatz.base package (Prozedur is now part of base)
sed -i '' "s|'/resolve?&scope=package:de.medizininformatikinitiative.kerndatensatz.mtb@[^&]*&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure'|'https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.base/2026.0.0/files/package/StructureDefinition-mii-pr-prozedur-procedure.json'|g" *.html
sed -i '' "s|/resolve?&amp;scope=package:de.medizininformatikinitiative.kerndatensatz.mtb@[^&]*&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure|https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.base/2026.0.0/files/package/StructureDefinition-mii-pr-prozedur-procedure.json|g" *.html

# MII Medikation -> kerndatensatz.medikation package (separate package)
sed -i '' "s|'/resolve?&scope=package:de.medizininformatikinitiative.kerndatensatz.mtb@[^&]*&canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement'|'https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.medikation/2026.0.0/files/package/StructureDefinition-mii-pr-medikation-medication-statement.json'|g" *.html
sed -i '' "s|/resolve?&amp;scope=package:de.medizininformatikinitiative.kerndatensatz.mtb@[^&]*&amp;canonical=https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement|https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.medikation/2026.0.0/files/package/StructureDefinition-mii-pr-medikation-medication-statement.json|g" *.html

# MII MolGen (ext module) -> kerndatensatz.molgen package
# Variante
sed -i '' "s|'/resolve?&scope=package:de.medizininformatikinitiative.kerndatensatz.mtb@[^&]*&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/variante'|'https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.molgen/2026.0.4/files/package/StructureDefinition-mii-pr-molgen-variante.json'|g" *.html
sed -i '' "s|/resolve?&amp;scope=package:de.medizininformatikinitiative.kerndatensatz.mtb@[^&]*&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/variante|https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.molgen/2026.0.4/files/package/StructureDefinition-mii-pr-molgen-variante.json|g" *.html

# Therapeutische Implikation
sed -i '' "s|'/resolve?&scope=package:de.medizininformatikinitiative.kerndatensatz.mtb@[^&]*&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/therapeutische-implikation'|'https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.molgen/2026.0.4/files/package/StructureDefinition-mii-pr-molgen-therapeutische-implikation.json'|g" *.html
sed -i '' "s|/resolve?&amp;scope=package:de.medizininformatikinitiative.kerndatensatz.mtb@[^&]*&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/therapeutische-implikation|https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.molgen/2026.0.4/files/package/StructureDefinition-mii-pr-molgen-therapeutische-implikation.json|g" *.html

# Diagnostische Implikation
sed -i '' "s|'/resolve?&scope=package:de.medizininformatikinitiative.kerndatensatz.mtb@[^&]*&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/diagnostische-implikation'|'https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.molgen/2026.0.4/files/package/StructureDefinition-mii-pr-molgen-diagnostische-implikation.json'|g" *.html
sed -i '' "s|/resolve?&amp;scope=package:de.medizininformatikinitiative.kerndatensatz.mtb@[^&]*&amp;canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/diagnostische-implikation|https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.molgen/2026.0.4/files/package/StructureDefinition-mii-pr-molgen-diagnostische-implikation.json|g" *.html

# =============================================================================
# Step 13: Fix internal ValueSet references -> Simplifier resolve (with scope)
# =============================================================================
echo "13. Fixing internal ValueSet references..."

# Generic pattern: artifacts/package/ValueSet-mii-vs-mtb-*.json -> Simplifier resolve with scope
sed -i '' 's|artifacts/package/ValueSet-\(mii-vs-mtb-[^.#"]*\)\.json\([^"]*\)|https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.mtb@2026.0.0\&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/\1\&fhirVersion=R4|g' *.html

# Also fix artifacts/fsh-generated/resources/ path variant
sed -i '' 's|artifacts/fsh-generated/resources/ValueSet-\(mii-vs-mtb-[^.#"]*\)\.json\([^"]*\)|https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.mtb@2026.0.0\&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/ValueSet/\1\&fhirVersion=R4|g' *.html

# =============================================================================
# Step 14: Fix internal CodeSystem references -> Simplifier resolve (with scope)
# =============================================================================
echo "14. Fixing internal CodeSystem references..."

# Generic pattern: artifacts/package/CodeSystem-mii-cs-mtb-*.json -> Simplifier resolve with scope
sed -i '' 's|artifacts/package/CodeSystem-\(mii-cs-mtb-[^.#"]*\)\.json\([^"]*\)|https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.mtb@2026.0.0\&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/\1\&fhirVersion=R4|g' *.html

# Also fix artifacts/fsh-generated/resources/ path variant
sed -i '' 's|artifacts/fsh-generated/resources/CodeSystem-\(mii-cs-mtb-[^.#"]*\)\.json\([^"]*\)|https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.mtb@2026.0.0\&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/CodeSystem/\1\&fhirVersion=R4|g' *.html

# =============================================================================
# Step 15: Fix internal Extension references -> Simplifier resolve (with scope)
# =============================================================================
echo "15. Fixing internal Extension references..."

# Generic pattern: artifacts/package/StructureDefinition-mii-ex-mtb-*.json -> Simplifier resolve with scope
sed -i '' 's|artifacts/package/StructureDefinition-\(mii-ex-mtb-[^.#"]*\)\.json\([^"]*\)|https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.mtb@2026.0.0\&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/\1\&fhirVersion=R4|g' *.html

# Also fix artifacts/fsh-generated/resources/ path variant
sed -i '' 's|artifacts/fsh-generated/resources/StructureDefinition-\(mii-ex-mtb-[^.#"]*\)\.json\([^"]*\)|https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.mtb@2026.0.0\&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/\1\&fhirVersion=R4|g' *.html

# =============================================================================
# Step 16: Fix internal Profile references -> Simplifier resolve (generic)
# =============================================================================
echo "16. Fixing internal Profile references..."

# Generic fallback for all mii-pr-mtb-* profiles
sed -i '' 's|artifacts/package/StructureDefinition-\(mii-pr-mtb-[^.#"]*\)\.json|https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.mtb@2026.0.0\&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/\1\&fhirVersion=R4|g' *.html

# Also fix artifacts/fsh-generated/resources/ path variant
sed -i '' 's|artifacts/fsh-generated/resources/StructureDefinition-\(mii-pr-mtb-[^.#"]*\)\.json|https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.mtb@2026.0.0\&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/StructureDefinition/\1\&fhirVersion=R4|g' *.html

# =============================================================================
# Step 17: Fix NamingSystem references
# =============================================================================
echo "17. Fixing internal NamingSystem references..."

# Generic pattern for MTB NamingSystems
sed -i '' 's|artifacts/package/NamingSystem-\(mii-ns-[^.#"]*\)\.json\([^"]*\)|https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.mtb@2026.0.0\&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-mtb/NamingSystem/\1\&fhirVersion=R4|g' *.html

# =============================================================================
# Done
# =============================================================================
echo ""
echo "✅ All links fixed!"
echo ""
echo "Next steps:"
echo "1. Open the IG locally in a browser"
echo "2. Click through profile pages to verify links work"
echo "3. Check that Simplifier resolve links redirect correctly"
echo "4. Verify external links (FHIR core, terminology, genomics-reporting) work"
