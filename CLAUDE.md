# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repo etiquette

- When merging pull requests, default to squash merge (`gh pr merge --squash`), not a merge commit or rebase.
- After every PR merge, delete both the remote and local feature branch (`gh pr merge --squash --delete-branch`, then `git branch -d <branch>` locally if it wasn't removed automatically).
