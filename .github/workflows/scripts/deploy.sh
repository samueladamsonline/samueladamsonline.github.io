#!/bin/bash

# Stop on failure.
set -e

# Clean docs directory.
rm -rf docs/

# Install Hugo
sudo apt-get update
sudo apt-get install hugo=0.68.3-1

# Generate HTML files.
hugo -d docs/
