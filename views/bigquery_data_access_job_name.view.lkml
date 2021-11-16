

view: bigquery_data_access_job_name {
  dimension: job_id {
    type: string
    sql: ${TABLE}.jobId ;;
  }

  dimension: project_id {
    type: string
    sql: ${TABLE}.projectId ;;
  }
}
