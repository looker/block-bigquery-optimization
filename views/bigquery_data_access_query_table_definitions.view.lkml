view: bigquery_data_access_query_table_definitions {
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: source_uris {
    type: string
    sql: ${TABLE}.sourceUris ;;
  }
}
