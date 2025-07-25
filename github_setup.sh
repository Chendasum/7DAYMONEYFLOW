#!/bin/bash

# GitHub Repository Setup Script
# Run this script to prepare your bot for deployment

echo "=== GitHub Repository Setup ==="

# Check if git is initialized
if [ ! -d ".git" ]; then
    echo "Initializing git repository..."
    git init
    git branch -M main
else
    echo "Git repository already initialized"
fi

# Create .gitignore if it doesn't exist
if [ ! -f ".gitignore" ]; then
    echo "Creating .gitignore..."
    cat > .gitignore << 'EOF'
# Dependencies
node_modules/
npm-debug.log*

# Environment variables
.env
.env.local
.env.development.local
.env.test.local
.env.production.local

# Logs
logs/
*.log

# Runtime data
pids/
*.pid
*.seed
*.pid.lock

# Coverage directory used by tools like istanbul
coverage/

# OS generated files
.DS_Store
.DS_Store?
._*
.Spotlight-V100
.Trashes
ehthumbs.db
Thumbs.db

# Replit specific
.replit
replit.nix
.config/
attached_assets/

# Temporary files
.tmp/
temp/

# IDE files
.vscode/
.idea/
*.swp
*.swo
EOF
else
    echo ".gitignore already exists"
fi

# Add all files to git
echo "Adding files to git..."
git add .

# Check if there are changes to commit
if git diff --staged --quiet; then
    echo "No changes to commit"
else
    echo "Committing changes..."
    git commit -m "Initial commit: 7-Day Money Flow Reset Telegram Bot

- Complete bot functionality with payment system
- Admin tracking and analytics
- PostgreSQL database integration
- Health check endpoints for deployment
- Ready for production deployment"
fi

echo ""
echo "=== Next Steps ==="
echo "1. Create a new repository on GitHub"
echo "2. Copy the remote URL from GitHub"
echo "3. Run: git remote add origin https://github.com/yourusername/your-repo.git"
echo "4. Run: git push -u origin main"
echo "5. Choose a deployment platform (Railway, Render, Heroku, etc.)"
echo "6. Connect your GitHub repository to the platform"
echo "7. Set BOT_TOKEN environment variable"
echo "8. Deploy!"
echo ""
echo "✅ Repository is ready for deployment!"