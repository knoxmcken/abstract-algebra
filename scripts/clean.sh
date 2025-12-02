#!/bin/bash
# Clean build artifacts

echo "Cleaning build directory..."
rm -rf build/*
rm -f main.pdf
rm -f *.aux *.log *.bbl *.blg *.bcf *.run.xml *.toc *.out *.fdb_latexmk *.fls

echo "Clean complete!"