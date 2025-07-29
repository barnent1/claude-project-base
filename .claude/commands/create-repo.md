# Create Repository Command

Create a new GitHub repository and set up local git configuration.

## Prerequisites Check:

```bash
# Check if gh is installed and authenticated
if ! command -v gh &> /dev/null; then
    echo "❌ GitHub CLI is not installed. Please run ./setup.sh or install gh manually."
    exit 1
fi

if ! gh auth status &> /dev/null; then
    echo "❌ GitHub CLI is not authenticated. Please run:"
    echo "   gh auth login"
    echo "Or run ./setup.sh to set everything up automatically."
    exit 1
fi
```

## Steps:

1. **Parse repository name**
   - Check if repo name provided in $ARGUMENTS
   - If not provided, prompt user for repo name

2. **Get organizations**
   ```bash
   # Get list of organizations
   orgs=$(gh org list --limit 100 | awk '{print $1}')
   ```

3. **Select account/organization**
   - Show options: personal account or organizations
   - Let user select where to create the repository

4. **Select visibility**
   - Prompt for: public, private, or internal (if org)

5. **Create GitHub repository**
   ```bash
   # Example: gh repo create [owner/]repo-name --public/--private
   ```

6. **Set up local git**
   ```bash
   # Initialize git if needed
   git init
   
   # Set default branch to main
   git branch -M main
   
   # Add remote origin
   git remote add origin git@github.com:owner/repo-name.git
   
   # Create initial commit if needed
   git add .
   git commit -m "Initial commit"
   
   # Push to GitHub
   git push -u origin main
   ```

7. **Confirm success**
   - Show repository URL
   - Confirm local git setup

## Usage:
- `/create-repo my-awesome-project` - Creates with specified name
- `/create-repo` - Interactive mode, prompts for all options