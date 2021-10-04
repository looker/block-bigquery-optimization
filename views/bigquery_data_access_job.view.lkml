
view: bigquery_data_access_job {
  dimension: job_configuration {
    hidden: yes
    sql: ${TABLE}.jobConfiguration ;;
  }

  dimension: job_name {
    hidden: yes
    sql: ${TABLE}.jobName ;;
  }

  dimension: job_statistics {
    hidden: yes
    sql: ${TABLE}.jobStatistics ;;
  }

  dimension: job_status {
    hidden: yes
    sql: ${TABLE}.jobStatus ;;
  }
}
