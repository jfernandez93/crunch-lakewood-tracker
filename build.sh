#!/usr/bin/env sh
# Wrap src/app.html (body content) into a standalone index.html for static hosting.
set -e
cd "$(dirname "$0")"
{
  printf '<!doctype html>\n<html lang="en"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">\n'
  printf '<style>:root{color-scheme:light;padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0}img{max-width:100%%}[hidden]{display:none!important}</style>\n'
  printf '</head><body>\n'
  cat src/app.html
  printf '\n</body></html>\n'
} > index.html
echo "Built index.html"
