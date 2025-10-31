# Pull Request Creation Guide

Since the GitHub token doesn't have PR creation permissions, here are the commands and information to create PRs for each branch.

---

## Method 1: Using GitHub CLI (if you have permissions)

Run these commands from your terminal:

### 1. ImplementationGuide-AdaptImplicitConventions

```bash
gh pr create \
  --base dev \
  --head ImplementationGuide-AdaptImplicitConventions \
  --title "IG Structure: Unify file system according to released IGs" \
  --body "## Summary
Unifies the Implementation Guide file system structure to match already released IGs.

## Changes
- 2 commits
- Updates IG file organization and structure
- Low risk - documentation/structure only

## Commits
- 31fc73a - Unifies the IG file system structures according already released IGs
- 9cf2a4a - feat: add FHIR IG files

## Risk Assessment
🟢 **LOW RISK** - Only affects IG structure, no profile logic changes

## Recommendation
✅ Merge if you want standardized IG structure across modules

## Files Changed
$(git diff --stat dev origin/ImplementationGuide-AdaptImplicitConventions)

---
🤖 Generated with [Claude Code](https://claude.com/claude-code)"
```

---

### 2. feature/extensive-sample-patient

```bash
gh pr create \
  --base dev \
  --head feature/extensive-sample-patient \
  --title "Examples: Add reference diagram for sample patient" \
  --body "## Summary
Adds PlantUML reference diagram and updates sample patient references.

## Changes
- 3 commits
- Adds references.pu file
- Updates reference structure in examples
- Low risk - example improvements only

## Commits
- 0d8f38d - Added references.pu
- ce00080 - Merge
- 096eb9b - Changed Reference

## Risk Assessment
🟢 **LOW RISK** - Only affects examples and documentation

## Recommendation
✅ Merge if you want the reference diagram for documentation

---
🤖 Generated with [Claude Code](https://claude.com/claude-code)"
```

---

### 3. ihc

```bash
gh pr create \
  --base dev \
  --head ihc \
  --title "IHC: Add comment to immunohistochemistry profile" \
  --body "## Summary
Adds comment to immunohistochemistry profile.

## Changes
- 1 commit (trivial)
- Documentation improvement

## Commits
- 554f2c6 - added comment

## Risk Assessment
🟢 **TRIVIAL** - Just a comment addition

## Recommendation
✅ Cherry-pick if comment provides useful clarification

## Review Command
\`\`\`bash
git show 554f2c6
\`\`\`

---
🤖 Generated with [Claude Code](https://claude.com/claude-code)"
```

---

### 4. sprint-09/profile-ngs-bericht

```bash
gh pr create \
  --base dev \
  --head sprint-09/profile-ngs-bericht \
  --title "NGS: Profile refinements for BRCAness and HRD-Score" \
  --body "## Summary
NGS profile refinements with constraints for BRCAness and HRD-Score.

## Changes
- 9 commits
- Adds constraints for BRCAness, HRD-Score
- NGS-related profile updates

## Key Commits
- 393d32a - Constrained value for BRCAness, HRD-Score and Biomarker
- c7a8cc7 - Merge branch 'dev'
- b328e62 - ran sushi after merge of fixes

## Risk Assessment
🟡 **MEDIUM RISK** - Contains profile logic changes
⚠️ **Needs careful review** - May overlap with dev work

## Recommendation
🔍 **REVIEW CAREFULLY** - Check if constraints are appropriate
- Review commit 393d32a for constraint logic
- Verify no conflicts with current dev profiles
- Consider cherry-picking only useful constraints

## Review Commands
\`\`\`bash
# See the key changes
git show 393d32a

# See all differences from dev
git diff dev origin/sprint-09/profile-ngs-bericht -- input/fsh/profiles/NGS-Bericht/
\`\`\`

---
🤖 Generated with [Claude Code](https://claude.com/claude-code)"
```

---

### 5. logical-model-adaptions

