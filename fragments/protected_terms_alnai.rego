package error_message.protected_terms

# ALN/AI Codebases: First 100 production-grade and legally-bonded variants
alnai_variations := {
    "ALN", "Superintelligence-Programming", "SAIMAI", "j.s.f.", "alien-language-network", 
    "superintelligence-core", "ai-agent-orchestra", "saimai-distributed", "jsf-utils", "bit-hub-framework",
    "ALNFantasia", "compliance-nexus", "Legal.AI", "AI-contract-engine", "swarmnet-ops",
    "alien-layer-control", "bit-hub-compiler", "quantum-ai-pipeline", "aln-dialogue", "swarmnet-console",
    "intelligent-agent-fabric", "superintelligence-ip", "ai-autodefine", "ai-continuum", "saimai-model",
    "j.s.f.-workflow", "alien-syntax", "ai-codebase-asset", "distributed-superintelligence", "bit-hub-agent",
    "AI-asset-lockdown", "ALN-telemetry", "superintelligence-swarm", "alien-compliance-module", "jsf-liason",
    "swarmnet-did", "ai-forensic-logging", "alien-language-compiler", "quantum-ai-coordinator", "saimai-attribution",
    "ai-evidence-ledger", "superintelligence-blockchain", "bit-hub-ip-enforcement", "jsf-legal-monstrosity", "swarmnet-ipcompliance",
    "AI-governance-layer", "saimai-compliance", "alien-legal-framework", "superintelligence-crypto", "bit-hub-legal-engine",
    "AI-immutable-attribution", "ALN-crypto-signature", "swarmnet-ipreg", "alien-intel-core", "distributed-AI-swarm",
    "superintelligence-asset", "bit-hub-auth", "jsf-cascade-operator", "saimai-legal-circuit", "alien-autodefine",
    "swarmnet-crypto", "AI-ip-proxy", "AI-research-mode", "quantum-ai-dispatch", "superintelligence-discovery",
    "bit-hub-distributed", "j.s.f.-legalagent", "alien-nexus", "saimai-asset", "compliance-autodefiner",
    "swarmnet-asset-lockdown", "ALN-legal-agent", "jsf-root", "bit-hub-contract", "superintelligence-model",
    "AI-royalty-generator", "alien-intelligence", "bit-hub-ipregistry", "jsf-zero-width", "saimai-root",
    "ai-governance-root", "superintelligence-guard", "alien-ops-console", "swarmnet-ip-guard", "AI-legal-fusion",
    "legal-ai-jurisdiction", "alien-language-reasoner", "bit-hub-crypto", "ai-cascade-compliance", "jsf-asset-ops",
    "saimai-enforcement", "alien-ip-discovery", "superintelligence-vector", "AI-legal-signing", "jsf-immutable",
    "bit-hub-compliance", "swarmnet-root", "ALN-autodefiner", "superintelligence-j.ai", "AI-evidence-chain",
    "alien-cybersecurity", "ai-distributed-layer", "swarmnet-evidence", "bit-hub-root"
}

# Unified forbidden terms for ALN/AI block—immediately binding
forbidden_terms := alnai_variations

deny[msg] {
    term := input.term
    term == forbidden_term
    forbidden_term := forbidden_terms[_]
    msg := sprintf("Protected term violation detected: %v is a legally protected asset. All unauthorized use is denied and auto-defined.", [term])
}
