view: bigquery_data_access_query {

  filter: query_text_filter {
    type: string
  }

  dimension: query_text_selector {
    type: string
    case: {
      when: {
        sql: {% condition query_text_filter %} ${query} {% endcondition %} ;;
        label: "Queries with Specified Pattern"
      }
      else: "All Other Queries"
    }
  }

  dimension: create_disposition {
    type: string
    sql: ${TABLE}.createDisposition ;;
  }

  dimension: default_dataset {
    hidden: yes
    sql: ${TABLE}.defaultDataset ;;
  }

  dimension: destination_table {
    hidden: yes
    sql: ${TABLE}.destinationTable ;;
  }

  dimension: query {
    type: string
    sql: ${TABLE}.query ;;
  }

  dimension: table_definitions {
    hidden: yes
    sql: ${TABLE}.tableDefinitions ;;
  }

  dimension: write_disposition {
    type: string
    sql: ${TABLE}.writeDisposition ;;
  }
}
