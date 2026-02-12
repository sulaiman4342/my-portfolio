#!/bin/bash

# Create a ZIP file of the portfolio source code

echo "Creating portfolio source code ZIP file..."

# Create output directory if it doesn't exist
mkdir -p ../output

# Zip the project excluding unnecessary files
zip -r ../output/portfolio-source.zip . \
  -x "node_modules/*" \
  -x "dist/*" \
  -x ".git/*" \
  -x "*.log" \
  -x ".DS_Store"

echo "✓ ZIP file created at: ../output/portfolio-source.zip"
echo ""
echo "The ZIP file includes all source code and configuration files."
echo "To use it:"
echo "  1. Extract the ZIP file"
echo "  2. Run 'npm install' to install dependencies"
echo "  3. Run 'npm run dev' to start the development server"
