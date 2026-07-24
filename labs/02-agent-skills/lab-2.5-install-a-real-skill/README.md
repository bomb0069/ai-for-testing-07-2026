# Lab 2.5 · Install a Real-World Skill (bonus)

**Time:** ~20 min (or take-home if the half-day runs out)

## Scenario

You've now *built* a skill from scratch (labs 2.2–2.4). But most of the time
you won't build — you'll **install** skills that your team or the community
already published. Here you install `test-engineer` from
[bomb0069/bomb-skills](https://github.com/bomb0069/bomb-skills): a
production-grade skill that generates test cases using **Boundary Value
Analysis, Equivalence Partitioning, and State Transition Testing** — with 14
reference files, interactive questions, and Excel export. It's the industrial
version of the architecture you built in Lab 2.4.

There are **two levels** to install a skill at, and this lab does both:

| Level | Location | Who gets it | Use when |
|---|---|---|---|
| **Project** | `<project>/.github/skills/` | everyone who clones this repo | team-shared, reviewed via PR, versioned with the project |
| **Global** | `~/.copilot/skills/` | every project on *your* machine | your personal toolbox |

## Before installing: read what you're installing

A skill is **instructions your agent will follow, plus scripts it may run**.
Treat installing one like installing a dependency: skim its `SKILL.md` (and
any `scripts/`) first. Do that now —
[SKILL.md on GitHub](https://github.com/bomb0069/bomb-skills/blob/main/skills/test-engineer/SKILL.md).

## Part A — Project-level install

From this lab folder:

**Option 1 — zip from Google Drive (no git needed):**

```bash
cd labs/02-agent-skills/lab-2.5-install-a-real-skill
curl -sL "https://drive.google.com/uc?export=download&id=18wzAHWN9PpRCqJSu3TkGPjojI38-i9oU" -o test-engineer.zip
unzip test-engineer.zip -d .github/skills/
rm test-engineer.zip
```

**Option 2 — from the GitHub repo:**

```bash
cd labs/02-agent-skills/lab-2.5-install-a-real-skill
git clone --depth 1 https://github.com/bomb0069/bomb-skills.git /tmp/bomb-skills
cp -r /tmp/bomb-skills/skills/test-engineer .github/skills/
```

Verify: `ls .github/skills/test-engineer/` → you should see `SKILL.md` and
`references/` (14 files).

### Try it

Start `copilot` in this lab folder and run:

> Generate test cases for the coupon requirement in requirements/coupon-discount.md

Things to watch for that your Lab 2.4 skill didn't do:

- **Input analysis first**: it numbers every condition (C1, C2, …) and assigns
  a technique per condition — BVA for the numeric minimums, EP for the coupon
  codes, etc.
- **It asks you questions** (`AskUserQuestion` is declared in its frontmatter):
  with mixed BVA/EP conditions it will ask which combination method you want
  (all combinations / pairwise / business-driven / sequential). Pick one and
  see how the scenario table changes.
- **Progressive disclosure at scale**: watch which of the 14 reference files it
  reads for *your* requirement — it should load `bva.md` and `ep.md` but never
  `stt.md` (no workflow states in the coupon spec). Same decoy principle as
  Lab 2.4's `ui-bug-extras.md`.
- At the end it **offers to save as Excel/Markdown** — try Excel.
- The skill is **bilingual**: start a fresh session and prompt in Thai — the
  entire output (headers, tables, questions) switches to Thai.

## Part B — Global install

Make the same skill available to *every* project on your machine:

```bash
mkdir -p ~/.copilot/skills
cp -r .github/skills/test-engineer ~/.copilot/skills/
```

Prove it works from anywhere:

```bash
mkdir -p /tmp/anywhere && cd /tmp/anywhere
copilot
# > I have a field "age" that accepts 18–60. Generate test cases.
```

The skill activates in a folder that contains nothing at all — it now travels
with you, not with the repo.

Cleanup (if you don't want to keep it):

```bash
rm -rf ~/.copilot/skills/test-engineer
```

## Discussion

1. Project vs global — where should `test-engineer` live for *your* team?
   (Hint: who reviews changes to it, and how do teammates get updates?)
2. You just executed instructions written by someone else. What's your team's
   review checklist before a skill lands in `.github/skills/`? Who approves the PR?
3. The bomb-skills repo has an `evals/` folder — test cases *for the skill
   itself*. Why does a skill need its own regression tests?
4. Compare this skill's output with your Lab 1.4 test cases for the same
   coupon spec. What did BVA/EP catch that the template approach didn't (and
   vice versa)?

## Key takeaway

> Skills are **distributable expertise**: install at project level to share a
> team standard, at global level to carry your personal toolbox. Either way —
> read before you install; it's code-review for instructions.
