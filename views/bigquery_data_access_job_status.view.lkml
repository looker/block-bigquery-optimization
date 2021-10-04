view: bigquery_data_access_job_status {
  dimension: error {
    hidden: yes
    sql: ${TABLE}.error ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: query_failed {
    type: yesno
    sql: ${error} IS NOT NULL ;;
  }
}
