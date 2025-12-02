#!/bin/bash
# Build script for Abstract Algebra Course Guide

# Create build directory if it doesn't exist
mkdir -p build

# Copy main.tex to build directory and compile there
cp main.tex build/
cp bibliography.bib build/
cp -r src/ build/

# Navigate to build directory
cd build

# Run LaTeX compilation
echo "Running pdflatex..."
pdflatex main.tex

# Run biber for bibliography
echo "Running biber..."
biber main

# Run pdflatex again to resolve references
echo "Running pdflatex (second pass)..."
pdflatex main.tex

# Run pdflatex one more time to ensure everything is resolved
echo "Running pdflatex (final pass)..."
pdflatex main.tex

# Copy final PDF to root directory
cp main.pdf ../

echo "Build complete! PDF available as main.pdf"