---
name: Skills Index
description: Complete index of all 142 agent skills in ~/.agents/skills, grouped by domain, for automatic skill selection
type: reference
originSessionId: d51a2b04-8189-4aa9-98fc-b6fc5fcfb01f
---
Skills live in `~/.agents/skills/<name>/SKILL.md`. Invoke with the Skill tool using the exact name.

## Workflow & Process

| Skill | When to use |
|-------|-------------|
| `brainstorming` | **MUST use before any creative work** — features, components, new functionality |
| `writing-plans` | Have spec/requirements for multi-step task, before touching code |
| `executing-plans` | Have a written plan to execute in a separate session |
| `planning-and-task-breakdown` | Break work into ordered implementable tasks |
| `incremental-implementation` | Task touches >1 file or feels too large to land in one step |
| `spec-driven-development` | Starting a project/feature with unclear/vague requirements |
| `subagent-driven-development` | Execute implementation plans with independent parallel tasks |
| `dispatching-parallel-agents` | 2+ independent tasks with no shared state |
| `context-engineering` | Starting a session, agent output quality degrading, switching tasks |
| `using-superpowers` | **Start of any conversation** — establishes skill discovery workflow |
| `using-agent-skills` | Discover which skill applies to current task |
| `find-skills` | User asks "is there a skill for X" or wants to discover/install skills |

## Code Quality & Review

| Skill | When to use |
|-------|-------------|
| `code-review-and-quality` | Before merging any change |
| `requesting-code-review` | Completing tasks / before merging, verify work meets requirements |
| `receiving-code-review` | Received feedback, before implementing suggestions |
| `code-simplification` | Refactoring for clarity without changing behavior |
| `best-practices` | "apply best practices", "code quality review", "modernize code" |
| `verification-before-completion` | **Before claiming work is done/fixed/passing** — run verification first |
| `improve-codebase-architecture` | Find refactoring opportunities, make codebase more testable/navigable |

## Debugging & Troubleshooting

| Skill | When to use |
|-------|-------------|
| `systematic-debugging` | **Any bug, test failure, or unexpected behavior** before proposing fixes |
| `debugging-and-error-recovery` | Tests fail, builds break, unexpected errors — systematic root-cause approach |
| `memory-leak-debugging` | High memory usage, OOM errors, heap snapshots, memlab |
| `troubleshooting` | Chrome DevTools MCP connection issues, list_pages/new_page/navigate_page fail |

## Testing

| Skill | When to use |
|-------|-------------|
| `test-driven-development` | Implementing any logic, fixing bugs, changing behavior |
| `tdd` | TDD with red-green-refactor loop, integration tests, test-first development |
| `vitest` | Writing tests, mocking, coverage, test filtering with Vitest |
| `vue-testing-best-practices` | Vue component testing, Vue Test Utils, Playwright E2E |
| `browser-testing-with-devtools` | Testing anything in a browser, DOM inspection, console errors, network |
| `migrate-to-shoehorn` | Replace `as` type assertions in tests with @total-typescript/shoehorn |

## Vue.js & Nuxt

| Skill | When to use |
|-------|-------------|
| `vue-best-practices` | **MUST use for any Vue task** — Vue 3, .vue files, SSR, Volar |
| `vue` | Vue 3 Composition API, script setup macros, reactivity, Transition/Teleport/Suspense |
| `script-setup` | Writing Vue 3 SFCs with `<script setup>` syntax |
| `components` | Building/structuring Vue single-file components |
| `composables` | Extracting reusable stateful logic with Composition API |
| `vue-router-best-practices` | Vue Router 4, navigation guards, route params |
| `pinia` | Pinia stores, state/getters/actions, store patterns |
| `state-management` | Sharing/syncing state across components beyond props/events |
| `provide-inject` | Deeply nested components need ancestor data without prop drilling |
| `dynamic-components` | Runtime conditional component rendering with `<component :is>` |
| `render-functions` | Programmatic template creation with render functions / JSX |
| `renderless-components` | Logic-only components exposing rendering via scoped slots |
| `nuxt` | Nuxt apps, server routes, useFetch, middleware, hybrid rendering |
| `vueuse-functions` | Apply VueUse composables for concise Vue/Nuxt features |

## React

| Skill | When to use |
|-------|-------------|
| `react-2026` | New React project or modernizing with current stack |
| `react-composition-2026` | Component APIs, shared UI libraries, refactoring prop-heavy components |
| `hooks-pattern` | Reusable stateful logic via custom React hooks |
| `react-data-fetching` | TanStack Query, SWR, Suspense, caching, optimistic updates |
| `react-render-optimization` | Reducing re-renders, memoization, state design, React perf |
| `react-server-components` | Zero-bundle server rendering, server-only data access |
| `react-selective-hydration` | Prioritize hydrating interactive components in React 18+ streaming SSR |
| `vercel-react-best-practices` | React/Next.js performance optimization per Vercel engineering guidelines |

