#!/bin/bash

# Convert Markdown files to PDF
# Requirements:
#   macOS:  brew install pandoc && brew install --cask mactex-no-gui
#   Ubuntu: sudo apt-get install pandoc texlive-xetex texlive-fonts-recommended

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Check if pandoc is installed
if ! command -v pandoc &> /dev/null; then
    echo "Error: pandoc is not installed."
    echo ""
    echo "Install instructions:"
    echo "  macOS:  brew install pandoc"
    echo "  Ubuntu: sudo apt-get install pandoc"
    exit 1
fi

# Check if xelatex is installed
if ! command -v xelatex &> /dev/null; then
    echo "Error: xelatex is not installed."
    echo ""
    echo "Install instructions:"
    echo "  macOS:  brew install --cask mactex-no-gui"
    echo "  Ubuntu: sudo apt-get install texlive-xetex texlive-fonts-recommended"
    exit 1
fi

echo "Converting Markdown files to PDF..."

# Convert Flutter guidelines
if [ -f "$SCRIPT_DIR/Flutter/FLUTTER.md" ]; then
    echo "  Converting Flutter/FLUTTER.md..."
    pandoc "$SCRIPT_DIR/Flutter/FLUTTER.md" \
        -o "$SCRIPT_DIR/Flutter/FLUTTER.pdf" \
        --pdf-engine=xelatex \
        -V geometry:margin=1in \
        -V colorlinks=true \
        -V linkcolor=blue \
        -V urlcolor=blue
    echo "  Created: Flutter/FLUTTER.pdf"
fi

# Convert iOS guidelines
if [ -f "$SCRIPT_DIR/iOS/iOS.md" ]; then
    echo "  Converting iOS/iOS.md..."
    pandoc "$SCRIPT_DIR/iOS/iOS.md" \
        -o "$SCRIPT_DIR/iOS/iOS.pdf" \
        --pdf-engine=xelatex \
        -V geometry:margin=1in \
        -V colorlinks=true \
        -V linkcolor=blue \
        -V urlcolor=blue
    echo "  Created: iOS/iOS.pdf"
fi

echo ""
echo "Done!"
