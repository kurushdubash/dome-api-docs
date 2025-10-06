#!/bin/bash

# Alternative setup: Configure git to use .githooks directory automatically
echo "Configuring git to use .githooks directory..."

# Set git hooks directory to .githooks
git config core.hooksPath .githooks

# Make sure all hooks are executable
chmod +x .githooks/*

echo "✅ Git configured to use .githooks directory"
echo "🎉 Setup complete!"
echo ""
echo "Git hooks will now be automatically loaded from .githooks/"