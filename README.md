# Abstract Algebra Course Guide

This repository contains the source code for the book titled *Abstract Algebra Course Guide*. The book is written in LaTeX and maintained in this GitHub repository.

## Accessing the Draft Version of the Book
The PDF compiled version of the book is available for readers to access via the following link: [draft](https://drive.google.com/file/d/1zNl6I3fQSuGTvfUzc_ESCSNKDieW9fUH/view?usp=share_link). This version represents a working draft of the book and its formatting is subject to change as the author continues to refine the content.

## Project Structure

The repository is organized into the following structure:

```
abstract-algebra/
├── src/                       # Source content
│   ├── chapters/             # Chapter content
│   ├── exercises/            # All exercises
│   ├── problems/             # All problems  
│   ├── solutions/            # Solutions and answers
│   └── preamble/             # LaTeX setup (packages, environments, macros)
├── assets/                   # Images, figures, diagrams
├── styles/                   # LaTeX style files
├── templates/                # Chapter and exercise templates
├── scripts/                  # Build and utility scripts
├── build/                    # Generated files (gitignored)
├── main.tex                  # Main document
├── bibliography.bib          # References
└── README.md                 # This file
```

## Building the Book

### Prerequisites
- LaTeX distribution (TeX Live, MikTeX, etc.)
- `pdflatex` command
- `biber` for bibliography processing

### Quick Build
```bash
./scripts/build.sh
```

### Manual Build
```bash
pdflatex main.tex
biber main
pdflatex main.tex
pdflatex main.tex
```

### Clean Build Artifacts
```bash
./scripts/clean.sh
```

## Development

### Adding New Chapters
1. Create chapter content: `src/chapters/chapterXX.tex`
2. Create exercises: `src/exercises/exercisesXX.tex`
3. Create problems: `src/problems/problemsXX.tex`
4. Create solutions: `src/solutions/answersXX.tex` and `src/solutions/solutionsXX.tex`
5. Add include statements in `main.tex`

### Using Templates
- Chapter template: `templates/chapter-template.tex`
- Exercise template: `templates/exercise-template.tex`

### Word Count
```bash
./scripts/word-count.sh
```

## License

This book is licensed under the GNU General Public License (GPL). See the LICENSE file for more information.


