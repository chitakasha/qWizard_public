#!/bin/bash

# Navigate to the repository directory
cd $REPO_NAME

# Function to add a new chapter
add_chapter() {
  read -p "Enter the chapter number: " chapter_number
  touch Textbook/Chapters/chapter${chapter_number}.qtxt
  git add Textbook/Chapters/chapter${chapter_number}.qtxt
  git commit -m "Add Chapter ${chapter_number}"
  echo "Chapter ${chapter_number} added successfully."
}

# Function to delete a chapter
delete_chapter() {
  read -p "Enter the chapter number to delete: " chapter_number
  rm Textbook/Chapters/chapter${chapter_number}.qtxt
  git add -A
  git commit -m "Delete Chapter ${chapter_number}"
  echo "Chapter ${chapter_number} deleted successfully."
}

# Function to list all chapters
list_chapters() {
  ls Textbook/Chapters/
}

# Main menu for Librarian script
while true; do
  echo "Librarian Script"
  echo "1. Add new chapter"
  echo "2. Delete chapter"
  echo "3. List all chapters"
  echo "4. Exit"
  
  read -p "Enter your choice: " choice
  
  case $choice in
    1) add_chapter ;;
    2) delete_chapter ;;
    3) list_chapters ;;
    4) break ;;
    *) echo "Invalid choice. Please try again." ;;
  esac
done
