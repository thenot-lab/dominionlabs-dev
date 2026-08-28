#!/usr/bin/env bash
# Cloudflare Pages deploy for dominionlabs.dev
# First run: requires `wrangler login` once (opens browser, Brayd-hand).
# After auth, every subsequent run is one-shot deploy.
set -euo pipefail
cd "$(dirname "$0")"

NPM_GLOBAL_BIN="$HOME/AppData/Roaming/npm"
WRANGLER="$NPM_GLOBAL_BIN/wrangler.cmd"
[ -x "$WRANGLER" ] || WRANGLER="wrangler"

echo "=== Deploy to Cloudflare Pages ==="
"$WRANGLER" pages deploy public/ --project-name=dominionlabs-dev --commit-dirty=true 2>&1
