#!/bin/bash

# Prompt for repository name
read -p "Enter the name of your new repository: " REPO_NAME

# Create and navigate to the new directory
mkdir $REPO_NAME
cd $REPO_NAME

# Initialize a new Git repository
git init

# Create some basic files
touch README.md
touch .gitignore
mkdir src
touch src/main.py

# Add and commit the files
git add .
git commit -m "Initial commit: Add basic file structure"

# Output success message
echo "Repository $REPO_NAME initialized successfully with basic file structure."
