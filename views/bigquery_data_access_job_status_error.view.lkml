view: bigquery_data_access_job_status_error {
  dimension: code {
    type: number
    sql: ${TABLE}.code ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }

}
