view: bigquery_data_access_job_statistics {
  dimension: billing_tier {
    type: number
    sql: ${TABLE}.billingTier ;;
  }

  dimension_group: create {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.createTime ;;
  }

  dimension_group: end {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.endTime ;;
  }

  dimension_group: start {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.startTime ;;
  }

  dimension: billed_bytes {
    type: number
    sql: ${TABLE}.totalBilledBytes ;;
  }

  dimension: processed_bytes {
    type: number
    sql: ${TABLE}.totalProcessedBytes ;;
  }

  dimension: billed_gigabytes {
    type: number
    sql: 1.0*${billed_bytes}/1000000000 ;;
  }

  dimension: billed_terabytes {
    type: number
    sql: 1.0*${billed_bytes}/1000000000000 ;;
  }

  measure: total_billed_gigabytes {
    type: sum
    view_label: "BigQuery Data Access: Query Statistics"
    sql: ${billed_gigabytes} ;;
    value_format_name: decimal_2
    drill_fields: [bigquery_data_access_authentication_info.user_id
      , bigquery_data_access_job_statistics.start_time
      , bigquery_data_access_resource_labels.project_id
      , bigquery_data_access_query.query
      , bigquery_data_access_job_statistics.billed_gigabytes
      , bigquery_data_access_job_statistics.query_runtime
      , bigquery_data_access_job_statistics.query_cost
      , bigquery_data_access_job_status_error.code
      , bigquery_data_access_job_status_error.message]
  }

  measure: total_billed_terabytes {
    type: sum
    view_label: "BigQuery Data Access: Query Statistics"
    sql: ${billed_terabytes} ;;
    value_format_name: decimal_2
    drill_fields: [bigquery_data_access_authentication_info.user_id
      , bigquery_data_access_job_statistics.start_time
      , bigquery_data_access_resource_labels.project_id
      , bigquery_data_access_query.query
      , bigquery_data_access_job_statistics.billed_gigabytes
      , bigquery_data_access_job_statistics.query_runtime
      , bigquery_data_access_job_statistics.query_cost
      , bigquery_data_access_job_status_error.code
      , bigquery_data_access_job_status_error.message]
  }

  measure: average_billed_gigabytes {
    type: average
    view_label: "BigQuery Data Access: Query Statistics"
    sql: ${billed_gigabytes} ;;
    value_format_name: decimal_2
    drill_fields: [bigquery_data_access_authentication_info.user_id
      , bigquery_data_access_job_statistics.start_time
      , bigquery_data_access_resource_labels.project_id
      , bigquery_data_access_query.query
      , bigquery_data_access_job_statistics.billed_gigabytes
      , bigquery_data_access_job_statistics.query_runtime
      , bigquery_data_access_job_statistics.query_cost
      , bigquery_data_access_job_status_error.code
      , bigquery_data_access_job_status_error.message]
  }

  measure: average_billed_terabytes {
    type: average
    view_label: "BigQuery Data Access: Query Statistics"
    sql: ${billed_terabytes} ;;
    value_format_name: decimal_2
    drill_fields: [bigquery_data_access_authentication_info.user_id
      , bigquery_data_access_job_statistics.start_time
      , bigquery_data_access_resource_labels.project_id
      , bigquery_data_access_query.query
      , bigquery_data_access_job_statistics.billed_gigabytes
      , bigquery_data_access_job_statistics.query_runtime
      , bigquery_data_access_job_statistics.query_cost
      , bigquery_data_access_job_status_error.code
      , bigquery_data_access_job_status_error.message]
  }

  dimension: query_cost {
    type: number
    sql: 5.0*${billed_bytes}/1000000000000 ;;
    value_format_name: usd
  }

  measure: total_query_cost {
    type: sum
    sql: ${query_cost} ;;
    value_format_name: usd
    drill_fields: [bigquery_data_access_authentication_info.user_id
      , bigquery_data_access_job_statistics.start_time
      , bigquery_data_access_resource_labels.project_id
      , bigquery_data_access_query.query
      , bigquery_data_access_job_statistics.billed_gigabytes
      , bigquery_data_access_job_statistics.query_runtime
      , bigquery_data_access_job_statistics.query_cost
      , bigquery_data_access_job_status_error.code
      , bigquery_data_access_job_status_error.message]
  }

  measure: average_query_cost {
    type: average
    sql: ${query_cost} ;;
    value_format_name: usd
    drill_fields: [bigquery_data_access_authentication_info.user_id
      , bigquery_data_access_job_statistics.start_time
      , bigquery_data_access_resource_labels.project_id
      , bigquery_data_access_query.query
      , bigquery_data_access_job_statistics.billed_gigabytes
      , bigquery_data_access_job_statistics.query_runtime
      , bigquery_data_access_job_statistics.query_cost
      , bigquery_data_access_job_status_error.code
      , bigquery_data_access_job_status_error.message]
  }

  dimension: query_runtime {
    type: number
    sql: 1.0*TIMESTAMP_DIFF(${end_raw}, ${start_raw}, MILLISECOND)/1000 ;;
    value_format_name: decimal_1
  }

  measure: average_query_runtime {
    type: average
    sql: ${query_runtime} ;;
    value_format_name: decimal_1
    drill_fields: [bigquery_data_access_authentication_info.user_id
      , bigquery_data_access_job_statistics.start_time
      , bigquery_data_access_resource_labels.project_id
      , bigquery_data_access_query.query
      , bigquery_data_access_job_statistics.billed_gigabytes
      , bigquery_data_access_job_statistics.query_runtime
      , bigquery_data_access_job_statistics.query_cost
      , bigquery_data_access_job_status_error.code
      , bigquery_data_access_job_status_error.message]
  }
}
