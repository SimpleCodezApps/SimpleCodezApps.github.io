# Fix stale theme details in CLAUDE.md

CLAUDE.md describes the old `cayman` theme setup. The site now uses
`mmistakes/minimal-mistakes@4.26.2` (dark skin). Update the Architecture and
Key Files sections to match `_config.yml` and the current files:

- Stack: minimal-mistakes remote theme, dark skin
- Plugins: add `jekyll-include-cache`
- Layouts: `_layouts/myteamlive.html` extends the theme's `single` layout; the
  homepage uses `splash`; sidebar nav comes from `_data/navigation.yml`
- Styles: `assets/css/main.scss`; theme overrides in `_includes/`
- Front matter example: add `permalink`, use `section_url: /myteamlive/overview`
