# Branch Consolidation Analysis
**Generated:** 2025-10-31
**Current branch:** dev
**Analysis:** Identifying unmerged work across branches

## Executive Summary

- **7 branches** have commits not merged into dev
- **🔴 HIGH PRIORITY**: `release/2026-rchange-dependencies-and-integrate-comments` contains HDB-533 (marked Done in Jira)
- **⚠️ CONFLICT RISK**: Release branch removes files that dev added (Ploidie, ReleaseNotes)
- **Recommendation**: Cherry-pick specific commits rather than full merge

---

## Detailed Branch Analysis

### 🔴 HIGH PRIORITY - Contains resolved Jira ticket

#### release/2026-rchange-dependencies-and-integrate-comments
**Status**: 2 commits ahead of dev
**Diverged at**: commit 15523bc (Jul 2025)

**Commits:**
1. ✅ **c0b8630** - HDB-533 und ergänzendes Beispiel her2neu FISH
   - Jira Status: Done
   - Adds FISH example for Her2neu
   - Updates insituhybridization profile

2. ✅ **3d20dd4** - added new package dependency for molgen module
   - Updates sushi-config.yaml with molgen 2026 dependency
   - Updates multiple profiles for molgen compatibility

**Files Changed**: 50+ files
- Adds: FISH Her2neu example
- Modifies: 30+ profile definitions
- **Deletes**:
  - Ploidie example and IG page (added in dev!)
  - ReleaseNotes.page.md (added in dev!)
  - Beurteilungsmethode CS (added in dev!)

**⚠️ MERGE CONFLICT RISK: HIGH**
- Dev has added Ploidie profile, example, and IG documentation
- Dev has added ReleaseNotes page
- Dev has added Beurteilungsmethode terminology
- Release branch removes these additions

**Recommendation**:
- **Option A**: Cherry-pick only c0b8630 (HDB-533) to preserve dev's additions
- **Option B**: Full merge + manual conflict resolution to keep both sets of changes
- **Option C**: Rebase release branch on current dev, then merge

---

### 🟡 MEDIUM PRIORITY - Substantial work, needs review

#### logical-model-adaptions
**Status**: 15 commits ahead of dev
**Notable commits:**
- 2f95fb4 - added cs vs response befund beurteilungsmethode
- 851cc57 - added hrd score search parameters to capability statement

**Potential Conflict**:
- Dev commit e948d40 also adds Beurteilungsmethode (same topic)
- Need to verify which implementation is correct/complete

**Recommendation**: Review overlap with dev's response befund work

---

#### sprint-09/profile-ngs-bericht
**Status**: 9 commits ahead of dev
**Focus**: NGS profile refinements, BRCAness/HRD-Score constraints

**Recommendation**: Check if these refinements should be incorporated

---

### 🟢 LOW PRIORITY - Minor changes

#### ImplementationGuide-AdaptImplicitConventions
**Status**: 2 commits ahead
**Content**: IG file system structure improvements
**Recommendation**: Safe to merge for better structure

---

#### feature/extensive-sample-patient
**Status**: 3 commits ahead
**Content**: Example patient refinements, added references.pu
**Recommendation**: Merge if examples are needed

---

#### ihc
**Status**: 1 commit ahead
**Content**: Added comment to immunohistochemistry
**Recommendation**: Trivial, can cherry-pick

---

#### workshop-ngs-examples
**Status**: 1 commit ahead
**Content**: Auto-generated files
**Recommendation**: Skip, regenerate instead

---

## Impact on Ticket Resolution Status

### HDB-533 (Done in Jira, NOT in dev)
- ✅ Implemented in: `release/2026-rchange-dependencies-and-integrate-comments`
- ❌ Status in dev: MISSING
- 📋 Action needed: Bring HDB-533 commit into dev

### Files Added in Dev, Deleted in Release Branch

1. **Ploidie Profile** (resolves GitHub #141, #142)
   - Added in dev: commits 753f125, c361d05, 04d5b90, be7271d, 2358b94
   - Would be deleted by release merge
   - **Action**: Must be preserved

2. **ReleaseNotes.page.md**
   - Added in dev: commit 7072525
   - Would be deleted by release merge
   - **Action**: Must be preserved

3. **Beurteilungsmethode CS/VS** (resolves GitHub #133)
   - Added in dev: commit e948d40
   - Would be deleted by release merge
   - **Action**: Must be preserved

---

## Recommended Consolidation Strategy

### Phase 1: Immediate - Preserve Critical Work

```bash
# Current position
git checkout dev

# Create backup branch
git branch dev-backup

# Cherry-pick HDB-533 (Her2neu FISH example)
git cherry-pick c0b8630

# If conflicts occur with insituhybridization profile:
# - Keep dev's Beurteilungsmethode additions
# - Add release's Her2neu FISH example
# - Merge both sets of changes
```

### Phase 2: Dependency Update

```bash
# Review and cherry-pick molgen dependency update if needed
git show 3d20dd4  # Review changes
# Decide if dependency update is needed
```

### Phase 3: Review Other Branches

```bash
# logical-model-adaptions
git log --oneline dev..origin/logical-model-adaptions
# Identify unique contributions not duplicated in dev

# sprint-09/profile-ngs-bericht
git log --oneline dev..origin/sprint-09/profile-ngs-bericht
# Check if NGS refinements should be incorporated
```

### Phase 4: Clean Up

```bash
# Delete fully-merged branches
git push origin --delete <branch-name>

# Update documentation of what was consolidated
```

---

## Risk Assessment

| Branch | Merge Risk | Data Loss Risk | Recommendation |
|--------|-----------|----------------|----------------|
| release/2026-r... | 🔴 HIGH | 🔴 HIGH (would delete Ploidie, ReleaseNotes) | Cherry-pick only |
| logical-model-adaptions | 🟡 MEDIUM | 🟡 MEDIUM (overlap with dev) | Review carefully |
| sprint-09/profile-ngs-bericht | 🟡 MEDIUM | 🟢 LOW | Review and merge if valuable |
| ImplementationGuide-Adapt... | 🟢 LOW | 🟢 LOW | Safe to merge |
| feature/extensive-sample... | 🟢 LOW | 🟢 LOW | Safe to merge |
| ihc | 🟢 LOW | 🟢 LOW | Cherry-pick trivial |
| workshop-ngs-examples | 🟢 LOW | 🟢 LOW | Skip |

---

## Updated Ticket Resolution Status

After consolidation, the following will change:

### HDB-533
- Current status: Done in Jira, MISSING in dev
- After consolidation: ✅ Done in Jira, ✅ IN dev (via cherry-pick c0b8630)

### GitHub Issues
All 18 previously identified resolved issues remain resolved in dev.

---

## Next Steps

Would you like me to:
1. **Cherry-pick HDB-533** (commit c0b8630) into dev now?
2. **Create a detailed merge plan** with specific commands?
3. **Test merge conflicts** in a temporary branch first?
4. **Review specific files** that would be affected?
