project_name: "block-bigquery-optimization"

constant: CONNECTION_NAME {
  value: "looker_application"
  export: override_required
}

constant: SCHEMA_NAME {
  value: "looker_app_audit_log"
  export: override_required
}

# Make sure to include a note about having _* at the end to include all date partitioned tables
constant: AUDIT_LOG_EXPORT_TABLE_NAME {
  value: "cloudaudit_googleapis_com_data_access_*"
  export: override_required
}

constant: CONFIG_PROJECT_NAME {
  value: "block-bigquery-optimization-config"
  export: override_required
}

# THIS'LL NEED TO BE CREATED AUTOMATICALLY DURING INSTALL, I BELIEVE
local_dependency: {
  project: "@{CONFIG_PROJECT_NAME}"
}
