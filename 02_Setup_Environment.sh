#!/bin/bash

# Update package lists
sudo apt-get update && sudo apt-get upgrade -y

# Install Python and pip
sudo apt install -y python3 python3-pip

# Install Git
sudo apt install -y git

# Install C++ compiler and make utility for some Python packages
sudo apt install -y build-essential

# Install libraries for linear algebra and data manipulation
sudo apt install -y libatlas-base-dev liblapack-dev gfortran

# Install Python packages for quantum computation
pip3 install qiskit
pip3 install pyquil
pip3 install Cirq

# Install Python packages for statistical approximation
pip3 install numpy
pip3 install scipy
pip3 install pandas
pip3 install matplotlib
pip3 install seaborn

# Output success message
echo "Environment setup successfully with quantum computation and statistical approximation libraries."
