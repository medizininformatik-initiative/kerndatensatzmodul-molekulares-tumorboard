# WRONG_DISPLAY Errors (170)

**Status:** TODO
**Priority:** 2

## Problem

Display names in coded elements don't match official terminology server values.

## Sample Errors

```
Wrong Display Name 'Gene studied' for http://loinc.org#48018-6. Valid display is 'Gene studied [ID]' (en)
Wrong Display Name 'ERBB2' for http://www.genenames.org/geneId#HGNC:2064. Valid display is 'CLIC3' (en)
Wrong Display Name 'Her2low' for http://loinc.org#LA6576-8. Valid display is 'Positive' (en)
```

## Categories of Wrong Displays

### 1. LOINC Display Mismatches
- `48018-6`: "Gene studied" should be "Gene studied [ID]"
- `LA6576-8`: "Her2low" should be "Positive"
- Various other LOINC codes

### 2. HGNC Gene Names
- `HGNC:2064`: "ERBB2" should be "CLIC3" (likely wrong HGNC code used)
- Other gene name mismatches

### 3. Other CodeSystems
- SNOMED CT displays
- ICD-O displays

## Affected Files

Need to search for all files containing these codes:
- `input/fsh/examples/*.fsh`
- `input/fsh/profiles/*.fsh` (if hardcoded displays)

## Fix Strategy

1. **For LOINC codes:** Update display to match official LOINC display
2. **For HGNC codes:** Verify correct HGNC code is being used, or update display
3. **For custom displays:** Consider if these are intentional (e.g., "Her2low" as a custom concept)

## Notes

- Some "wrong displays" may be intentional for clinical clarity
- May need to use userSelected = false or add translations
- Consider adding advisor.json suppressions for intentional deviations
