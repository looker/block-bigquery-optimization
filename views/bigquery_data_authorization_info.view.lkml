view: bigquery_data_authorization_info {
  dimension: granted {
    type: yesno
    sql: ${TABLE}.granted ;;
  }

  dimension: permission {
    type: string
    sql: ${TABLE}.permission ;;
  }

  dimension: resource {
    type: string
    sql: ${TABLE}.resource ;;
  }
}
