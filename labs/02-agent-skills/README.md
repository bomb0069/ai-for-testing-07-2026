# Module 2 · Agent Skills & Progressive Disclosure

**Goal:** package the expertise you built in Module 1 into a **reusable skill**
that any teammate's agent can use — and understand *why* skills are structured
in levels (progressive disclosure) instead of dumping everything into context.

Based on the [Agent Skills](https://agentskills.io/home) open standard.
Deep-dive reference (Thai): open `docs/agent-skills-progressive-disclosure.html`
in a browser.

The task never changes: *"turn my messy notes into a proper bug report."*
What changes in each lab is **how much of the expertise is packaged, and how
it gets loaded**.

| Lab | The skill is… | Key lesson |
|---|---|---|
| [2.1 Just a prompt](lab-2.1-just-a-prompt/) | in your head, retyped every time | Un-packaged expertise doesn't repeat or transfer |
| [2.2 A little instruction](lab-2.2-a-little-instruction/) | a minimal `SKILL.md` | name + description + a few rules already changes everything |
| [2.3 Reference files](lab-2.3-reference-files/) | `SKILL.md` + `references/` | Deep knowledge lives in files the skill points to |
| [2.4 Progressive disclosure](lab-2.4-progressive-disclosure/) | full skill: metadata → instructions → resources | Load the right knowledge at the right time, pay tokens only when needed |

## How Copilot CLI finds skills

Copilot CLI loads project skills from `.github/skills/<name>/SKILL.md`
(it also accepts `.claude/skills/` and `.agents/skills/`; personal skills go in
`~/.copilot/skills/`). Each lab folder here ships its own `.github/skills/`
folder — so as always:

```bash
cd labs/02-agent-skills/lab-2.2-a-little-instruction
copilot
```

Copilot picks a skill automatically when your request matches its
`description`, or you can force it: `/bug-report turn my notes into a report`.

> 💡 `.github` is a hidden folder — use `ls -la` (or `Cmd+Shift+.` in Finder)
> to see it. Reading each lab's `SKILL.md` **is part of the lab**.

## The three levels (from the reference guide)

| Level | What | When loaded | Cost |
|---|---|---|---|
| 1 · Metadata | `name` + `description` frontmatter | always, every session | ~50–100 tokens/skill |
| 2 · Instructions | the body of `SKILL.md` | when the skill is activated | ~300–800 tokens |
| 3 · Resources | `references/`, `scripts/`, `assets/` | only when actually needed | pay per file used |

## Timing (90 min)

~15 min for labs 2.1–2.2, ~20 min for 2.3–2.4, discussions in between.
Lab 2.4 ends with a build-your-own exercise — protect time for it.
