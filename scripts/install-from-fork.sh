#!/usr/bin/env bash
set -euo pipefail

repo_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$repo_dir"

cargo build --profile dev-release --features web --locked
mkdir -p "$HOME/.local/bin"
install -m 755 target/dev-release/aoe "$HOME/.local/bin/aoe"
"$HOME/.local/bin/aoe" --version
