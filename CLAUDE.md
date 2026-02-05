# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Jekyll static site for SimpleCodez apps, deployed via GitHub Pages at `SimpleCodezApps.github.io`. Contains documentation for the MyTeamLive iOS app (a live streaming app for sports games with scoreboard overlays).

## Git

Always begin commit messages with "Claude: "

## Build Commands

```bash
# Install dependencies
bundle install --path vendor/bundle

# Local development with live reload
bundle exec jekyll serve --livereload

# Build site (validate before committing)
bundle exec jekyll build
```

## Architecture

- **Stack**: Jekyll + GitHub Pages with `pages-themes/cayman@v0.2.0` remote theme
- **Plugins**: `jekyll-remote-theme`, `jekyll-seo-tag` (only GitHub Pages safe-mode plugins)
- **Layouts**: `_layouts/default.html` (main shell with sidebar), `_layouts/myteamlive.html` (extends default with MyTeamLive header)

### Key Files

- `_config.yml` — Site metadata, theme, plugins. YAML errors break GitHub Pages builds.
- `README.md` — Renders as homepage (`index.html`)
- `CNAME` — Custom domain config. Never delete or rename.
- `assets/css/style.scss` — SASS stylesheet with theme overrides

### MyTeamLive Documentation

All MyTeamLive docs live in `myteamlive/` and use `layout: myteamlive` with front matter:
```yaml
layout: myteamlive
title: "Page Title"
section_logo: /images/MyTeamLive.png
section_name: MyTeamLive
section_url: /myteamlive/index
```

## Content Guidelines

- Prefer Markdown; use inline HTML only for layout that Markdown cannot express
- Images go in `images/`, keep under 1 MB
- Use relative URLs for internal links (e.g., `/privacy`, `/myteamlive/index`)
- When adding new pages, update navigation links in the relevant index page
