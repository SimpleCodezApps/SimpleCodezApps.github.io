# Status page without analytics

Add a `/status` page that does not load the SimpleAnalytics script and shows
which version of the site and app is live.

## Changes

1. `_data/status.yml`: add `myteamlive_version: 2.1.0` (latest in
   `myteamlive/releases/`). Update by hand when a new release ships.
2. `status.html`: `layout: null`, `permalink: /status`, plain standalone HTML
   (no theme layout, so no footer include and no analytics). Shows:
   - MyTeamLive app version from `site.data.status.myteamlive_version`
   - Site revision from `site.github.build_revision` (commit SHA on GitHub
     Pages; shows "local" when empty)
   - Build time from `site.time`
   Includes `<meta name="robots" content="noindex">`.
3. Verify with `bundle exec jekyll build` that `_site/status.html` has no
   `simpleanalyticscdn` reference.
