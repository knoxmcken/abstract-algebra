#!/bin/bash
# Count words in the LaTeX source files

echo "Word count for Abstract Algebra Course Guide:"
echo "=============================================="

total_words=0

for file in src/chapters/*.tex; do
    if [ -f "$file" ]; then
        words=$(detex "$file" 2>/dev/null | wc -w)
        echo "$(basename "$file"): $words words"
        total_words=$((total_words + words))
    fi
done

echo "=============================================="
echo "Total words in chapters: $total_words"
echo ""
echo "Note: Install 'detex' package for more accurate word counting"
echo "Alternative: texcount can be used for more detailed analysis"