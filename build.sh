#!/usr/bin/env bash

red="\033[0;31m"
yellow="\033[0;33m"
reset="\033[0m"

find ./iconset -type d -name '*.iconset' -depth 1 | sort | while read path; do
  iconset=$(basename "$path")
  name="${iconset%.*}"
  icns="./iconset/$name.icns"
  echo -e "Building $red$name$reset ($yellow$path$reset)"
  iconutil --convert icns $path && mv $icns ./icns/
done

echo "Done"
