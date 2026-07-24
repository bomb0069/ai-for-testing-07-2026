# Lab 2.4 · Progressive Disclosure

**Time:** ~20 min (+ build-your-own exercise)

## Folder contents

The complete, production-shaped skill:

```
bug-notes.md
.github/skills/bug-report/
  SKILL.md                        Level 2 — workflow (kept lean on purpose)
  references/
    report-template.md            Level 3 — read when writing
    severity-guide.md             Level 3 — read when rating severity
    ui-bug-extras.md              Level 3 — read ONLY for UI bugs  ← the decoy!
  scripts/
    new-report.sh                 Level 3 — run, not read into context
```

## The idea (from `docs/agent-skills-progressive-disclosure.html`)

**Progressive disclosure = the agent pays for knowledge only when it uses it.**

| Level | Here, that's… | Loaded |
|---|---|---|
| 1 · Metadata | the `name:` + `description:` frontmatter | every session, ~100 tokens |
| 2 · Instructions | the body of `SKILL.md` | when the skill activates |
| 3 · Resources | `references/`, `scripts/` | per file, only when step needs it |

Your notes describe a *logic* bug — so a well-behaved agent should read the
template and severity guide, but **never open `ui-bug-extras.md`**. That file
is the experiment.

## Steps

1. Read `SKILL.md`. Notice every resource is annotated with **when** to load it.

2. Fresh Copilot CLI session in this folder:

   ```bash
   cd labs/02-agent-skills/lab-2.4-progressive-disclosure
   copilot
   ```

3. Same prompt as always:

   > Write a bug report from my notes in bug-notes.md

4. **Audit the run** — this is the core of the lab. Note, from the transcript:
   - Which files did the agent read, in what order?
   - Did it run `new-report.sh` instead of pasting the template through context?
   - Did it leave `ui-bug-extras.md` unopened? Ask it directly afterwards:
     > Which skill files did you read, which did you skip, and why?

5. **Flip the decoy:** in a fresh session, report a fake *UI* bug:
   > Write a bug report: on iPhone Safari the coupon input box overlaps the
   > Pay button, cart c-3001, test env.

   Now `ui-bug-extras.md` *should* load, and the report gains the extra
   sections. Same skill, different cost, driven by need.

## Why this matters (the math)

Imagine the skill grows to 10 reference guides of ~2,000 tokens each.

- **Everything-in-context:** ~20,000 tokens on every bug report, forever.
- **Progressive disclosure:** ~100 (metadata) + ~500 (SKILL.md) + ~2,000
  (the one guide you actually needed) ≈ **2,600 tokens** — and unchanged as you
  keep adding guides.

Cheaper, yes — but mainly **more accurate**: a model drowning in irrelevant
instructions follows all of them a little and none of them well.

## Build your own (remaining time, pairs)

Pick one and build it right here as `.github/skills/<name>/`:

- `test-data` — generate boundary-value test data tables for a given rule
- `api-test` — turn an endpoint description into negative-test scenarios
- `daily-summary` — turn today's test notes into a stand-up summary

Minimum bar: frontmatter with an honest `description`, ≤ 25-line body, one
reference file with a documented *when-to-load* condition. Then swap machines
with your partner and run each other's skills — that's the real test.

## Key takeaway

> A skill is not a prompt in a file. It's an **architecture for attention**:
> always know it exists, load the workflow when relevant, pay for deep
> knowledge only at the moment of use.
