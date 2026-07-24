# Test Case Template (team standard)

Every test case in this project uses this exact format. One file per feature,
saved under `sample-project/test-cases/`, named `TC-<FEATURE>-<NNN>.md` or
grouped in a single `<feature>-test-cases.md`.

```markdown
## TC-<FEATURE>-<NNN>: <short title>

- **Type:** Positive | Negative | Boundary
- **Priority:** P1 (critical) | P2 (major) | P3 (minor)
- **Requirement:** <rule id from the spec, e.g. R4>

**Preconditions:**
- <state the system must be in>

**Steps:**
1. <numbered, one action per step>

**Expected result:**
- <observable outcome, including exact amounts / error codes where applicable>
```

## Conventions

- Amounts always include the currency (`3,250 THB`), never bare numbers.
- Error scenarios must name the exact error code from `sample-project/api/coupon-api.md`.
- Every business rule in the spec must be covered by at least one test case,
  and every boundary rule (min purchase, cap, expiry) needs at-boundary,
  below-boundary, and above-boundary cases.
- If a requirement is ambiguous, do **not** invent behavior — add it to an
  `## Open questions` section at the bottom of the file.
