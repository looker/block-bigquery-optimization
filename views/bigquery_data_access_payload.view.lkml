view: bigquery_data_access_payload {
  dimension: authentication_info {
    hidden: yes
    sql: ${TABLE}.authenticationInfo ;;
  }

  dimension: authorization_info {
    hidden: yes
    sql: ${TABLE}.authorizationInfo ;;
  }

  dimension: method_name {
    type: string
    sql: ${TABLE}.methodName ;;
  }

  dimension: num_response_items {
    type: number
    sql: ${TABLE}.numResponseItems ;;
  }

  dimension: request_metadata {
    hidden: yes
    sql: ${TABLE}.requestMetadata ;;
  }

  dimension: resource_name {
    type: string
    sql: ${TABLE}.resourceName ;;
  }

  dimension: service_name {
    type: string
    sql: ${TABLE}.serviceName ;;
  }

  dimension: servicedata_v1_bigquery {
    hidden: yes
    sql: ${TABLE}.servicedata_v1_bigquery ;;
  }

  dimension: status {
    hidden: yes
    sql: ${TABLE}.status ;;
  }
}
