from qiskit import Aer, QuantumCircuit, transpile
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
print('Simulation result:', counts)
