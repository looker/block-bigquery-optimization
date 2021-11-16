view: bigquery_data_access_job_configuration {
  dimension: dry_run {
    type: yesno
    sql: ${TABLE}.dryRun ;;
  }

  dimension: query {
    hidden: yes
    sql: ${TABLE}.query ;;
  }
}
