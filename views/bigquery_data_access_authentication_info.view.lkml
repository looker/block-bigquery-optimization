view: bigquery_data_access_authentication_info {
  dimension: authority_selector {
    hidden: yes
    type: string
    sql: ${TABLE}.authoritySelector ;;
  }

  dimension: user_id {
    label: "User ID"
    type: string
    sql: ${TABLE}.principalEmail ;;
  }

  dimension: is_service_account {
    type: yesno
    sql: (${user_id} LIKE '%gserviceaccount%') ;;

  }

  measure: number_of_active_users {
    description: "Excludes Service Accounts"
    type: count_distinct
    sql: ${user_id} ;;
    filters: {
      field: is_service_account
      value: "no"
    }
    drill_fields: [user_id]
  }
}
