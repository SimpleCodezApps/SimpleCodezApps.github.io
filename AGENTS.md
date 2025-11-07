# AGENTS

This document tells autonomous or semi-autonomous contributors how to work inside this repository safely and consistently. Assume the site is deployed via GitHub Pages at `SimpleCodezApps.github.io`, which runs on Jekyll with the `pages-themes/cayman` remote theme.

## Project Snapshot
- Purpose: marketing microsite for SimpleCodez apps with privacy information and OAuth callback instructions.
- Stack: Jekyll + GitHub Pages + `jekyll-remote-theme` and `jekyll-seo-tag`.
- Entry points: `README.md` (renders as `index.html`), `privacy.md`, `twitch-callback.md`.
- Branding: custom domain configured through `CNAME`; do not change the file without explicit direction.

## Repository Layout
- `_config.yml` — site metadata, theme, plugins. Keep YAML valid; GitHub Pages fails hard on syntax errors.
- `_layouts/` — HTML scaffolding overrides. Reuse includes before creating new layouts.
- `assets/`, `images/` — static files. Keep paths consistent with Markdown references.
- `privacy.md`, `twitch-callback.md` — standalone policy pages published verbatim.
- `README.md` — acts as the homepage content; supports Markdown and inline HTML.

## Development Workflow
1. Ensure Ruby 3.x and Bundler are installed locally.
2. Install dependencies: `bundle install --path vendor/bundle`.
3. Serve locally: `bundle exec jekyll serve --livereload`.
4. Validate before committing: `bundle exec jekyll build`.

Because GitHub Pages runs in safe mode, only the listed plugins are available. Avoid adding unsupported plugins or custom Ruby code; opt for Markdown/HTML solutions.

## Content Guidelines
- Favor Markdown for content; drop to raw HTML only for layout tweaks that Markdown cannot express.
- Keep headlines concise; the Cayman theme converts first-level headings into hero text automatically.
- Image assets should be optimized (≤1 MB) and stored under `images/` or `assets/`.
- Policy pages must remain plaintext/Markdown without embedded scripts or external trackers.
- Link internal pages with relative URLs (e.g., `/privacy`) so the site works on both the custom domain and `github.io`.

## Automation Guardrails
- Never delete or rename `CNAME`; doing so breaks the custom domain.
- When updating `_config.yml`, re-run `bundle exec jekyll build` to catch YAML or SEO tag issues early.
- Use descriptive commit messages summarizing content or configuration changes.
- If you introduce new pages, update navigation links (typically in `README.md` or layout files) so visitors can reach them.

## Support Checklist for New Tasks
1. Read this file plus `_config.yml` to confirm expectations.
2. Describe the planned change to the user for confirmation when it affects branding, domain config, or privacy copy.
3. After implementing, run the local build and share any warnings in the task hand-off.
4. Outline manual QA steps (e.g., “visit `/twitch-callback` to confirm the instructions render correctly”) in the response.

Following this playbook keeps the GitHub Pages deployment stable while giving maintainers clear visibility into each change.
