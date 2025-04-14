#!/bin/bash

# Output file
OUTPUT_FILE="complete-handbook.md"

# Clear the output file if it exists
> "$OUTPUT_FILE"

# Add title
echo "# WordPress VIP Product Management Handbook" > "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"
echo "Last updated: $(date +"%Y-%m-%d")" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"
echo "## Table of Contents" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

# Generate table of contents with working markdown links (no numbers)
for dir in $(find . -type d -name "[0-9]*-*" | sort); do
  section_name=$(basename "$dir" | sed 's/^[0-9]*-//')
  section_anchor=$(echo "$section_name" | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g')
  echo "- [${section_name//-/ }](#${section_anchor})" >> "$OUTPUT_FILE"
  for file in $(find "$dir" -type f -name "[0-9][0-9]-*.md" | sort); do
    subsection_name=$(basename "$file" .md | sed 's/^[0-9]*-//')
    subsection_anchor=$(echo "$subsection_name" | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g')
    if [[ $(basename "$file") != "01-index.md" ]]; then
      echo "  - [${subsection_name//-/ }](#${subsection_anchor})" >> "$OUTPUT_FILE"
    fi
  done
  echo "" >> "$OUTPUT_FILE"
done

echo "" >> "$OUTPUT_FILE"

# Combine all markdown files with anchors (no numbers)
for dir in $(find . -type d -name "[0-9]*-*" | sort); do
  section_name=$(basename "$dir" | sed 's/^[0-9]*-//')
  section_anchor=$(echo "$section_name" | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g')
  echo -e "\n<a id=\"${section_anchor}\"></a>" >> "$OUTPUT_FILE"
  echo "## ${section_name//-/ }" >> "$OUTPUT_FILE"
  echo "" >> "$OUTPUT_FILE"
  for file in $(find "$dir" -type f -name "[0-9][0-9]-*.md" | sort); do
    subsection_name=$(basename "$file" .md | sed 's/^[0-9]*-//')
    subsection_anchor=$(echo "$subsection_name" | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g')
    if [[ $(basename "$file") == "01-index.md" ]]; then
      # Index file: include its content but skip the h2 heading
      tail -n +3 "$file" >> "$OUTPUT_FILE"
      echo "" >> "$OUTPUT_FILE"
    else
      echo -e "\n<a id=\"${subsection_anchor}\"></a>" >> "$OUTPUT_FILE"
      echo "### ${subsection_name//-/ }" >> "$OUTPUT_FILE"
      echo "" >> "$OUTPUT_FILE"
      # Add file content (excluding any existing headers)
      cat "$file" | grep -v "^#" >> "$OUTPUT_FILE"
      echo "" >> "$OUTPUT_FILE"
    fi
  done
done

echo "Complete handbook has been generated as $OUTPUT_FILE"
