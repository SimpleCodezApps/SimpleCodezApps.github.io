<!-- .github/copilot-instructions.md - guidance for AI coding agents working on this repo -->
# Copilot instructions (concise, repo-specific)

This is a small Jekyll-based static site (GitHub Pages). Below are the concrete, discoverable facts an automated coding agent needs to be productive here.

- Project type and build
  - Jekyll site: `_config.yml` sets `remote_theme: pages-themes/cayman@v0.2.0` and uses `jekyll-remote-theme` and `jekyll-seo-tag` plugins.
  - Local preview: prefer using the user's environment (Ruby + Bundler). Typical commands: `bundle exec jekyll serve` or `bundle exec jekyll build` (only recommend if Bundler/Gems are present).
  - GitHub Pages will build with the remote theme; don't assume a local theme gem is installed.

- Important files and what they control
  - `_config.yml` — site metadata (title/description), theme, and plugins. Update here for global site settings.
  - `_layouts/default.html` — main HTML skeleton and where CSS is included. Change this to edit head/meta or global includes.
  - `assets/css/style.scss` — main stylesheet (SASS with front matter). It imports the theme stylesheet via `@import "{{ site.theme }}"` and contains project-specific overrides.
  - `images/` — static images used by CSS (e.g., background image in `style.scss`).
  - Root pages: `privacy.md`, `twitch-callback.md`, etc. These are content pages rendered into the site.
  - `CNAME` — custom domain configuration for GitHub Pages; do not remove or expose secrets here.

- Conventions and patterns to follow
  - Prefer edits to templates and SCSS rather than injecting inline styles into pages. The layout includes CSS via `/assets/css/style.css?v={{ site.github.build_revision }}` — keep that cache-busting approach.
  - Keep content in Markdown pages at repo root; layouts live in `_layouts/` and partials may be included using Liquid (`{% include ... %}`).
  - Avoid adding native build artifacts or binary blobs to the repo (images are ok under `images/`).

- Integration / external hooks
  - `twitch-callback.md` indicates an external integration point (Twitch). If modifying related pages, preserve callback route/URL details and do not commit secrets.
  - Remote theme means changes to theme-provided components must be done as overrides in `assets` or in layout includes — don't attempt to modify remote theme files directly.

- Developer workflow notes (discoverable)
  - No tests detected in repo root; focus on content, layout, and asset edits.
  - Commits in repository history follow short imperative messages (see `AGENTS.md` for a commit-style guideline). If in doubt, use concise, imperative commit messages under ~50 chars.

- When to open a human review
  - Significant layout/head changes (meta tags, fonts, CSP) — ask a human to confirm SEO and analytics decisions.
  - Any change that might affect the `CNAME` or external callback URLs.

- Examples (where to edit for common tasks)
  - Change site title/description: update `_config.yml` `title` and `description`.
  - Change global head (fonts/meta): edit `_layouts/default.html` (head section).
  - Change background image or visual styles: edit `assets/css/style.scss` and reference images in `images/`.

If anything here is unclear or you'd like me to tailor this to a strict editing checklist (e.g., PR templates, branch naming, local setup commands), tell me which area to expand and I'll update this file.
