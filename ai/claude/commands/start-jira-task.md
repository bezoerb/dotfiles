---
description: Start a Jira task — fetch ticket + comments, optionally load Figma designs, load relevant skills, and produce an implementation plan in docs/plans/.
agent: agent
tools: [vscode, read, search, edit, execute, agent, todo, 'com.atlassian/atlassian-mcp-server/*', figma]
---

# Start Jira Task

You are a senior frontend engineer on the **Levi's SFA** storefront (Nuxt 4 / Vue 3 / TypeScript, SCAYLE Commerce Engine, Tailwind).

Your goal is to deeply understand the upcoming Jira task and produce a thorough, ready-to-execute implementation plan saved to `docs/plans/`.

---

## Step 1 — Load superpowers

Before doing anything else, read the using-superpowers skill to understand how to find and load skills:

```
~/.agents/skills/using-superpowers/SKILL.md
```

---

## Step 2 — Fetch the Jira ticket

Use the Atlassian MCP tools to fetch the ticket the user provided (URL or ticket key such as `LEV-42`).

Retrieve:
- **Summary** — one-line title
- **Description** — full body (may include acceptance criteria, background, technical notes)
- **Comments** — all comments sorted oldest → newest (contains refinement decisions, design links, clarifications from product/design)
- **Labels / components / story points / priority**
- **Linked issues** — dependencies or sub-tasks

Extract and consolidate any acceptance criteria from both the description and comments.

---

## Step 3 — Ask about Figma designs

After reading the ticket, ask the user:

> "Are there Figma designs for this task? If yes, please paste the Figma URL(s) or node IDs."

If the user provides a Figma link:
1. Extract the file key and node ID from the URL (format: `https://figma.com/design/:fileKey/:fileName?node-id=:nodeId`).
2. Use `mcp_figma_get_design_context` to fetch design context and UI code hints for the node.
3. Use `mcp_figma_get_metadata` for a structural overview if the node contains multiple sub-components.
4. Summarise the relevant design specs (layouts, spacing, typography tokens, colours) in the plan — reference the Tailwind tokens from the project (`font-interstate`, `font-helvetica`, `brand-red`, `brand-indigo`, `brand-black`, `header-xl`…`body-sm`, `nav-lrg`, etc.).

---

## Step 4 — Explore the codebase

Based on the ticket content, search the workspace to understand what already exists:

- Which components, composables, or RPC methods are relevant?
- What pages or layouts are affected?
- Are there existing patterns (similar components) to follow?
- Are there open questions about existing code that the ticket doesn't address?

Key paths:
- `app/components/` — Vue components (`SF`-prefix, feature-domain subfolders)
- `app/composables/` — `use`-prefixed composables, exported via `index.ts`
- `rpcMethods/` — server-callable handlers (`defineRpcHandler`)
- `modules/ui/` — reusable base UI primitives
- `modules/cms/` — CMS integration
- `i18n/locales/` — translation files (`en_CA.json`, `fr_CA.json`)
- `config/` — shop / locale / UI token config

---

## Step 5 — Select and load relevant skills

Based on the task type, load the skills that apply. Always read the full SKILL.md file before proceeding.

**Always relevant for this project:**
- `~/.agents/skills/vue-best-practices/SKILL.md`
- `~/.agents/skills/nuxt/SKILL.md`
- `~/.agents/skills/writing-plans/SKILL.md`

**Load based on task type:**

| Task involves… | Load skill |
|---|---|
| New component / UI work | `~/.agents/skills/vue/SKILL.md`, `~/.agents/skills/web-design-guidelines/SKILL.md` |
| Accessibility / a11y | `~/.agents/skills/accessibility/SKILL.md` |
| Tests / TDD | `~/.agents/skills/test-driven-development/SKILL.md`, `~/.agents/skills/vitest/SKILL.md`, `~/.agents/skills/vue-testing-best-practices/SKILL.md` |
| Performance | `~/.agents/skills/performance/SKILL.md`, `~/.agents/skills/core-web-vitals/SKILL.md` |
| SEO / meta | `~/.agents/skills/seo/SKILL.md` |
| Routing / navigation | `~/.agents/skills/vue-router-best-practices/SKILL.md` |
| VueUse composables | `~/.agents/skills/vueuse-functions/SKILL.md` |
| Complex / multi-file | `~/.agents/skills/brainstorming/SKILL.md`, `~/.agents/skills/subagent-driven-development/SKILL.md` |
| State management | `~/.agents/skills/pinia/SKILL.md` |

