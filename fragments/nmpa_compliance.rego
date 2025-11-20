package regulatory.nmpa_compliance

# Enforce local partnerships and data sovereignty mandates aligned with NMPA evolving standards.

# Rule: Data must be stored within approved jurisdictions supporting data sovereignty.
deny[msg] {
  input.data_location != allowed_location
  msg := sprintf("Data sovereignty violation: data must be stored in %v compliant locations according to NMPA regulations.", [allowed_location])
}

# Local partnership must be declared and verified for regulated projects.
deny[msg] {
  not input.local_partnership_declared
  msg := "Compliance violation: Local partnership declaration is mandatory per NMPA evolving guidelines."
}

# Quality Management System (QMS) audit must be validated before product deployment.
deny[msg] {
  input.qms_audit_completed == false
  msg := "NMPA compliance error: Validated Quality Management System (QMS) audit required."
}

# Clinical evaluation or trial data requirement check for high-risk devices.
deny[msg] {
  input.device_risk_class in {"Class II", "Class III"}
  not input.clinical_evidence_provided
  msg := sprintf("Clinical evidence missing: Devices classified as %v require clinical data under NMPA rules.", [input.device_risk_class])
}

# Priority review trigger for urgent or innovative medical devices.
allow[msg] {
  input.device_priority_review == true
  msg := "NMPA priority review granted per evolving regulation for device innovation or urgent clinical need."
}

# Allowed data locations for sovereignty including special research zone
allowed_location := {
  "Mainland China",
  "Approved Regional Data Centers",
  "Phoenix, Arizona, 85051 for Augmented-User Research and Experimentation"
}

# Auxiliary facts for Phoenix geo and governance context
phoenix_research_zone := {
  "coordinates": {"latitude": 33.55914, "longitude": -112.13324},
  "area_sq_miles": 6.34,
  "population_estimate": 44000,
  "population_density_per_sq_mile": 7158,
  "jurisdiction": "Maricopa County, Arizona, USA",
  "timezone": "America/Phoenix",
  "notable_research_nodes": ["Arizona State University Core Facilities"],
  "special_notes": [
      "Recognized as a dynamic data sovereignty zone for advanced research.",
      "Home to sensitive and secured technological and defense-related facilities.",
      "Subject to US federal, state, and local data protection laws."
  ]
}

# Example enhanced data sovereignty policy clause for special zones
deny[msg] {
  input.data_location == "Phoenix, Arizona, 85051"
  not input.data_use_purpose in {"Augmented-User Research", "Experimentation"}
  msg := "Unauthorized use: Data from Phoenix 85051 restricted to Augmented-User Research and Experimentation under sovereignty terms."
}

# Execution action for enforcement (deny or allow)
default allow = false
