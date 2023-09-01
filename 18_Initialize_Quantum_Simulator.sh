#!/bin/bash

# Quest Banner
echo "🌌 Initializing the Quantum Realm... 🌌"

# Update package lists
sudo apt update

# Install Python3 and pip
sudo apt install -y python3 python3-pip

# Install Qiskit
pip3 install qiskit

# Create directory for Quantum Simulator
mkdir -p Quantum_Realm

# Navigate to the directory
cd Quantum_Realm

# Create Python script to initialize and test the simulator
echo "from qiskit import Aer, QuantumCircuit, transpile
from qiskit.providers.aer import AerSimulator

# Initialize simulator
simulator = AerSimulator()

# Create a quantum circuit
circuit = QuantumCircuit(2, 2)
circuit.h(0)
circuit.cx(0, 1)
circuit.measure([0, 1], [0, 1])

# Transpile the circuit for the simulator
compiled_circuit = transpile(circuit, simulator)

# Run the simulation
result = simulator.run(compiled_circuit).result()

# Get the measurement results
counts = result.get_counts(circuit)
print('Simulation result:', counts)" > initialize_simulator.py

# Run the Python script
python3 initialize_simulator.py

# Quest Completion Banner
echo "🌠 The Quantum Realm has been successfully initialized! 🌠"
