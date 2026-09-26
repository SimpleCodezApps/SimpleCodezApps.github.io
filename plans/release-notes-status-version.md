# Set status page version from release notes script

`scripts/generate-release-notes.sh` already iterates the versions in
`myteamlive/releases/raw/`. After generating the pages, have it pick the
highest version (`sort -V`, so 2.10.0 > 2.9.0) and rewrite
`_data/status.yml` with `myteamlive_version: <latest>`, keeping the comment.
Update the comment in `_data/status.yml` to say the script maintains it.
Verify by running the script: output for 2.1.0 should leave the file unchanged
apart from the comment.
