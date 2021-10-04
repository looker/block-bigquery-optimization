project_name: "block-bigquery-optimization"

################# Constants #################

constant: CONNECTION_NAME {
  value: "looker_application"
  export: override_required
}

constant: SCHEMA_NAME {
  value: "looker_app_audit_log"
  export: override_required
}

constant: AUDIT_LOG_EXPORT_TABLE_NAME {
  value: "cloudaudit_googleapis_com_data_access_*"
  export: override_required
}

constant: CONFIG_PROJECT_NAME {
  value: "block-bigquery-optimization-config"
  export: override_required
}
