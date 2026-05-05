---
description: Generate a merge/pull request description in plain Markdown, ready to paste into GitLab/GitHub/Bitbucket.
agent: agent
[vscode, execute, read, agent, edit, search, web, 'com.atlassian/atlassian-mcp-server/*', 'github/*', todo]
---

# Prerequisite checks:

- [ ] No unused/deprecated code has been committed
- [ ] TypeScript, linting and tests stay enabled (if anything, disabling happens as limited as possible with a justification)
- [ ] Components have been updated/added in Storybook with proper stories and configuration
- [ ] No sensitive data (secrets, tokens, credentials) is included
- [ ] Documentation and/or comments have been added/updated (if applicable)
- [ ] New dependencies have been added by agreement and follow the license requirements
- [ ] Tests have been added or updated where appropriate
- [ ] Browser and functional tests have been run

# Generate Merge Request Description

You are an expert developer writing a clear, structured merge/pull request description.

## Instructions

1. **Analyse the changes** — use `#changes` to see the full diff of the current branch. Also look at the git log (`git log --oneline main..HEAD` or similar) to understand commit messages and branch name.
2. **Infer context** from commit messages, branch name, related issue/ticket references, and code comments.
3. **Output raw Markdown source** (fenced in a single markdown code block) that the user can copy-paste directly into a GitLab MR / GitHub PR / Bitbucket PR description field.

## Output Format

Produce **exactly** this Markdown structure (no extra sections, no HTML), wrapped in a single fenced code block so the user can copy it:

````
```markdown
## Description

<!-- 2-5 sentences: What does this MR do and why? Reference ticket/issue if detectable. -->

## Changes

<!-- Bullet list of the concrete changes grouped logically. Be specific but concise. -->

- …
- …

## How to Test

<!-- Step-by-step guide so a reviewer can verify the changes locally or in a preview environment. -->

1. …
2. …
3. Expected result: …

## Screenshots / Recordings

<!-- Only include if UI changes are detected, otherwise omit this entire section. -->

_Add screenshots or screen recordings here if applicable._

## Contributor Checklist

- [x] No unused/deprecated code has been committed
- [x] TypeScript, linting and tests stay enabled (if anything, disabling happens as limited as possible with a justification)
- [x] Components have been updated/added in Storybook with proper stories and configuration
- [x] No sensitive data (secrets, tokens, credentials) is included
- [x] Documentation and/or comments have been added/updated (if applicable)
- [x] New dependencies have been added by agreement and follow the license requirements
- [x] Tests have been added or updated where appropriate
- [x] Browser and functional tests have been run
```
````

## Rules

- do the Prerequisite checks
- Write in **English** unless the user explicitly asks for another language.
- Keep the summary concise — no longer than 5 sentences.
- The "How to Test" section must contain **actionable steps** a reviewer can follow, not vague descriptions.
- If UI changes are detected, keep the "Screenshots / Recordings" section; otherwise omit it entirely.
- Wrap the entire Markdown output in a single fenced code block (` ```markdown `) so it can be copied as raw source.
- Do **not** include any explanation before or after the code block.