```bash
gh pr create \
  --base dev \
  --head logical-model-adaptions \
  --title "DISCUSSION: Logical Model adaptions (likely outdated)" \
  --body "## ⚠️ WARNING: This branch is likely OUTDATED

## Summary
Contains logical model adaptions and response befund work, but dev has since evolved this differently.

## Changes
- 15 commits
- Many IG documentation changes
- Response befund terminology work (superseded in dev)
- HRD score search parameters

## Key Commits
- 2f95fb4 - added cs vs response befund beurteilungsmethode (SUPERSEDED)
- 851cc57 - added hrd score search parameters to capability statement (POSSIBLY USEFUL)
- 84c8e60 - comments on response befund profile

## Risk Assessment
🔴 **HIGH RISK** - Contains extensive outdated work
❌ **NOT RECOMMENDED** - Most work has been done better in dev

## Analysis
Dev has split the response befund terminology into TWO files:
- \`mii-cs-mtb-beurteilungsmethode.fsh\` (method - RECIST/RANO)
- \`mii-cs-mtb-response-befund-beurteilung.fsh\` (evaluation - PD/SD/PR/CR)

This branch has an older combined version.

## Recommendation
❌ **DO NOT MERGE** as-is
🔍 **REVIEW** commit 851cc57 for HRD score search parameters
- If search parameters are useful, cherry-pick ONLY that commit
- Everything else should be discarded

## Files Changed
Over 100+ files, mostly IG documentation that has evolved differently in dev.

## Review Commands
\`\`\`bash
# Check if HRD score search parameters exist in dev
git diff dev origin/logical-model-adaptions -- input/fsh/capability-statement.fsh

# See just the search parameter commit
git show 851cc57
\`\`\`

---
🤖 Generated with [Claude Code](https://claude.com/claude-code)"
```

---

## Method 2: Using GitHub Web Interface

If GitHub CLI doesn't work, create PRs manually:

1. Go to: https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/pulls

2. Click "New pull request"

3. Set:
   - Base: `dev`
   - Compare: `<branch-name>` (from list below)

4. Copy the PR description from the commands above

---

## Branch List for Web Interface

1. **ImplementationGuide-AdaptImplicitConventions** → dev
   - Title: "IG Structure: Unify file system according to released IGs"

2. **feature/extensive-sample-patient** → dev
   - Title: "Examples: Add reference diagram for sample patient"

3. **ihc** → dev
   - Title: "IHC: Add comment to immunohistochemistry profile"

4. **sprint-09/profile-ngs-bericht** → dev
   - Title: "NGS: Profile refinements for BRCAness and HRD-Score"

5. **logical-model-adaptions** → dev
   - Title: "DISCUSSION: Logical Model adaptions (likely outdated)"

---

## Quick Create URLs

You can also use these direct URLs to start PR creation:

1. **ImplementationGuide-AdaptImplicitConventions:**
   ```
   https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/compare/dev...ImplementationGuide-AdaptImplicitConventions
   ```

2. **feature/extensive-sample-patient:**
   ```
   https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/compare/dev...feature/extensive-sample-patient
   ```

3. **ihc:**
   ```
   https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/compare/dev...ihc
   ```

4. **sprint-09/profile-ngs-bericht:**
   ```
   https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/compare/dev...sprint-09/profile-ngs-bericht
   ```

5. **logical-model-adaptions:**
   ```
   https://github.com/medizininformatik-initiative/kerndatensatzmodul-molekulares-tumorboard/compare/dev...logical-model-adaptions
   ```

---

## Priority Order

Suggested order for review:

1. ✅ **ihc** (trivial - 1 commit)
2. ✅ **feature/extensive-sample-patient** (low risk - 3 commits)
3. ✅ **ImplementationGuide-AdaptImplicitConventions** (low risk - 2 commits)
4. 🔍 **sprint-09/profile-ngs-bericht** (needs review - 9 commits)
5. ❌ **logical-model-adaptions** (for discussion/closure - 15 commits)

---

## After Creating PRs

Update the [REMAINING_BRANCHES_ANALYSIS.md](REMAINING_BRANCHES_ANALYSIS.md) with PR links once created.
