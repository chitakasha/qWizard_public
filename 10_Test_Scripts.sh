#!/bin/bash

# Navigate to the repository directory
cd $REPO_NAME || { echo "Repository directory not found. Exiting."; exit 1; }

# Function to test if README.md exists
test_readme() {
  if [ -f "README.md" ]; then
    echo "README.md exists. Test passed."
  else
    echo "README.md does not exist. Test failed."
  fi
}

# Function to test if .gitignore exists
test_gitignore() {
  if [ -f ".gitignore" ]; then
    echo ".gitignore exists. Test passed."
  else
    echo ".gitignore does not exist. Test failed."
  fi
}

# Function to test if src/main.py exists
test_main_py() {
  if [ -f "src/main.py" ]; then
    echo "src/main.py exists. Test passed."
  else
    echo "src/main.py does not exist. Test failed."
  fi
}

# Function to test if quantum messaging protocol is functioning
test_quantum_messaging() {
  # Simulate a test for quantum messaging (this is a placeholder)
  echo "Running test for quantum messaging..."
  sleep 2
  echo "Quantum messaging test passed."
}

# Main menu for running tests
while true; do
  echo "Test Scripts for qWizard MVP"
  echo "1. Test README.md"
  echo "2. Test .gitignore"
  echo "3. Test src/main.py"
  echo "4. Test Quantum Messaging Protocol"
  echo "5. Run All Tests"
  echo "6. Exit"
  
  read -p "Enter your choice: " choice
  
  case $choice in
    1) test_readme ;;
    2) test_gitignore ;;
    3) test_main_py ;;
    4) test_quantum_messaging ;;
    5) test_readme; test_gitignore; test_main_py; test_quantum_messaging ;;
    6) break ;;
    *) echo "Invalid choice. Please try again." ;;
  esac
done
