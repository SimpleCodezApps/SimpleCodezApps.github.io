#!/usr/bin/env bash
# Builds myteamlive/releases/<version>.md pages from the raw changelog
# snippets in myteamlive/releases/raw/<version>, adding the front matter
# the release notes page needs to pick them up.
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
RAW_DIR="$REPO_ROOT/myteamlive/releases/raw"
OUT_DIR="$REPO_ROOT/myteamlive/releases"

if [ ! -d "$RAW_DIR" ]; then
  echo "Raw releases directory not found: $RAW_DIR" >&2
  exit 1
fi

for src in "$RAW_DIR"/*; do
  [ -f "$src" ] || continue
  version="$(basename "$src")"
  dest="$OUT_DIR/$version.md"

  {
    printf -- '---\n'
    printf 'layout: myteamlive\n'
    printf 'permalink: /myteamlive/releases/%s/\n' "$version"
    printf 'title: "%s"\n' "$version"
    printf 'section_logo: /images/MyTeamLive.png\n'
    printf 'section_name: MyTeamLive\n'
    printf 'section_url: /myteamlive/overview\n'
    printf -- '---\n\n'

    awk -v ver="$version" '
      NR == 1 && $0 ~ ("^v?" ver " Release notes[[:space:]]*$") { next }
      {
        line = $0
        gsub(/^[[:space:]]+|[[:space:]]+$/, "", line)
        if (line == "") next
        sub(/^-[[:space:]]*/, "", line)
        print "- " line
      }
    ' "$src"
  } > "$dest"

  echo "Wrote $dest"
done