## Design Patterns (GoF / OOP)

| Skill | When to use |
|-------|-------------|
| `singleton-pattern` | Exactly one shared instance needed across the app |
| `observer-pattern` | Decoupled pub/sub, multiple parts react to state changes |
| `proxy-pattern` | Intercept property access/assignment — validation, logging, access control |
| `factory-pattern` | Dynamic object creation without `new`, centralized creation logic |
| `prototype-pattern` | Many objects of same type sharing methods via prototype chain |
| `module-pattern` | Code organization with public/private boundaries |
| `mixin-pattern` | Sharing behavior across objects/classes without inheritance |
| `singleton-pattern` | Single shared instance coordination |
| `command-pattern` | Undo/redo, queued operations, decouple invoker from executor |
| `mediator-pattern` | Centralized component communication, reduce direct coupling |
| `flyweight-pattern` | Memory optimization for large numbers of similar objects |

## Component / UI Patterns

| Skill | When to use |
|-------|-------------|
| `compound-pattern` | Related components (tabs, accordions, dropdowns) coordinating via implicit state |
| `container-presentational` | Separate data fetching/logic from presentation (Vue) |
| `presentational-container-pattern` | Separate view and logic for testability and reuse |
| `provider-pattern` | Share data across component trees, avoid prop drilling |
| `data-provider` | Abstract data fetching via renderless components and scoped slots |
| `hoc-pattern` | Share cross-cutting concerns (auth, logging) across React components |
| `render-props-pattern` | Share rendering logic by passing a render function as prop |
| `ai-ui-patterns` | Chatbots, AI assistants, streaming UIs in React |

## Performance Optimization

| Skill | When to use |
|-------|-------------|
| `webperf` | General web performance audit — entry point to all webperf-* skills |
| `webperf-core-web-vitals` | LCP, CLS, INP analysis with guided debugging |
| `webperf-loading` | TTFB, FCP, render-blocking, font/script loading optimization |
| `webperf-interaction` | Slow interactions, scroll jank, INP debugging, long tasks |
| `webperf-media` | Image/video optimization, LCP images, lazy loading, layout shifts |
| `webperf-resources` | Network quality, adaptive loading, 2g/3g/4g strategies, save-data |
| `core-web-vitals` | "improve CWV", "fix LCP", "reduce CLS", "optimize INP" |
| `debug-optimize-lcp` | LCP performance, slow page loads, hero image render time |
| `performance` | "speed up my site", "optimize performance", "reduce load time" |
| `performance-optimization` | Performance regressions, profiling bottlenecks, load time improvement |
| `js-performance-patterns` | Hot paths, loops, DOM operations, caching, data structure choices |
| `virtual-lists` | Rendering lists/tables with hundreds–thousands of items |
| `web-quality-audit` | Full audit: performance + accessibility + SEO + best practices |

## Loading & Code Splitting Patterns

| Skill | When to use |
|-------|-------------|
| `bundle-splitting` | Large JS bundle affecting load times, reduce FCP/LCP |
| `dynamic-import` | Lazy-load modules not required at startup |
| `static-import` | Load-time imports benefiting from static analysis/tree shaking |
| `import-on-interaction` | Load heavy components only after user interaction |
| `import-on-visibility` | Load below-fold components when scrolled into view |
| `route-based` | Route-level code splitting for SPAs |
| `tree-shaking` | Eliminate unused exports from bundles |
| `prefetch` | Preload predicted next resources during idle time |
| `preload` | Prioritize critical late-discovered resources (fonts, hero images) |
| `prpl` | PRPL pattern for PWA/initial page load (push, render, pre-cache, lazy) |
| `compression` | Gzip/Brotli server-side compression for network transfer |
| `loading-sequence` | FCP/LCP/FID improvement by reordering resource discovery |
| `third-party` | Mitigate third-party scripts (analytics, ads) degrading performance |
| `vite-bundle-optimization` | Vite-specific code splitting, dependency management, slow builds |

## SSR / Rendering Strategies

| Skill | When to use |
|-------|-------------|
| `server-side-rendering` | SSR for React — faster initial loads, better SEO |
| `static-rendering` | SSG — pages don't change per request, build-time HTML |
| `incremental-static-rendering` | ISR — static pages needing periodic updates without full rebuild |
| `streaming-ssr` | Streaming HTML chunks for faster TTFB/FCP |
| `client-side-rendering` | Highly interactive apps where SEO is not priority |
| `islands-architecture` | Content-heavy sites with small interactive regions |
| `progressive-hydration` | Defer JS hydration for non-critical server-rendered sections |
| `react-selective-hydration` | Prioritize interactive component hydration in React 18 streaming |
| `async-components` | Vue heavy components loaded on demand, not on initial render |

