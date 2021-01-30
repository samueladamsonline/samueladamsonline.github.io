#!/bin/bash

# Stop on failure.
set -e

# Navigate to project directory.
cd "$( dirname "${BASH_SOURCE[0]}" )" && cd ..
PROJECT_DIR="$( pwd )"
DOCS_DIR="$PROJECT_DIR/docs"

# Clear and remake empty docs directory.
rm -rf "$DOCS_DIR"
mkdir "$DOCS_DIR"

# Add CNAME file to docs directory.
touch "$DOCS_DIR/CNAME"
echo "www.samueladams.dev" >> "$DOCS_DIR/CNAME"

# Generate HTML files with Hugo.
hugo -d "$DOCS_DIR"
