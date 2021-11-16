view: bigquery_data_access_request_metadata {
  dimension: caller_ip {
    type: string
    sql: ${TABLE}.callerIp ;;
  }

  dimension: caller_supplied_user_agent {
    type: string
    sql: ${TABLE}.callerSuppliedUserAgent ;;
  }
}
