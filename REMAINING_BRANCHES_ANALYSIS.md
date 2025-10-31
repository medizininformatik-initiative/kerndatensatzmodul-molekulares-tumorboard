# Remaining Branches Analysis
**Generated:** 2025-10-31
**After consolidating:** `release/2026-rchange-dependencies-and-integrate-comments` → `dev`

## Summary

After analyzing all branches with unmerged commits, **RECOMMENDATION: No further merges needed**.

All remaining branches contain either:
- Outdated work that has been superseded by dev
- Auto-generated files
- Extensive IG documentation that has been updated in a different way in dev

---

## Detailed Analysis

### 🟡 logical-model-adaptions (15 commits)

**Status**: OUTDATED - Do not merge

**Analysis:**
- Contains 15 commits, mostly IG documentation and auto-generated files
- Key commit `2f95fb4` adds `mii-cs-mtb-response-befund-beurteilungsmethode.fsh`
- However, dev has since split this into TWO separate files:
  - `mii-cs-mtb-beurteilungsmethode.fsh` (method - RECIST/RANO)
  - `mii-cs-mtb-response-befund-beurteilung.fsh` (evaluation - PD/SD/PR/CR)
- Also adds HRD score search parameters (commit `851cc57`)

**Differences:**
- Extensive IG documentation files (100+ files different)
- Many are just older versions of what's now in dev
- IG structure has evolved differently in dev

**Recommendation**:
- ❌ **Do NOT merge** - outdated approach
- ✅ If HRD score search parameters are missing, cherry-pick only `851cc57`
- Everything else has been done better in dev

---

### 🟡 sprint-09/profile-ngs-bericht (9 commits)

**Status**: LIKELY OUTDATED - Needs review

**What it contains:**
- 9 commits ahead of dev
- NGS profile refinements
- BRCAness, HRD-Score constraints
- Commit: `393d32a` - Constrained value for BRCAness, HRD-Score and Biomarker

**Recommendation**:
- 🔍 **Review commit `393d32a`** to see if these constraints are useful
- If constraints are good, cherry-pick that commit
- Otherwise skip - profiles have evolved in dev

**Check command:**
```bash
git show 393d32a
```

---

### 🟢 ImplementationGuide-AdaptImplicitConventions (2 commits)

**Status**: SAFE TO MERGE - Documentation improvement

**What it contains:**
- `31fc73a` - Unifies IG file system structures
- `9cf2a4a` - add FHIR IG files

**Files changed**: IG structure files only

**Recommendation**:
- ✅ **Safe to merge** if you want unified IG structure
- ⚠️ But check if it conflicts with current IG organization in dev

---

### 🟢 feature/extensive-sample-patient (3 commits)

**Status**: MINOR - Can merge if useful

**What it contains:**
- `0d8f38d` - Added references.pu
- `ce00080` - Merge
- `096eb9b` - Changed Reference

**Recommendation**:
- ✅ **Merge if you want the reference diagram** (references.pu)
- Low risk

---

### 🟢 ihc (1 commit)

**Status**: TRIVIAL - Can cherry-pick

**What it contains:**
- `554f2c6` - added comment

**Recommendation**:
- ✅ **Cherry-pick if comment is useful**
- Check with: `git show 554f2c6`

---

### 🟢 workshop-ngs-examples (1 commit)

**Status**: SKIP - Auto-generated

**What it contains:**
- `5e2e78b` - auto-generated FHIR files

**Recommendation**:
- ❌ **Skip** - just run SUSHI to regenerate

---

## Action Items

### Option A: Conservative (Recommended)
Do nothing more - dev is in good shape with all critical work consolidated.

### Option B: Selective cherry-picks
If you want specific features:

1. **HRD score search parameters** (if not in dev):
   ```bash
   git cherry-pick 851cc57
   ```

2. **BRCAness/HRD-Score constraints** (if useful):
   ```bash
   git show 393d32a  # Review first
   git cherry-pick 393d32a  # If good
   ```

3. **IG structure unification** (if desired):
   ```bash
   git merge origin/ImplementationGuide-AdaptImplicitConventions
   ```

4. **References diagram**:
   ```bash
   git cherry-pick 0d8f38d
   ```

### Option C: Branch cleanup
Delete stale remote branches after confirming nothing is needed:

```bash
# After confirming with team
git push origin --delete logical-model-adaptions
git push origin --delete sprint-09/profile-ngs-bericht
git push origin --delete ihc
git push origin --delete workshop-ngs-examples
```

---

## Verification Checklist

Before deleting any branches, verify:

- [ ] HRD score search parameters exist in capability statement
- [ ] BRCAness/HRD-Score profiles have appropriate constraints
- [ ] IG documentation is complete and up-to-date
- [ ] All team members aware of branch cleanup plan

---

## Summary Table

| Branch | Commits | Status | Action |
|--------|---------|--------|--------|
| release/2026-r... | 2 | ✅ MERGED | Completed 2025-10-31 |
| logical-model-adaptions | 15 | ❌ OUTDATED | Skip (maybe cherry-pick 851cc57) |
| sprint-09/profile-ngs-bericht | 9 | ⚠️ REVIEW | Check commit 393d32a |
| ImplementationGuide-Adapt... | 2 | ✅ SAFE | Optional merge for IG structure |
| feature/extensive-sample... | 3 | ✅ MINOR | Optional for references.pu |
| ihc | 1 | ✅ TRIVIAL | Optional cherry-pick |
| workshop-ngs-examples | 1 | ❌ SKIP | Auto-generated files |

---

## Recommendation

**✅ Current dev branch is in excellent shape.**

The most critical work (HDB-533 from release branch) has been consolidated. Remaining branches contain either outdated work or minor enhancements that aren't critical.

Unless you specifically need:
- HRD score search parameters
- Specific BRCAness constraints
- IG structure unification
- Reference diagrams

**→ No further action needed.**
