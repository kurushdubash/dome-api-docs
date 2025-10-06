#!/bin/bash

# Setup script to install git hooks
echo "Setting up git hooks..."

# Make sure .githooks directory exists
if [ ! -d ".githooks" ]; then
    echo "Error: .githooks directory not found"
    exit 1
fi

# Copy hooks from .githooks to .git/hooks
for hook in .githooks/*; do
    if [ -f "$hook" ]; then
        hook_name=$(basename "$hook")
        echo "Installing $hook_name hook..."
        cp "$hook" ".git/hooks/$hook_name"
        chmod +x ".git/hooks/$hook_name"
        echo "✅ $hook_name hook installed"
    fi
done

echo "🎉 Git hooks setup complete!"
echo ""
echo "Hooks installed:"
ls -la .git/hooks/ | grep -v sample | grep -v "^total" | grep -v "^d" | awk '{print "  - " $9}'