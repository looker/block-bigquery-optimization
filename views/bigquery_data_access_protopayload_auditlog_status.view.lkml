view: bigquery_data_access_protopayload_auditlog_status {
  dimension: code {
    type: number
    sql: ${TABLE}.code ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }
}
