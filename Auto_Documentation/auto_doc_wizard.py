# auto_doc_wizard.py

# Importing necessary modules
import ast
import os

# Constants
OUTPUT_DIR = "docs/"

# Parse the code to identify functions, classes, and variables
def parse_code(file_path):
    with open(file_path, 'r') as f:
        tree = ast.parse(f.read())
    return tree

# Generate docstrings for functions and classes
def generate_docstring(tree):
    doc_dict = {}
    for node in ast.walk(tree):
        if isinstance(node, ast.FunctionDef):
            doc_dict[node.name] = ast.get_docstring(node)
    return doc_dict

# Write the generated documentation to a file
def write_to_file(doc_dict, output_file):
    with open(output_file, 'w') as f:
        for key, value in doc_dict.items():
            f.write(f"Function: {key}\n")
            f.write(f"Docstring: {value}\n\n")

# Main function to manage the auto-documentation process
def auto_doc(file_path):
    tree = parse_code(file_path)
    doc_dict = generate_docstring(tree)
    output_file = os.path.join(OUTPUT_DIR, f"{os.path.basename(file_path)}.md")
    write_to_file(doc_dict, output_file)

# Class for Auto-Documentation
class AutoDocWizard:
    def __init__(self, file_path):
        self.file_path = file_path

    def run(self):
        auto_doc(self.file_path)
