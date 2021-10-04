view: bigquery_data_access {
  derived_table: {
    sql:
      SELECT
        *
      FROM
        `@{SCHEMA_NAME}.@{AUDIT_LOG_EXPORT_TABLE_NAME}`
      WHERE
        {% condition date_filter %} timestamp {% endcondition %} ;;
  }

  filter: date_filter {
    type: date
  }

  dimension: http_request {
    hidden: yes
    sql: ${TABLE}.httpRequest ;;
  }

  dimension: insert_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.insertId ;;
  }

  dimension: log_name {
    type: string
    sql: ${TABLE}.logName;;
  }

  dimension: operation {
    hidden: yes
    sql: ${TABLE}.operation ;;
  }

  dimension: protopayload_auditlog {
    hidden: yes
    sql: ${TABLE}.protopayload_auditlog ;;
  }

  dimension_group: receive_timestamp {
    hidden: yes
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
    sql: ${TABLE}.receiveTimestamp ;;
  }

  dimension: resource {
    hidden: yes
    sql: ${TABLE}.resource ;;
  }

  dimension: severity {
    type: string
    sql: ${TABLE}.severity ;;
  }

  dimension: source_location {
    hidden: yes
    sql: ${TABLE}.sourceLocation ;;
  }

# this is the new partition fields
  dimension_group: timestamp {
    hidden: yes
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
    sql: ${TABLE}.timestamp ;;
  }

  dimension: trace {
    type: string
    sql: ${TABLE}.trace ;;
  }

  measure: number_of_queries {
    view_label: "BigQuery Data Access: Query Statistics"
    type: count
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

  measure: number_of_expensive_queries {
    view_label: "BigQuery Data Access: Query Statistics"
    description: "Number of queries with over 30 billed gigabytes"
    type: count
    filters: {
      field: bigquery_data_access_job_statistics.billed_gigabytes
      value: ">30"
    }
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
