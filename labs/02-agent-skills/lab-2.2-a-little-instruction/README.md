# Lab 2.2 · A Little Instruction (minimal SKILL.md)

**Time:** ~15 min

## Folder contents

```
bug-notes.md                                 same messy notes as Lab 2.1
.github/skills/bug-report/SKILL.md           ← NEW: the smallest useful skill
```

A skill starts as **one file**: `SKILL.md` — YAML frontmatter (`name`,
`description`) plus Markdown instructions. That's the whole
[agentskills.io](https://agentskills.io/home) entry ticket.

## Steps

1. **Read the skill first:**
   [`.github/skills/bug-report/SKILL.md`](.github/skills/bug-report/SKILL.md).
   It is ~20 lines. Note what the frontmatter says vs. what the body says.

2. Start a fresh Copilot CLI session in this folder:

   ```bash
   cd labs/02-agent-skills/lab-2.2-a-little-instruction
   copilot
   ```

3. Run the **exact same prompt as Lab 2.1**:

   > Write a bug report from my notes in bug-notes.md

   Watch the transcript: you should see Copilot **load the bug-report skill**
   before answering.

4. Compare with your Lab 2.1 outputs, and with your neighbor's output.

5. **Experiment:** you can also invoke the skill explicitly:

   > /bug-report my notes are in bug-notes.md

6. **Experiment 2 — how does the agent know when to use it?** Ask something
   unrelated ("what folders are in this project?"). The skill should *not*
   activate. The `description` field is the trigger — it's how the agent
   decides relevance. Try making the description misleading (e.g. "Helps with
   cooking recipes"), restart, and see if the skill still fires.

## What you should observe

- Same prompt as 2.1, but now: **fixed sections, fixed title style, severity
  left honest** ("proposed, per team scale") and missing info listed as open
  questions instead of invented.
- Your output and your neighbor's now look like they came from the same team.
- The prompt stayed lazy. The knowledge moved into a **file that ships with
  the repo** — versioned, reviewable, improvable by pull request.

## Discussion

1. Compare `SKILL.md` with Lab 1.4's `AGENTS.md`. Same idea (standing
   instructions in a file) — but what's different about **when** each one loads?
2. The frontmatter `description` is doing quiet, heavy lifting. What makes a
   good description? (What it does + *when to use it*.)

## Key takeaway

> A minimal `SKILL.md` = **name + when-to-use + a few hard rules.**
> Twenty lines already beat a thousand retyped prompts.

Next: [Lab 2.3 — when the knowledge outgrows one file](../lab-2.3-reference-files/)
