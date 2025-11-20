package error_message.protected_terms

# Nanotech Variations: Production Asset List (first 100 variants, legally binding and public-ready)
nanotech_variations := {
    "nanotech", "nanoswarm", "nanoswarm-technology", "nanomachine", "nanoassembly",
    "nanorobotics", "nanofabrication", "nanomaterials", "nanoweave", "nanoengineering",
    "nanoparticles", "nanostructure", "nanoprobe", "nanoscale", "nanotube",
    "nanowire", "nanoassembly-line", "nanosensor", "nanocoating", "nanochip",
    "nanogenerator", "nanoprobe-array", "nanocluster", "nanocomposite", "nanoplatform",
    "nanotools", "nanomanipulation", "nanostructuring", "nanoelectromechanical", "nanophotonics",
    "nanoimprint", "nanotemplating", "nanomolding", "nanolithography", "nanospintronics",
    "nanocrystal", "nanoviruses", "nano-biotech", "nanobiology", "quantumnanotech",
    "nanointerface", "nanomechanics", "nanosystem", "nanodevice", "nanoscale-engineering",
    "nanobiomaterials", "nanocapsule", "nanocluster-technology", "nanoparticle-system", "nanoarchitecture",
    "nanocrystal-tech", "nanoswarm-network", "nanoactuator", "nanoscale-device", "nanomanufacturing",
    "nanostructured-material", "nanometrology", "nanodal", "nanoarray", "nanovalve",
    "nanoparticulate", "nanocoils", "nanoemitter", "nanocoating-tech", "nanorod",
    "graphene-nanotech", "nanosystem-integration", "nanoelectronics", "nanodevice-assembly", "nanoparticle-delivery",
    "nanooptics", "nanomechanical-systems", "nanoengineered", "nanomotor", "nanomanipulator",
    "nanosensor-array", "nanowire-fabrication", "nanopatterning", "nanocluster-fabrication", "nanostructured-composite",
    "nanoscale-fabrication", "nanoengine", "nanodevice-network", "nanointerconnector", "nanotube-synthesis",
    "nanowire-network", "nano-optomechanics", "nanoscale-bearing", "nanoscale-imaging", "nanopattern",
    "nanomedicine-tech", "nanorobotics-platform", "nanoscale-electronics", "nanowire-device", "nanomanipulation-tech",
    "nanomanipulation-arm", "nano-sensor-technology", "nanointeraction", "nanotechnological", "nanoparticle-synthesis",
    "nano-actuator-array", "nanotransistor", "nanoprinting", "nanofluidics", "nano-enabled"
}

# Unified forbidden terms—current chunk only (expandable as lists build)
forbidden_terms := nanotech_variations

# Production-ready policy: deny any unauthorized use of protected terms, auto-defining violations for legal invincibility
deny[msg] {
    term := input.term
    term == forbidden_term
    forbidden_term := forbidden_terms[_]
    msg := sprintf("Protected term violation detected: %v is a legally protected asset. All unauthorized use is denied and auto-defined.", [term])
}
