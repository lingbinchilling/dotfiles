#!/bin/bash

WALL="$1"
NAME=$(basename "$WALL" | sed 's/\.[^.]*$//')

OUTPUT="$HOME/dotfiles/wallust/.config/wallust/colors/$NAME.txt"

# Skip if theme already exists
if [ -f "$OUTPUT" ]; then
    echo "Theme already exists: $OUTPUT"
    exit 0
fi

wallust run "$WALL"

mv "$HOME/.cache/wallust/generated-colors.txt" "$OUTPUT"

echo "Created: $OUTPUT"
