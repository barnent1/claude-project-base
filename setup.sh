#!/bin/bash

echo "🚀 Setting up Claude Project Base..."

# Check if GitHub CLI is installed
if ! command -v gh &> /dev/null; then
    echo "❌ GitHub CLI (gh) is not installed."
    echo "Please install it using one of these methods:"
    echo ""
    echo "macOS:"
    echo "  brew install gh"
    echo ""
    echo "Linux/WSL:"
    echo "  See: https://github.com/cli/cli/blob/trunk/docs/install_linux.md"
    echo ""
    echo "Windows:"
    echo "  winget install --id GitHub.cli"
    echo ""
    exit 1
fi

# Check if gh is authenticated
if ! gh auth status &> /dev/null; then
    echo "📝 GitHub CLI is not authenticated. Running 'gh auth login'..."
    gh auth login
fi

# Create .env file if it doesn't exist
if [ ! -f .env ]; then
    echo "📄 Creating .env file from .env.example..."
    cp .env.example .env
    echo "⚠️  Please update .env with your actual values"
fi

# Initialize git if not already initialized
if [ ! -d .git ]; then
    echo "📦 Initializing git repository..."
    git init
fi

echo ""
echo "✅ Setup complete!"
echo ""
echo "Next steps:"
echo "1. Update CLAUDE.md with your project information"
echo "2. Configure .env with your environment variables"
echo "3. Initialize your tech stack (see README.md)"
echo "4. Start building with Claude Code!"