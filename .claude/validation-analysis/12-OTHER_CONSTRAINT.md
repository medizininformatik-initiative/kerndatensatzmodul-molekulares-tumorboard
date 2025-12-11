# OTHER_CONSTRAINT Errors (13)

**Status:** TODO
**Priority:** 12

## Problem

Various FHIR constraint violations.

## Errors

### 1. qty-3 (Quantity constraint)
```
Constraint failed: qty-3: 'If a code for the unit is present, the system SHALL also be present'
```

**Fix:** Add `system` when `code` is provided:
```fsh
// Wrong:
* valueQuantity.code = #mg

// Correct:
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #mg
```

### 2. grp-1 (Group constraint)
```
Constraint failed: grp-1: 'Can only have members if group is "actual"'
```

**Fix:** Set actual = true when members are present:
```fsh
Instance: SomeGroup
InstanceOf: Group
* actual = true  // Required when members present
* member[+].entity = Reference(...)
```

### 3. org-1 (Organization constraint)
```
Constraint failed: org-1: 'The organization SHALL at least have a name or an identifier'
```

**Fix:** Add name or identifier:
```fsh
Instance: SomeOrganization
InstanceOf: Organization
* name = "Some Hospital"  // or
* identifier.system = "http://example.org"
* identifier.value = "12345"
```

## Files to Fix

Need to search for instances violating these constraints:
- Group instances without `actual = true`
- Organization instances without name/identifier
- Quantity values missing system
