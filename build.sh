#!/bin/sh
# Wraps src/home.html into a complete, hostable index.html.
cd "$(dirname "$0")"
{
  printf '<!doctype html>\n<html lang="en">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width, initial-scale=1">\n</head>\n<body>\n'
  cat src/home.html
  printf '</body>\n</html>\n'
} > index.html
