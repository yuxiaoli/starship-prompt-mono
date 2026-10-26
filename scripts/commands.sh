# Command/configuration reference. Copy individual Bash examples from repo root.
# Never execute/source this whole file. This repo contains a Starship TOML theme,
# not an app/CLI/package. No installer, build, test suite or release script exists.
# No shell initialization, prompt render or configuration installation was run
# during authoring. Starship/shell-integration versions are not pinned here.

# === Inspect/edit the actual checked-out theme (README editor procedure) ===
# Editing changes the source file; use a private copy if preserving checkout.
# vim starship.toml
# Top-level palette selects grey (default), silver or lime.
# [character] success_symbol/error_symbol currently use @ (xonsh convention).
# README suggests shell-specific symbols; Starship's $/[]/() format characters
# need escaping when used literally. Change both success and error symbols.
# Theme includes username/hostname/directory/$all/time; prompt output can reveal
# local context. Runtime Starship modules may inspect files/execute tool versions.

# === Static TOML syntax validation, not Starship render/schema acceptance ===
# Requires Python 3.11+ standard-library tomllib; reads ONLY this theme file.
python3 -c 'import pathlib,tomllib; tomllib.loads(pathlib.Path("starship.toml").read_text(encoding="utf-8")); print("TOML syntax OK")'
# A syntactically valid TOML file can still contain unsupported Starship settings.
# No claim is made about fonts, terminal colors, version compatibility or GUI QA.

# === Existing Starship-enabled Bash session: choose this file, no copy/overwrite ===
# Prerequisite: Starship and the current shell integration are already installed
# and trusted. This changes ONLY the current process environment, not shell rc.
# Record any existing STARSHIP_CONFIG first and restore that value afterward.
export STARSHIP_CONFIG="$PWD/starship.toml"
# Default lookup otherwise is ~/.config/starship.toml. If this variable was
# previously unset, unset returns to that default (not to an earlier custom value):
# unset STARSHIP_CONFIG

# PowerShell equivalent (comment, NOT Bash), for an already integrated session:
# $env:STARSHIP_CONFIG = (Resolve-Path .\starship.toml).Path
# Xonsh equivalent (comment, NOT Bash), with existing prompt_starship integration:
# $STARSHIP_CONFIG = os.path.abspath("starship.toml")
# The Xonsh example requires os already imported, or first: import os
# README links xontrib-prompt-starship; installing/loading that external extension
# is separate, unpinned work, not a command implemented by this theme repository.

# README's two wget URLs are ALTERNATIVES (upstream fork vs this repo), not two
# required downloads. They save in current directory, not automatically ~/.config;
# repeated downloads can create suffixed files rather than update active config.
# Prefer the reviewed checked-out starship.toml above; do not overwrite another
# theme or append shell startup commands without independently reviewing it.
# No "starship-prompt-mono" executable, --validate or repo-specific CLI is invented.
# Configuration path and format behavior:
# https://starship.rs/config/