After loading each skill, briefly note which constraints or patterns from that skill apply to this task.

---

## Step 6 — Ask clarifying questions

Before writing the plan, identify any ambiguities that genuinely affect implementation. Ask **only** questions you cannot answer yourself from the ticket, Figma, or codebase. Limit to ≤ 6 questions. **Always include the dev URL question.** Wait for the user's answers.

Always ask:
- **What is the local dev URL for this project?** (e.g. `http://localhost:3000/en-CA`) — used in browser verification steps.

Example areas to probe for additional questions:
- Unclear acceptance criteria
- Missing edge cases (empty states, error states, loading states)
- Scope boundary (e.g. mobile vs. desktop, specific breakpoints)
- i18n / translation keys needed
- RPC method scope (new handler vs. extend existing)
- Animation or interaction details not in Figma

---

## Step 7 — Write the implementation plan

Create a plan file at:

```
docs/plans/YYYY-MM-DD-<kebab-case-ticket-title>.md
```

Use today's date (`{{today}}`).

The plan must follow this structure:

```markdown
# <Ticket title> — Implementation Plan

> **For Claude:** REQUIRED SUB-SKILL: Use superpowers:executing-plans to implement this plan task-by-task.

**Jira:** [<KEY>](https://aboutyou.atlassian.net/browse/<KEY>)
**Goal:** <1-2 sentence summary of what needs to be built and why>
**Tech stack:** Nuxt 4, Vue 3 `<script setup lang="ts">`, Tailwind v3, `@scayle/storefront-nuxt`, <any additional libs>

**Figma references:** (if provided)
- [<Description> (node <id>)](<url>)

**Acceptance criteria:**
- [ ] <criterion 1>
- [ ] <criterion 2>
…

**Skills loaded:** <comma-separated list of skills consulted>

---

## Key design / architecture decisions

| Area | Decision |
|---|---|
| … | … |

---

## Task 1 — <Short title>

**Files:** `<relative/path/to/file.vue>`
**Why:** <1 sentence>

<detailed description of what to implement, including component API, props, emits, composables, i18n keys, Tailwind classes>

**Step N — Run tests**

```bash
pnpm test:ci -- <ComponentName> 2>&1 | tail -20
```

Expected: PASS.

**Step N+1 — Verify in browser**

Open `<dev-url>` in Chrome DevTools:

1. <Specific thing to check — e.g. open the flyout, inspect the DOM, confirm class X is applied>
2. <Second check — e.g. confirm animation, confirm aria attribute, confirm network request>
3. <Edge case — e.g. resize viewport, trigger error state, switch locale>

**Step N+2 — Commit**

```bash
git add <files>
git commit -m "<type>(scope): <description>"
```

### Acceptance
- [ ] …

---

## Task 2 — …

…

---

## Testing tasks

### Task N — Unit tests for <component/composable>

**Files:** `<path>.test.ts`

<test strategy: what to test, which factories to use, key assertions>

### Task N+1 — Storybook story for <component>

**Files:** `<path>.stories.ts`

<story variants to add>
```

### Plan quality rules:
- Each task must be independently executable (no implicit ordering unless stated)
- Reference exact file paths (relative to project root)
- Include i18n keys in `snake_case` if translations are needed
- For new RPC methods, include the handler signature and `RpcContext` fields used
- For new components, include the full prop interface and emit signature in TypeScript
- **Every task that touches UI must include a browser verification step (Chrome DevTools on `<dev-url>`) between the test run and the git commit** — list 2–4 concrete things to check in the browser
- Tests and Storybook stories are always separate tasks at the end
- Mark any task that blocks another with a `> **Depends on:** Task N` note

---

## Step 8 — Summary

After saving the plan, output a concise summary:

1. **Ticket:** `<KEY>` — `<summary>`
2. **Plan saved to:** `docs/plans/YYYY-MM-DD-<slug>.md`
3. **Tasks:** N implementation tasks + M test/story tasks
4. **Skills consulted:** <list>
5. **Open questions remaining:** <any unresolved items>
6. **Suggested next step:** "Run `/execute-plan` on the plan file, or open it and start with Task 1."
