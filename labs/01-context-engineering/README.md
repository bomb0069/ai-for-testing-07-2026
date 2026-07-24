# Module 1 · Context Engineering

**Goal:** experience, on one identical task, how the *quality of what you give the
model* changes the quality of what you get back — and how to make good results
repeatable for a whole team.

The task never changes: *"create test cases for the coupon discount feature."*
What changes in each lab is the **context**.

| Lab | You add… | Key lesson |
|---|---|---|
| [1.1 Just a prompt](lab-1.1-just-a-prompt/) | nothing | Vague in → generic (and confidently wrong) out |
| [1.2 Context + format](lab-1.2-context-and-format/) | the spec + an output format, pasted inline | Grounding kills hallucination; format makes output usable |
| [1.3 Project structure](lab-1.3-project-structure/) | a project folder the agent can explore itself | Folder structure **is** context; agents fetch what they need |
| [1.4 Standardized format](lab-1.4-standardized-format/) | `AGENTS.md` + a team template | Standards make it consistent for *everyone, every time* |

## How to run each lab

Every lab is a **self-contained folder**. The routine is always the same:

1. `cd` into the lab folder
2. Start a **fresh** Copilot CLI session there —
   a fresh session means a clean context window; that is part of the experiment
3. Open the lab's `README.md`, run the example prompts, compare with the
   "what you should observe" section
4. Exit the session (`/exit`) before moving to the next lab

```bash
cd labs/01-context-engineering/lab-1.1-just-a-prompt
copilot
```

## Ground rules

- Work in pairs if possible — compare outputs; the variation *is* the lesson.
- Keep every output (save to a scratch file). Later labs compare against earlier results.
- When the AI states a business rule, ask yourself: **where did that come from?**
  If it's not in the spec, it's invented.

## Timing (90 min)

~15 min per lab + 5 min group discussion each, with slack for setup problems.
If running behind, shorten 1.2 — its point lands quickly.
