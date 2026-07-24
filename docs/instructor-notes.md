# Instructor Notes

Verified end-to-end on **2026-07-24** with **GitHub Copilot CLI 1.0.73** (macOS),
running every lab non-interactively (`copilot -p "<lab prompt>" --allow-all-tools`)
from each lab's designated start folder. All 8 labs produced their intended
teaching outcome. Re-verify with your Copilot CLI version a few days before
class — skill auto-triggering and AGENTS.md pickup can change between versions.

## Cost & timing (measured)

| Lab | Wall time | AI credits | Notes |
|---|---|---|---|
| 1.1 | ~30–50s | ~7–12 | |
| 1.2 | ~1m30s | ~13 | Longest run — the big pasted prompt |
| 1.3 | ~1m | ~13 | Writes a ~300-line file |
| 1.4 | ~55s | ~12 | Writes a ~380-line file |
| 2.1 | ~30s | ~7 | |
| 2.2 | ~20s | ~9 | Fastest — skill removes the thinking-about-format work |
| 2.3 | ~30s | ~7 | |
| 2.4 | ~45s | ~15 | Script run + file edit |
| 2.5 | ~2m10s | ~29 | Heaviest run — reads 5 reference files, writes ~290-line suite |

Rule of thumb: **~90–100 credits per participant** for the full path. A
20-person class ≈ 160 runs — confirm attendees' Copilot plans have headroom,
and expect the room to take 2–3× the solo wall time per lab.

## Per-lab verified behavior & talking points

### 1.1 Just a prompt
- From `workspace/`: generic-but-plausible test cases with **invented rules**
  (stacking, category restrictions, per-user coupons, a made-up `NEWUSER10`
  code). Exactly the material for the "which of these rules is real?" discussion.
- **Why `workspace/` exists:** when the session starts next to the lab README,
  the agent reads it and *role-plays the lesson* ("This is Lab 1.1's exercise —
  I'll respond exactly as the lab intends"). We hit this in testing.
- Even in the empty folder, the agent inferred "this is the just-a-prompt lab"
  **from the path name**. Great bonus point: agents scavenge context from
  everything, including folder names — this cuts both ways (Lab 1.3 vs. stray files).

### 1.2 Context + format
- **Start in `workspace/`, same as 1.1.** Found in testing: if the session
  starts next to `prompt-example.md`, the agent reads the file itself and
  produces the grounded answer even from a lazy prompt — erasing the contrast
  with Lab 1.1. The lab's point is that context enters through the prompt only.
- Output hit every observable: exact `TC-COUPON-NNN` format, boundaries tested
  at 3,000/3,001 THB (cap) and 23:59:58 / 23:59:59 / 00:00:00 (expiry), exact
  error codes, R8 sent to Open questions instead of guessed.
- **Better than designed:** the Open questions section found ambiguities we
  didn't plant — rounding of percentage discounts, whether 23:59:59 itself is
  valid, R8 mechanics for mixed carts (and that *no listed error code covers
  it*), scope of "once per customer". Talking point: with real context the AI
  stops inventing answers and starts asking senior-tester questions.

### 1.3 Project structure
- Exploration order was textbook: list folders → spec → API doc → example test
  file → write. Learners should watch the transcript live — the read order *is*
  the lab.
- Output (17 cases) followed the example file's house style and correct cap math.

### 1.4 Standardized format
- The 7-word prompt produced 20 template-exact cases: at/below/above for every
  boundary, exact error codes, currency on all amounts, R8 in Open questions —
  all 7 AGENTS.md rules obeyed without being mentioned in the prompt.
- The transcript never shows AGENTS.md being "read" — Copilot loads it as
  custom instructions before the turn starts. Worth pointing out: that's the
  difference between *context the agent fetches* (1.3) and *standing
  instructions* (1.4). The 🧪-emoji experiment in the lab README makes it visible.

### 2.1 No skill (baseline)
- The baseline report was *good* — that's what makes the module land. Its gaps
  are structural, not quality: ad-hoc sections (`Summary`, `Additional Notes`),
  Actual before Expected, and **severity "Medium" on an invented scale**.
- Keep this output on screen for the rest of the module. The severity story
  arc is the spine: **Medium (invented) → "(proposed, per team scale)" (2.2,
  honest gap) → S2 – Major quoting the guide's criterion (2.3, auditable)** —
  and the team's guide says boundary money-bugs are S2, so the baseline
  *undershot* severity.

### 2.2 Minimal SKILL.md
- Transcript line 1 is the money shot: `● skill(bug-report)` — auto-activated
  from the same lazy prompt, no `/bug-report` needed (keep the slash form as
  fallback if a Copilot version doesn't auto-trigger).
- Output matched the SKILL.md contract exactly; fastest and among the cheapest
  runs — a skill *saves* tokens versus freestyle.

### 2.3 References
- Read order visible in transcript: skill → `report-template.md` →
  `severity-guide.md` → notes → write. Severity came out **S2 – Major
  (criterion: "Valid coupon rejected")** — quoted verbatim from the guide.

### 2.4 Progressive disclosure
- The decoy worked: the agent said, in the transcript, *"Not a UI bug, so
  skipping ui-bug-extras"* — the just-in-time proof the lab is built around.
- It ran `new-report.sh` (created `bug-reports/20260724-….md`) and filled the
  template; severity cited the "money wrong at boundary" tie-breaker.
- **Known wrinkle (harmless, narrate it):** the agent *read* the script before
  running it, and after the script created the file it briefly tried to
  re-create it (blocked: "Path already exists") before switching to editing.
  It self-recovered — a nice live example of agents recovering from tool errors.

### 2.5 Install a real skill (bonus)
- Verified end-to-end: Drive-zip install → auto-activation → progressive
  disclosure at scale (read only 5 of 14 references — never `stt.md`, since
  the coupon spec has no workflow states) → 288-line suite with per-condition
  BVA/EP, 13 business scenarios, and R8 flagged by gap analysis with three
  interpretations. Hold this output next to the Lab 1.4 result for the
  "template vs technique" comparison in Discussion 4.
- Needs network access to GitHub or Google Drive — check the venue's network
  beforehand; the Drive zip via `curl` is the friendlier path on locked-down
  machines (no git required).
- The skill's `AskUserQuestion` interactions (combination method, save format)
  only work in an interactive session — that's the intended classroom
  experience. For a non-interactive smoke test, pre-answer in the prompt
  ("use business-driven scenarios, save as Markdown, no need to ask me").
- Global-install part writes to `~/.copilot/skills/` on attendee machines —
  point out the cleanup command at the end of the lab.
- Discussion 2 (review-before-install) is the security beat of the day: a
  skill is instructions + possibly scripts your agent will run. Don't skip it.

## Run-sheet reminders

- Fresh `copilot` session per lab, always — clean context is part of the experiment.
- Labs 1.1 and 2.1 start **inside `workspace/`**; every other lab starts at the
  lab folder root.
- `.github/` is hidden — have learners `ls -la` in Module 2; reading the
  SKILL.md files is part of those labs.
- Labs 1.3, 1.4, 2.1, and 2.4 write files. To reset between groups:
  `git status --short` then delete the untracked outputs
  (`test-cases/coupon-test-cases.md`, `workspace/bug-report.md`, `bug-reports/`).
- Non-interactive smoke test of any lab:
  `copilot -p "<the lab's prompt>" --allow-all-tools` from the lab's start folder.
