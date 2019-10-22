connection: "@{CONNECTION_NAME}"

include: "*.view.lkml"         # include all views in this project
include: "*.explore.lkml"
include: "*.dashboard.lookml"
include: "//@{CONFIG_PROJECT_NAME}/*.view.lkml"
include: "//@{CONFIG_PROJECT_NAME}/*.model.lkml"
include: "//@{CONFIG_PROJECT_NAME}/*.dashboard"

explore: bigquery_data_access {
  extends: [bigquery_data_access_config]
}
