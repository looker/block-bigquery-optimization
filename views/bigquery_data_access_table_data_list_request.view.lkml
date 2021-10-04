view: bigquery_data_access_table_data_list_request {
  dimension: max_results {
    type: number
    sql: ${TABLE}.maxResults ;;
  }

  dimension: start_row {
    type: number
    sql: ${TABLE}.startRow ;;
  }
}
