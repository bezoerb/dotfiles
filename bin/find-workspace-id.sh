#!/bin/bash

TARGET_PATH="$1"

if [ -z "$TARGET_PATH" ]; then
  echo "Usage: $0 /absolute/path/to/project"
  exit 1
fi

# Normalize to file URI format used by VS Code
TARGET_URI="file://$TARGET_PATH"

WORKSPACE_DIR="$HOME/Library/Application Support/Code/User/workspaceStorage"

if [ ! -d "$WORKSPACE_DIR" ]; then
  echo "workspaceStorage directory not found."
  exit 1
fi

echo "Searching for workspace ID matching:"
echo "$TARGET_URI"
echo

FOUND=0

for dir in "$WORKSPACE_DIR"/*; do
  if [ -f "$dir/workspace.json" ]; then
    if grep -q "$TARGET_URI" "$dir/workspace.json"; then
      WORKSPACE_ID=$(basename "$dir")
      echo "✅ Found workspace ID:"
      echo "$WORKSPACE_ID"
      echo "Location:"
      echo "$dir"
      echo
      FOUND=1
    fi
  fi
done

if [ "$FOUND" -eq 0 ]; then
  echo "❌ No matching workspace ID found."
fi