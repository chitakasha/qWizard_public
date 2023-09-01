#!/bin/bash

# Navigate to the repository directory
cd $REPO_NAME || { echo "Repository directory not found. Exiting."; exit 1; }

# Function to push changes to remote repository
push_to_remote() {
  echo "Pushing changes to remote repository..."
  git push origin main || { echo "Push to remote repository failed. Exiting."; exit 1; }
  echo "Push to remote repository successful."
}

# Function to build the project
build_project() {
  echo "Building the project..."
  # Add your build commands here
  # For example: make, npm build, etc.
  echo "Project built successfully."
}

# Function to deploy to server
deploy_to_server() {
  echo "Deploying to server..."
  # Add your deployment commands here
  # For example: scp, rsync, kubectl apply, etc.
  echo "Deployment successful."
}

#!/bin/bash

# ... (previous code)

# Function to deploy to GitHub Pages (as an example)
deploy_to_gh_pages() {
  echo "Deploying to GitHub Pages..."
  git subtree push --prefix dist origin gh-pages
  echo "Deployment to GitHub Pages successful."
}

# Check if running in GitHub Actions
if [ "$GITHUB_ACTIONS" == "true" ]; then
  echo "Running in GitHub Actions..."
  push_to_remote
  build_project
  deploy_to_gh_pages  # Replace with your actual deployment command
  exit 0
fi


# Main menu for deployment
while true; do
  echo "Deployment Scripts for qWizard MVP"
  echo "1. Push Changes to Remote Repository"
  echo "2. Build Project"
  echo "3. Deploy to Server"
  echo "4. Deploy All"
  echo "5. Exit"
  
  read -p "Enter your choice: " choice
  
  case $choice in
    1) push_to_remote ;;
    2) build_project ;;
    3) deploy_to_server ;;
    4) push_to_remote; build_project; deploy_to_server ;;
    5) break ;;
    *) echo "Invalid choice. Please try again." ;;
  esac
done
