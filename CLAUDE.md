# Mintlify documentation

## Working relationship
- You can push back on ideas-this can lead to better documentation. Cite sources and explain your reasoning when you do so
- ALWAYS ask for clarification rather than making assumptions
- NEVER lie, guess, or make up information

## Project context
- Format: MDX files with YAML frontmatter
- Config: docs.json for navigation, theme, settings
- Components: Mintlify components

## Content strategy
- Document just enough for user success - not too much, not too little
- Prioritize accuracy and usability of information
- Make content evergreen when possible
- Search for existing information before adding new content. Avoid duplication unless it is done for a strategic reason
- Check existing patterns for consistency
- Start by making the smallest reasonable changes

## Frontmatter requirements for pages
- title: Clear, descriptive page title
- description: Concise summary for SEO/navigation

## Writing standards
- Second-person voice ("you")
- Prerequisites at start of procedural content
- Test all code examples before publishing
- Match style and formatting of existing pages
- Include both basic and advanced use cases
- Language tags on all code blocks
- Alt text on all images
- Relative paths for internal links

## Git workflow
- NEVER use --no-verify when committing
- Ask how to handle uncommitted changes before starting
- Create a new branch when no clear branch exists for changes
- Commit frequently throughout development
- NEVER skip or disable pre-commit hooks

## PR & Deployment Workflow

**CRITICAL: Always follow this workflow when publishing changes:**

1. **Create a PR for your changes** - Never push directly to main
2. **Merge the PR to main** - Use `gh pr merge <PR#> --squash`
3. **Sync with remote main before any deployment/publishing:**
   ```bash
   git fetch origin main && git reset --hard origin/main
   ```

**Why this matters:**
- Ensures published docs match what's merged to main
- Prevents publishing unreviewed or local-only changes
- Creates an audit trail of changes via PRs
- Allows easy rollback by reverting PRs

**Never do:**
- Push directly to main without a PR
- Deploy/publish without merging your PR first
- Skip syncing with remote main

## Do not
- Skip frontmatter on any MDX file
- Use absolute URLs for internal links
- Include untested code examples
- Make assumptions - always ask for clarification
