view: bigquery_data_access_servicedata {
  dimension: job_completed_event {
    hidden: yes
    sql: ${TABLE}.jobCompletedEvent ;;
  }

  dimension: job_get_query_results_request {
    hidden: yes
    sql: ${TABLE}.jobGetQueryResultsRequest ;;
  }

  dimension: job_get_query_results_response {
    hidden: yes
    sql: ${TABLE}.jobGetQueryResultsResponse ;;
  }

  dimension: job_insert_request {
    hidden: yes
    sql: ${TABLE}.jobInsertRequest ;;
  }

  dimension: job_insert_response {
    hidden: yes
    sql: ${TABLE}.jobInsertResponse ;;
  }

  dimension: job_query_request {
    hidden: yes
    sql: ${TABLE}.jobQueryRequest ;;
  }

  dimension: job_query_response {
    hidden: yes
    sql: ${TABLE}.jobQueryResponse ;;
  }

  dimension: table_data_list_request {
    hidden: yes
    sql: ${TABLE}.tableDataListRequest ;;
  }
}
