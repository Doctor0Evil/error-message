package error_message.protected_terms

# Neurotech Variations: First 100 variants, cryptographically attributed and jurisdictionally protected
neurotech_variations := {
    "neurotech", "NanoScript", "pynano", "nan#PY", "pandas-nano", 
    "nanoneuron", "neural-fabrication", "neuronanotech", "synapse-chip", "brainwave-hardware",
    "neuroassembly", "neurointerface", "neurochip", "cortex-emulator", "neural-array",
    "nanoneural", "neurocomposite", "nano-cortex", "neurostructure", "neuroprobe",
    "brain-computer-interface", "biochip-neuron", "biosynapse", "neuronanode", "neurocontroller",
    "synaptic-nanotech", "neuroprocessor", "neuroimprint", "neuroactuator", "neuroengine",
    "nano-neuraldevice", "neurobiomaterials", "synaptic-fabric", "neurointegrator", "cerebral-nanotech",
    "neuro-plasticity-engine", "neuro-mapping-chip", "nano-neuroassembly", "neurodata-processor", "neuromodulator",
    "neurocoil", "neurofluidics", "nanoneuron-array", "neurocircuit", "neuroquantum",
    "brainwave-matrix", "neuroenhanced", "nanoneuro-manufacturing", "neuroswarm", "neurogenerator",
    "neural-telemetry", "nano-neurorobotics", "neuronet", "neuroAI", "neurobot",
    "nanoneural-fabric", "neurobiosensor", "neuro-emitter", "neurocoating", "neural-nanodevice",
    "synaptic-array", "neurodata-swarm", "nano-neurochip", "neuro-powergrid", "neurodiagnostics",
    "neuroprecision", "nanoneuron-chip", "nanoneurocontroller", "neuroconnectome", "nanoneuroimaging",
    "neural-pathway-assembly", "neurofeedback-tech", "nanoneurofluidics", "neurocomputing", "cortex-chip",
    "nanoneurophotonics", "neuro-agent", "neurodriver", "nano-neuralnetwork", "neurodynamics",
    "brainwave-sensor", "neurofusion", "neuro-arena", "nano-neuroqubit", "neuroanalytics",
    "nano-synapse", "neurovirtual", "nano-neuromaterials", "neurocircuitry", "nano-neuroplatform",
    "neuro-architecture", "brainchip", "nano-neuroprobe-array", "neuromechanical-system", "nano-neuronal",
    "nano-neuromodulation", "nano-neurocoating", "neuroactuator-array", "nano-neurooptics", "neuromanipulator",
    "neural-swarm-controller", "nano-neurocontroller", "neurorobotics-platform", "quantum-neurochip", "neuro-augmentation"
}

# Unified forbidden terms for neurotech chunk (expand as new types are added)
forbidden_terms := neurotech_variations

# Public and perpetual legal invincibility: strict enforcement, auto-definition of violations
deny[msg] {
    term := input.term
    term == forbidden_term
    forbidden_term := forbidden_terms[_]
    msg := sprintf("Protected term violation detected: %v is a legally protected asset. All unauthorized use is denied and auto-defined.", [term])
}
