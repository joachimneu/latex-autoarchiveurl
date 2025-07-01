# Container Setup for LaTeX Package Development

This project uses consistent container environments for both development (GitHub Codespaces) and CI builds. This ensures that:

- When you develop in GitHub Codespaces, you get the same environment that CI uses
- LaTeX compilation works the same locally and in CI
- Packages and versions are kept consistent

## Container Environment

- Base image: `mcr.microsoft.com/devcontainers/base:ubuntu`
- LaTeX packages:
  - texlive-latex-base
  - texlive-latex-recommended 
  - texlive-latex-extra
  - latexmk

## VS Code Extensions

- LaTeX Workshop: Provides LaTeX preview, compilation, and IntelliSense
- Markdown All in One: For better README editing

## Package Development Workflow

1. Open the project in GitHub Codespaces or a local Dev Container
2. Make changes to files in the `autoarchiveurl/` directory
3. Run `make all` to build the package
4. Test with files in the `test/` directory

The container is configured to automatically build LaTeX files when they're saved.

## Customization

See `.devcontainer/devcontainer.json` for development environment settings and
`.github/workflows/ctan-build.yml` for CI settings.
