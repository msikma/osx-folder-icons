#!/usr/bin/env bash
files=("aqua" "blue" "darkblue" "generic" "gray" "green" "orange" "pink" "red" "syft" "violet" "white" "yellow")
for i in "${files[@]}"; do
  echo "Building $i"
  iconutil --convert icns ./iconset/"$i".iconset && mv ./iconset/"$i".icns ./icns/
done
echo "Done"