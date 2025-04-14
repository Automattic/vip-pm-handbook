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

# Generate table of contents
for dir in $(find . -type d -name "[0-9]*-*" | sort); do
  section_name=$(basename "$dir" | sed 's/^[0-9]*-//')
  echo "- [${section_name//-/ }](#${section_name//-/-})" >> "$OUTPUT_FILE"
  
  for file in $(find "$dir" -type f -name "*.md" | sort); do
    subsection_name=$(basename "$file" .md | sed 's/^[0-9]*-//')
    echo "  - [${subsection_name//-/ }](#${subsection_name//-/-})" >> "$OUTPUT_FILE"
  done
  
  echo "" >> "$OUTPUT_FILE"
done

echo "" >> "$OUTPUT_FILE"

# Combine all markdown files
for dir in $(find . -type d -name "[0-9]*-*" | sort); do
  section_name=$(basename "$dir" | sed 's/^[0-9]*-//')
  section_number=$(basename "$dir" | grep -o "^[0-9]*")
  
  echo "## $section_number. ${section_name//-/ }" >> "$OUTPUT_FILE"
  echo "" >> "$OUTPUT_FILE"
  
  for file in $(find "$dir" -type f -name "*.md" | sort); do
    subsection_name=$(basename "$file" .md | sed 's/^[0-9]*-//')
    subsection_number=$(basename "$file" | grep -o "^[0-9]*")
    
    echo "### $section_number.$subsection_number ${subsection_name//-/ }" >> "$OUTPUT_FILE"
    echo "" >> "$OUTPUT_FILE"
    
    # Add file content (excluding any existing headers)
    cat "$file" | grep -v "^#" >> "$OUTPUT_FILE"
    echo "" >> "$OUTPUT_FILE"
  done
done

echo "Complete handbook has been generated as $OUTPUT_FILE"
