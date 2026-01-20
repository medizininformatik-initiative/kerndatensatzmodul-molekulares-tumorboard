# Analyze Validation Results

**Purpose:** Analyze validation.json and compare against baseline to track progress.

## Your Task

Run the validation analysis script to categorize errors and compare with baseline.

### Step 1: Check for validation.json
- Verify `validation.json` exists in repository root
- If missing, offer to download from latest CI run using:
  ```bash
  gh run list --limit 1 --json databaseId --jq '.[0].databaseId' | xargs -I {} gh run download {} -n validation-output
  ```

### Step 2: Run Analysis Script

**Simple analysis (current only):**
```bash
python3 .claude/scripts/analyze_validation.py validation.json
```

**Comparison with baseline:**
```bash
python3 .claude/scripts/analyze_validation.py validation.json .validation-history/baseline-ce16ebf.json
```

**Comparison with previous CI run:**
```bash
# Find most recent validation in history
PREV=$(ls -t .validation-history/*.json | head -2 | tail -1)
python3 .claude/scripts/analyze_validation.py validation.json "$PREV"
```

### What the Script Does

The enhanced script:
1. **Categorizes errors** using patterns from validation-analysis docs:
   - UUID_INVALID, WRONG_DISPLAY, SLICING_DISCRIMINATOR
   - REQUIRED_FIELD, UNKNOWN_CODE, VALUESET_INVALID
   - EXTENSION_NOT_ALLOWED, MULTI_SLICE_MATCH, etc.

2. **Compares versions** when baseline provided:
   - Shows category-level changes (✅ FIXED, ⬇️ BETTER, ⬆️ WORSE)
   - Identifies specific errors fixed/added
   - Calculates net progress

3. **Groups by file** to identify most affected resources

4. **Filters expected errors** (LA codes, language validation)

### Output Format

The script outputs a formatted table showing:
- Total error count and change
- Per-category breakdown with comparison
- Top 15 affected files
- Sample fixed/new errors

### Step 3: Interpret Results

After running the script, provide user with:
1. **Progress summary** - net change in error count
2. **Category highlights** - which categories improved/worsened
3. **Action recommendations** - which errors to tackle next

### Step 4: Update Baseline (Optional)

If current validation represents new baseline:
```bash
cp validation.json .validation-history/baseline-$(git rev-parse --short HEAD).json
```

## Notes

- **Baseline:** `.validation-history/baseline-ce16ebf.json` (1006 errors from commit ce16ebf)
- **Dynamic tool:** This analyzes any validation.json on-demand
- **Static docs:** `.claude/validation-analysis/*.md` document error patterns and fixes
- **CI integration:** Use `/commit-push-track-evaluate` for full workflow with automatic analysis
