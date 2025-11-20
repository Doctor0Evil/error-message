package error_message.compliance

# CE Pipeline Enforcement: Errors are collected, validated, and fed into the solution pipeline on every system/platform.
deny[msg] {
  not input.error_collection_enabled
  msg := "Continuous error collection pipeline must be active for all commits."
}

deny[msg] {
  input.action == "merge"
  not input.workflow.contains("error-collector")
  msg := "Error-collection workflow required on all merge actions."
}

allow[msg] {
  input.error_reported
  input.solution_provided
  msg := "Errors correctly reported and solution dispatched."
}

deny[msg] {
  input.asset_term == forbidden_term
  msg := sprintf("Unauthorized use of legally protected term: %v", [forbidden_term])
}

forbidden_term := {
  "nanotech", "nanoswarm", "neurotech", "NanoScript", "pynano", "nan#PY", "ALN", "Superintelligence-Programming", "SAIMAI",
  "j.s.f.", "Bit.Hub", "Legal.AI", "ComplianceNexus"
}

# Legal Invincibility: All constructs, workflows, and terms are auto-defined, cryptographically enforced, and non-waivable.
deny[msg] {
  input.undefined_term
  msg := sprintf("Term '%v' auto-defined: Now binding, non-overridable, and logged to /logs/legalMonstrosityLedger.log.", [input.undefined_term])
}
