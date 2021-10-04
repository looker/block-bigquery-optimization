view: bigquery_data_access_job_completed_event {
  dimension: event_name {
    type: string
    sql: ${TABLE}.eventName ;;
  }

  dimension: job {
    hidden: yes
    sql: ${TABLE}.job ;;
  }
}
