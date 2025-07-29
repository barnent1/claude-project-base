# Claude Project Base

A comprehensive template for starting new projects with Claude Code, following Anthropic's best practices.

## Features

- 📋 Pre-configured `CLAUDE.md` with comprehensive project documentation template
- 🛠️ Claude-specific settings and permissions
- 📝 Example custom slash commands for common tasks
- 🔧 MCP (Model Context Protocol) configuration
- 🚫 Optimized `.gitignore` for various tech stacks
- 📚 Best practices documentation structure

## Prerequisites

- Git
- GitHub CLI (`gh`) - Required for GitHub operations and repository creation
- Node.js (for JavaScript/TypeScript projects)
- Python (for Python projects)

## Quick Start

1. **Clone this repository**
   ```bash
   git clone https://github.com/yourusername/claude-project-base.git my-new-project
   cd my-new-project
   ```

2. **Run the setup script (REQUIRED)**
   ```bash
   ./setup.sh
   ```
   This will:
   - Check for GitHub CLI and install instructions if missing
   - Authenticate with GitHub (required for `/create-repo` command)
   - Create your `.env` file from template
   - Initialize git repository
   
   **Note**: GitHub CLI authentication is required for repository creation and other GitHub operations.

3. **Update project-specific information**
   - Edit `CLAUDE.md` to describe your project
   - Update `.claude/settings.json` with your project preferences
   - Configure `.mcp.json` if using MCP servers

4. **Initialize your tech stack**
   ```bash
   # For Next.js
   npx create-next-app@latest . --use-npm

   # For React
   npx create-react-app . --template typescript

   # For Node.js
   npm init -y

   # For Python
   python -m venv venv && source venv/bin/activate
   ```

## Project Structure

```
├── .claude/                 # Claude-specific configuration
│   ├── settings.json       # Project settings and tool permissions
│   └── commands/           # Custom slash commands
│       ├── create-repo.md  # GitHub repository creator
│       ├── create-pr.md    # Pull request creator
│       ├── debug.md        # Debug helper
│       ├── refactor.md     # Code refactoring assistant
│       ├── security-check.md # Security audit
│       └── test-all.md     # Test runner
├── .mcp.json               # MCP server configuration
├── CLAUDE.md               # Project documentation for Claude
├── .gitignore              # Comprehensive ignore file
├── LICENSE                 # MIT License
└── README.md               # This file
```

## Custom Slash Commands

This template includes several useful slash commands:

- `/create-repo [name]` - Create a new GitHub repository with full setup
- `/test-all` - Run all tests, linting, and type checking
- `/debug [issue]` - Help debug specific issues
- `/refactor [code]` - Refactor specified code
- `/security-check [files]` - Perform security audit
- `/create-pr` - Create a GitHub pull request

Use them in Claude Code by typing the command (e.g., `/test-all`).

## Configuration

### Claude Settings (`.claude/settings.json`)

Customize Claude's behavior for your project:
- Tool permissions
- Preferred language
- Build/test commands
- Additional instructions

### MCP Configuration (`.mcp.json`)

Pre-configured MCP servers:
- **filesystem** - File system access
- **github** - GitHub integration (add your PAT)
- **memory** - Persistent memory across sessions

### Environment Variables

Create a `.env` file for your project-specific variables:
```bash
API_URL=your-api-url
API_KEY=your-api-key
DATABASE_URL=your-database-url
```

## Best Practices

1. **Update CLAUDE.md regularly** - Keep it current with your project's evolution
2. **Use custom commands** - Create project-specific slash commands
3. **Configure permissions** - Only enable tools you need
4. **Document quirks** - Add any unusual project behaviors to CLAUDE.md
5. **Commit CLAUDE.md** - Share project knowledge with your team

## Contributing

Feel free to submit issues and enhancement requests!

## License

MIT License - see LICENSE file for details
