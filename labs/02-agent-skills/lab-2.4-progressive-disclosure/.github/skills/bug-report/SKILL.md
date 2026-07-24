---
name: bug-report
description: Turn a tester's raw notes into a standard bug report following the team template and severity scale. Use when the user wants to write, file, or format a bug/defect report from notes or observations.
---

# Bug Report Writer

Workflow:

1. Read the user's notes. Extract facts only — never invent details.
2. Create the report file by running:
   `bash .github/skills/bug-report/scripts/new-report.sh <short-slug>`
   then fill in every section of the created file.
3. Structure must match `references/report-template.md` exactly.
4. Before assigning severity, read `references/severity-guide.md`; quote the
   matching criterion in one line.
5. **Only if the bug is visual/UI** (layout, styling, rendering), also read
   `references/ui-bug-extras.md` and add its extra sections. Skip it otherwise.
6. Anything the notes don't cover goes under **Open Questions / Not Yet Tested**.

Hard rules:

- Amounts always include the currency (THB); error codes verbatim.
- Steps to Reproduce must be executable by someone with zero context.
- Write in English, plain and specific.

## Resources (load only when needed)

- `references/report-template.md` → read when writing the report body
- `references/severity-guide.md` → read when assigning severity
- `references/ui-bug-extras.md` → read **only** for visual/UI bugs
- `scripts/new-report.sh` → run to create the report file
