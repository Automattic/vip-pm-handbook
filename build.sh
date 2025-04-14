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

# List of section files in order
SECTIONS=(
  "01-Introduction.md"
  "02-Core-Principles.md"
  "03-Roles-and-Responsibilities.md"
  "04-Product-Development-Lifecycle.md"
  "05-Tools-and-Technologies.md"
  "06-Best-Practices.md"
  "07-Communication-and-Documentation.md"
  "08-Metrics-and-KPIs.md"
  "09-Training-and-Development.md"
  "10-Challenges-and-Solutions.md"
)

# Generate table of contents and collect anchors from each file
for section_file in "${SECTIONS[@]}"; do
  if [[ -f "$section_file" ]]; then
    # Get the section name from the first level 2 heading (##)
    section_name=$(grep -m1 '^## ' "$section_file" | sed 's/^## //')
    section_anchor=$(echo "$section_name" | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g')
    echo "- [${section_name}](#${section_anchor})" >> "$OUTPUT_FILE"
    # List all level 3 headings (###) as subsections
    grep '^### ' "$section_file" | sed 's/^### //' | while read -r subsection; do
      subsection_anchor=$(echo "$subsection" | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g')
      echo "  - [${subsection}](#${subsection_anchor})" >> "$OUTPUT_FILE"
    done
    echo "" >> "$OUTPUT_FILE"
  fi
done

echo "" >> "$OUTPUT_FILE"

# Combine all section files into the handbook, adding anchors for sections and subsections
for section_file in "${SECTIONS[@]}"; do
  if [[ -f "$section_file" ]]; then
    section_name=$(grep -m1 '^## ' "$section_file" | sed 's/^## //')
    section_anchor=$(echo "$section_name" | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g')
    echo -e "\n<a id=\"${section_anchor}\"></a>" >> "$OUTPUT_FILE"
    # Add section content, inserting anchors for subsections
    awk '
      /^### / {
        subsection=substr($0,5)
        gsub(/ /,"-",subsection)
        anchor=tolower(subsection)
        print "\n<a id=\"" anchor "\"></a>"
        print $0
        next
      }
      { print $0 }
    ' "$section_file" >> "$OUTPUT_FILE"
    echo "" >> "$OUTPUT_FILE"
  fi
done

echo "Complete handbook has been generated as $OUTPUT_FILE"
