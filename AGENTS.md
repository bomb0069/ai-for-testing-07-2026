# AGENTS.md

This file provides guidance to AI coding agents (GitHub Copilot CLI, Claude
Code, and other tools that support the AGENTS.md convention) when working in
this repository.

## What this repository is

A half-day, hands-on workshop teaching software testers to work with AI agents
via GitHub Copilot CLI. Two modules, four labs each:

- `labs/01-context-engineering/` — just a prompt → context+format → project
  structure → standardized format (AGENTS.md + template)
- `labs/02-agent-skills/` — just a prompt → minimal SKILL.md → reference
  files → progressive disclosure (per [agentskills.io](https://agentskills.io))

## Conventions that matter when editing

- **Every lab folder is self-contained.** Learners `cd` into a lab and start a
  fresh `copilot` session there. Never factor "shared" files out of a lab
  folder — duplication between labs is deliberate.
- **Workspace rule:** labs whose lesson depends on the agent NOT having
  context (baseline labs: 1.1, 1.2, 2.1) start their session in a `workspace/`
  subfolder so the agent can't read the lab README or example files.
  Demonstration labs (1.3, 1.4, 2.2+) start at the lab root because their
  folder contents (specs, AGENTS.md, skills) ARE the experiment. Apply this
  rule when adding labs.
- `sample-project/` is the **canonical source** of the coupon spec, API doc,
  and test-case template. Labs 1.3 and 1.4 contain copies; if you change the
  canonical files, re-copy them into those labs.
- The coupon spec's rule **R8 is intentionally ambiguous** and `bug-notes.md`
  describes an intentional boundary bug (HOT100 at exactly 300 THB). Do not
  "fix" either — they are teaching devices.
- Module 2 skills live in each lab's `.github/skills/bug-report/`. Labs 2.2 →
  2.3 → 2.4 show the same skill at growing maturity; keep the progression
  consistent when editing one stage.
- Lab READMEs follow a fixed shape: Scenario → Steps → What you should
  observe → Discussion → Key takeaway → link to next lab. Keep it.
- Workshop language is English; `docs/agent-skills-progressive-disclosure.html`
  is a Thai reference and stays as-is.
