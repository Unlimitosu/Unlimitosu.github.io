#!/bin/bash

if [ -z "$1" ]; then
  echo "ERROR: NO COMMIT MSG"
  exit 1
fi

echo "--- Running  ---"

echo "Step 1: git add ."
git add .

echo "Step 2: git commit -m \"$1\""
git commit -m "$1"

echo "Step 3: git push -u origin main"
git push -u origin main

echo "--- DONE ---"