## Build Tools

| Skill | When to use |
|-------|-------------|
| `vite` | Vite config, plugins, SSR, Vite 8 Rolldown migration, library builds |
| `vite-bundle-optimization` | Vite bundle size, code splitting, dependency issues |
| `pnpm` | pnpm commands, workspaces, catalogs, patches, overrides |

## Security

| Skill | When to use |
|-------|-------------|
| `security-and-hardening` | User input, auth, data storage, external integrations, untrusted data |
| `best-practices` | "security audit", "check for vulnerabilities" |

## Accessibility

| Skill | When to use |
|-------|-------------|
| `accessibility` | WCAG 2.2 audit, "a11y audit", screen reader support, keyboard nav |
| `a11y-debugging` | Chrome DevTools a11y debugging — ARIA, focus states, tap targets, contrast |

## SEO

| Skill | When to use |
|-------|-------------|
| `seo` | Meta tags, structured data, sitemaps, "improve SEO" |

## UI / Design

| Skill | When to use |
|-------|-------------|
| `frontend-ui-engineering` | Building/modifying user-facing interfaces, production-quality UI |
| `web-design-guidelines` | "review my UI", "audit design", "check UX", WCAG/best-practices compliance |
| `view-transitions` | View Transitions API for animated page/state transitions |

## Git & CI/CD

| Skill | When to use |
|-------|-------------|
| `git-workflow-and-versioning` | Committing, branching, conflict resolution, parallel work streams |
| `git-guardrails-claude-code` | Block dangerous git commands in Claude Code hooks |
| `using-git-worktrees` | Feature work needing isolation; before executing implementation plans |
| `ci-cd-and-automation` | Build/deployment pipelines, quality gates, test runners in CI |
| `setup-pre-commit` | Husky pre-commit hooks, lint-staged, Prettier, type-check, tests |
| `finishing-a-development-branch` | Implementation complete — guide merge/PR/cleanup decision |

## Project Management & Documentation

| Skill | When to use |
|-------|-------------|
| `prd-to-plan` | Turn a PRD into a phased implementation plan (tracer bullets) |
| `prd-to-issues` | Convert PRD into independently-grabbable GitHub issues |
| `write-a-prd` | Create a PRD via user interview + codebase exploration |
| `refining-jira-tickets` | Refine a Jira ticket — fetch, analyze, ask questions, produce comment |
| `triage-issue` | Triage a bug — explore codebase, find root cause, create GitHub issue |
| `github-triage` | Triage GitHub issues via label-based state machine |
| `qa` | Conversational QA session that files GitHub issues |
| `documentation-and-adrs` | Architectural decisions, API changes, feature context for future devs |
| `ubiquitous-language` | DDD-style domain glossary, canonical terms, UBIQUITOUS_LANGUAGE.md |
| `deprecation-and-migration` | Removing old systems/APIs, migrating users, sunsetting code |
| `request-refactor-plan` | Plan a refactor with tiny commits via interview → GitHub issue |
| `api-and-interface-design` | Designing REST/GraphQL APIs, module boundaries, type contracts |
| `design-an-interface` | Generate multiple radically different interface designs via parallel agents |

## Chrome DevTools & Browser Automation

| Skill | When to use |
|-------|-------------|
| `chrome-devtools` | DOM inspection, debugging, performance, network, browser automation (MCP) |
| `chrome-devtools-cli` | Shell scripts/commands to automate browser tasks via CLI |
| `browser-testing-with-devtools` | Testing in real browsers, capturing runtime data |

## Ideation & Refinement

| Skill | When to use |
|-------|-------------|
| `brainstorming` | Before any creative work (see Workflow section) |
| `idea-refine` | Iterative idea refinement via divergent/convergent thinking |
| `grill-me` | Stress-test a plan — relentless interview until shared understanding |

## Skills & Meta

| Skill | When to use |
|-------|-------------|
| `write-a-skill` | Create new agent skills with proper structure and bundled resources |
| `writing-skills` | Creating, editing, or verifying skills before deployment |
| `scaffold-exercises` | Create exercise directory structures with problems/solutions/explainers |

## Miscellaneous

| Skill | When to use |
|-------|-------------|
| `obsidian-vault` | Search, create, manage Obsidian notes with wikilinks |
| `edit-article` | Edit/revise/improve article drafts |
| `context-engineering` | Optimize agent context, configure rules files |
| `incremental-implementation` | Large tasks — deliver changes in safe incremental steps |
| `scayle-docs` | Look up SCAYLE platform docs (storefront framework, APIs, panel, webhooks) on demand from cached llms.txt |
