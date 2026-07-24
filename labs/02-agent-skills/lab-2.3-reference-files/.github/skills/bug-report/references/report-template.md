# Bug report template (team standard)

```markdown
# [<Area>] <Symptom> — <condition>

**Severity:** S<1-4> – <label> (criterion: "<one line quoted from severity guide>")
**Reproducibility:** <n>/<m> attempts

## Environment
- Environment: <test | staging | prod>
- Client: <browser + version, OS>
- Data: <cart id, user id, coupon code, etc.>

## Steps to Reproduce
1. <one action per step>

## Expected Result
<what should happen — cite the requirement rule id if known, e.g. "per R2">

## Actual Result
<what actually happened — exact error codes, exact amounts>

## Evidence
<screenshots, logs, response bodies — reference by name if not attached>

## Open Questions / Not Yet Tested
- <missing info, untested platforms, unclear requirements>
```

Conventions: title ≤ 100 chars; no blame, no speculation about the cause in
the report body; one bug per report.
