# autoarchiveurl

A LaTeX package that overrides the `\url` command to refer to snapshots on archive.org.

## Features
- Overrides `\url` so that all URLs are automatically rewritten to their [Internet Archive](https://web.archive.org/) snapshot equivalents.
- The original `\url` command is still available as `\autoarchiveurl@originalurl` after loading this package.

## Installation
First, make sure you have TeX Live or another LaTeX distribution installed:

```sh
# Ubuntu/Debian
sudo apt-get install texlive-latex-base texlive-latex-recommended texlive-latex-extra

# macOS (with Homebrew)
brew install --cask mactex

# Windows
# Download and install from https://www.tug.org/texlive/
```

## Usage
1. Build the package (see below).
2. In your LaTeX document:

```latex
\usepackage{autoarchiveurl}
```

- Use `\url{https://example.com}` as usual; it will point to the archive snapshot.
- If you need the original behavior, use `\makeatletter\autoarchiveurl@originalurl{https://example.com}\makeatother` since the command uses the `@` character.

## Building
Artifacts (`.sty`, `.pdf`) are generated in the `build/` directory:

```sh
make all
```

## Testing
Test files are in the `test/` directory. They are built automatically as part of the GitHub Actions workflow.

## CTAN Submission
For CTAN, submit:
- `autoarchiveurl/autoarchiveurl.dtx`
- `autoarchiveurl/autoarchiveurl.ins`
- `build/autoarchiveurl.pdf` (documentation)

## License
[Specify your license here]
