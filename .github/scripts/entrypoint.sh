#!/bin/bash

echo "Starting Frequency Analyzer..."

# Run the Python frequency analyzer
FREQ_RESULT=$(python3 /app/.github/scripts/frequency.py /app/data.txt)

# Run the README update script with frequency result and GitHub username
bash /app/.github/scripts/update_readme.sh "$FREQ_RESULT" "$GITHUB_USER"

echo "Process Completed!"
