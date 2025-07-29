# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

[Describe your project here - what it does, its purpose, and key features]

## Project Structure

```
├── .claude/              # Claude-specific configuration
│   ├── settings.json     # Project-specific Claude settings
│   └── commands/         # Custom slash commands
├── src/                  # Source code directory
├── tests/                # Test files
├── docs/                 # Documentation
└── ...
```

## Development Commands

### Build & Development
```bash
# Install dependencies
npm install

# Development server
npm run dev

# Build for production
npm run build

# Run tests
npm test

# Linting
npm run lint

# Type checking
npm run typecheck
```

## Core Files & Utilities

### Key Files
- `src/index.js` - Main entry point
- `src/utils/` - Utility functions
- `src/components/` - React components (if applicable)

### Important Functions
- `utils/helpers.js` - Common helper functions
- `utils/validation.js` - Input validation utilities

## Code Style Guidelines

### General Rules
- Use consistent indentation (2 spaces or 4 spaces)
- Follow existing naming conventions in the codebase
- Prefer functional programming patterns where appropriate
- Keep functions small and focused on a single responsibility

### Language-Specific Guidelines

#### JavaScript/TypeScript
- Use ESLint configuration
- Prefer `const` over `let`, avoid `var`
- Use async/await over promises when possible
- Add TypeScript types for all function parameters and return values

#### Python
- Follow PEP 8 style guide
- Use type hints for function signatures
- Prefer f-strings for string formatting

## Testing Guidelines

### Running Tests
```bash
# Run all tests
npm test

# Run tests in watch mode
npm test:watch

# Run tests with coverage
npm test:coverage
```

### Writing Tests
- Write tests for all new features
- Maintain existing test coverage
- Follow AAA pattern: Arrange, Act, Assert
- Use descriptive test names

## Repository Etiquette

### Branching Strategy
- `main` - Production-ready code
- `develop` - Development branch
- `feature/*` - Feature branches
- `bugfix/*` - Bug fix branches

### Commit Messages
- Use conventional commits format
- Keep commits atomic and focused
- Write clear, descriptive commit messages

### Pull Requests
- Include description of changes
- Reference related issues
- Ensure all tests pass
- Request review from appropriate team members

### GitHub CLI Commands
Common `gh` commands for this project:
```bash
# Create a new repository (use /create-repo slash command for interactive flow)
gh repo create [owner/]repo-name --public/--private

# List your organizations
gh org list

# Create a new issue
gh issue create --title "Bug: Description" --body "Details"

# Create a pull request
gh pr create --title "Feature: Description" --body "Details"

# List open PRs
gh pr list

# Check PR status
gh pr status

# View PR comments
gh pr view [number] --comments

# Create a release
gh release create v1.0.0 --notes "Release notes"
```

### Repository Creation Workflow
Use the `/create-repo` slash command for a guided repository creation experience:
- Automatically detects your organizations
- Prompts for public/private visibility
- Sets up local git with main branch
- Configures remote origin
- Creates initial commit if needed

Example: `/create-repo my-project` or just `/create-repo` for interactive mode

## Developer Environment Setup

### Prerequisites
- Node.js (version X.X.X)
- npm/yarn/pnpm
- Git
- GitHub CLI (`gh`) - Required for GitHub operations

### Initial Setup
1. Clone the repository
2. Run the setup script: `./setup.sh`
3. Install dependencies: `npm install`
4. Copy `.env.example` to `.env` and configure
5. Run development server: `npm run dev`

### GitHub CLI Setup

#### Installation
```bash
# macOS
brew install gh

# Linux/WSL
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install gh

# Windows
winget install --id GitHub.cli
```

#### Authentication
```bash
# Authenticate with GitHub
gh auth login

# During authentication, you'll be asked:
# - GitHub.com or GitHub Enterprise? (Choose GitHub.com)
# - Authentication method? (Choose Login with a web browser)
# - Protocol for git operations? (Choose HTTPS or SSH based on preference)
```

#### Verify Authentication
```bash
# Check authentication status
gh auth status

# Should show: ✓ Logged in to github.com as YOUR_USERNAME
```

#### Troubleshooting
- If browser authentication fails, try `gh auth login --with-token` and use a Personal Access Token
- For headless environments, use `gh auth login --web` and follow the device flow
- Ensure your token has `repo` scope for repository operations
- For organization repositories, ensure you have appropriate permissions

## API & External Services

### Environment Variables
- `API_URL` - Backend API endpoint
- `API_KEY` - API authentication key
- `DATABASE_URL` - Database connection string

### Third-Party Services
- [List any external services, APIs, or dependencies]

## Deployment

### Production Build
```bash
npm run build
npm start
```

### Deployment Checklist
- [ ] All tests passing
- [ ] Environment variables configured
- [ ] Database migrations run
- [ ] Assets optimized

## Common Issues & Solutions

### Issue: [Common Problem]
**Solution**: [How to fix it]

### Issue: Build fails with module not found
**Solution**: Clear node_modules and reinstall: `rm -rf node_modules && npm install`

## Performance Considerations

- Lazy load heavy components
- Optimize images and assets
- Use caching where appropriate
- Monitor bundle size

## Security Guidelines

- Never commit sensitive data
- Use environment variables for secrets
- Validate all user inputs
- Keep dependencies updated

## Additional Notes

[Any project-specific quirks, gotchas, or important information]