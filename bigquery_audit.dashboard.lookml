- dashboard: bigquery_audit
  title: BigQuery Audit
  layout: newspaper
  elements:
  - title: Failed Queries
    name: Failed Queries
    model: gcp_optimization
    explore: bigquery_data_access
    type: single_value
    fields: [bigquery_data_access.number_of_queries]
    filters:
      bigquery_data_access_payload.method_name: jobservice.jobcompleted
      bigquery_data_access_payload.service_name: bigquery.googleapis.com
      bigquery_data_access_job_completed_event.event_name: query_job_completed
      bigquery_data_access_job_status.query_failed: 'Yes'
    limit: 500
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: none
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    colors: ['palette: Mixed Dark']
    series_colors: {}
    series_types: {}
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: bigquery_data_access_protopayload_auditlog_servicedata_v1_bigquery_job_completed_event_job_job_statistics.total_query_cost,
            name: 'BigQuery Data Access: Query Statistics Total Query Cost', __FILE: block-gcp-optimization/bigquery_audit.dashboard.lookml,
            __LINE_NUM: 68}], __FILE: block-gcp-optimization/bigquery_audit.dashboard.lookml,
        __LINE_NUM: 56}, {label: !!null '', maxValue: !!null '', minValue: !!null '',
        orientation: right, showLabels: true, showValues: true, tickDensity: default,
        tickDensityCustom: 5, type: linear, unpinAxis: false, valueFormat: !!null '',
        series: [{id: bigquery_data_access.number_of_queries, name: 'BigQuery Data
              Access: Query Statistics Number of Queries', __FILE: block-gcp-optimization/bigquery_audit.dashboard.lookml,
            __LINE_NUM: 82}], __FILE: block-gcp-optimization/bigquery_audit.dashboard.lookml,
        __LINE_NUM: 70}]
    column_spacing_ratio:
    column_group_spacing_ratio:
    listen:
      User: bigquery_data_access_authentication_info.user_id
      Project: bigquery_data_access_resource_labels.project_id
      Is Service Account: bigquery_data_access_authentication_info.is_service_account
      Date: bigquery_data_access_job_statistics.start_date
    row: 0
    col: 12
    width: 4
    height: 3
  - title: Data Scanned
    name: Data Scanned
    model: gcp_optimization
    explore: bigquery_data_access
    type: single_value
    fields: [bigquery_data_access_job_statistics.total_billed_terabytes]
    filters:
      bigquery_data_access_payload.method_name: jobservice.jobcompleted
      bigquery_data_access_payload.service_name: bigquery.googleapis.com
      bigquery_data_access_job_completed_event.event_name: query_job_completed
    limit: 500
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: none
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    colors: ['palette: Mixed Dark']
    series_colors: {}
    series_types: {}
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: bigquery_data_access_protopayload_auditlog_servicedata_v1_bigquery_job_completed_event_job_job_statistics.total_query_cost,
            name: 'BigQuery Data Access: Query Statistics Total Query Cost', __FILE: block-gcp-optimization/bigquery_audit.dashboard.lookml,
            __LINE_NUM: 157}], __FILE: block-gcp-optimization/bigquery_audit.dashboard.lookml,
        __LINE_NUM: 145}, {label: !!null '', maxValue: !!null '', minValue: !!null '',
        orientation: right, showLabels: true, showValues: true, tickDensity: default,
        tickDensityCustom: 5, type: linear, unpinAxis: false, valueFormat: !!null '',
        series: [{id: bigquery_data_access.number_of_queries, name: 'BigQuery Data
              Access: Query Statistics Number of Queries', __FILE: block-gcp-optimization/bigquery_audit.dashboard.lookml,
            __LINE_NUM: 171}], __FILE: block-gcp-optimization/bigquery_audit.dashboard.lookml,
        __LINE_NUM: 159}]
    column_spacing_ratio:
    column_group_spacing_ratio:
    single_value_title: Scanned (TB)
    listen:
      User: bigquery_data_access_authentication_info.user_id
      Project: bigquery_data_access_resource_labels.project_id
      Is Service Account: bigquery_data_access_authentication_info.is_service_account
      Date: bigquery_data_access_job_statistics.start_date
    row: 0
    col: 4
    width: 4
    height: 3
  - title: Successful Queries
    name: Successful Queries
    model: gcp_optimization
    explore: bigquery_data_access
    type: single_value
    fields: [bigquery_data_access.number_of_queries]
    filters:
      bigquery_data_access_payload.method_name: jobservice.jobcompleted
      bigquery_data_access_payload.service_name: bigquery.googleapis.com
      bigquery_data_access_job_completed_event.event_name: query_job_completed
      bigquery_data_access_job_status.query_failed: 'No'
    limit: 500
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: none
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    colors: ['palette: Mixed Dark']
    series_colors: {}
    series_types: {}
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: bigquery_data_access_protopayload_auditlog_servicedata_v1_bigquery_job_completed_event_job_job_statistics.total_query_cost,
            name: 'BigQuery Data Access: Query Statistics Total Query Cost', __FILE: block-gcp-optimization/bigquery_audit.dashboard.lookml,
            __LINE_NUM: 248}], __FILE: block-gcp-optimization/bigquery_audit.dashboard.lookml,
        __LINE_NUM: 236}, {label: !!null '', maxValue: !!null '', minValue: !!null '',
        orientation: right, showLabels: true, showValues: true, tickDensity: default,
        tickDensityCustom: 5, type: linear, unpinAxis: false, valueFormat: !!null '',
        series: [{id: bigquery_data_access.number_of_queries, name: 'BigQuery Data
              Access: Query Statistics Number of Queries', __FILE: block-gcp-optimization/bigquery_audit.dashboard.lookml,
            __LINE_NUM: 262}], __FILE: block-gcp-optimization/bigquery_audit.dashboard.lookml,
        __LINE_NUM: 250}]
    column_spacing_ratio:
    column_group_spacing_ratio:
    listen:
      User: bigquery_data_access_authentication_info.user_id
      Project: bigquery_data_access_resource_labels.project_id
      Is Service Account: bigquery_data_access_authentication_info.is_service_account
      Date: bigquery_data_access_job_statistics.start_date
    row: 0
    col: 8
    width: 4
    height: 3
  - title: Avg Query Runtime
    name: Avg Query Runtime
    model: gcp_optimization
    explore: bigquery_data_access
    type: single_value
    fields: [bigquery_data_access_job_statistics.average_query_runtime]
    filters:
      bigquery_data_access_payload.method_name: jobservice.jobcompleted
      bigquery_data_access_payload.service_name: bigquery.googleapis.com
      bigquery_data_access_job_completed_event.event_name: query_job_completed
    limit: 500
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: none
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    colors: ['palette: Mixed Dark']
    series_colors: {}
    series_types: {}
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: bigquery_data_access_protopayload_auditlog_servicedata_v1_bigquery_job_completed_event_job_job_statistics.total_query_cost,
            name: 'BigQuery Data Access: Query Statistics Total Query Cost', __FILE: block-gcp-optimization/bigquery_audit.dashboard.lookml,
            __LINE_NUM: 337}], __FILE: block-gcp-optimization/bigquery_audit.dashboard.lookml,
        __LINE_NUM: 325}, {label: !!null '', maxValue: !!null '', minValue: !!null '',
        orientation: right, showLabels: true, showValues: true, tickDensity: default,
        tickDensityCustom: 5, type: linear, unpinAxis: false, valueFormat: !!null '',
        series: [{id: bigquery_data_access.number_of_queries, name: 'BigQuery Data
              Access: Query Statistics Number of Queries', __FILE: block-gcp-optimization/bigquery_audit.dashboard.lookml,
            __LINE_NUM: 351}], __FILE: block-gcp-optimization/bigquery_audit.dashboard.lookml,
        __LINE_NUM: 339}]
    column_spacing_ratio:
    column_group_spacing_ratio:
    single_value_title: Avg. Query Runtime (sec)
    listen:
      User: bigquery_data_access_authentication_info.user_id
      Project: bigquery_data_access_resource_labels.project_id
      Is Service Account: bigquery_data_access_authentication_info.is_service_account
      Date: bigquery_data_access_job_statistics.start_date
    row: 0
    col: 20
    width: 4
    height: 3
  - title: Total Cost
    name: Total Cost
    model: gcp_optimization
    explore: bigquery_data_access
    type: single_value
    fields: [bigquery_data_access_job_statistics.total_query_cost]
    filters:
      bigquery_data_access_payload.method_name: jobservice.jobcompleted
      bigquery_data_access_payload.service_name: bigquery.googleapis.com
      bigquery_data_access_job_completed_event.event_name: query_job_completed
    limit: 500
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: none
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    colors: ['palette: Mixed Dark']
    series_colors: {}
    series_types: {}
    y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: bigquery_data_access_protopayload_auditlog_servicedata_v1_bigquery_job_completed_event_job_job_statistics.total_query_cost,
            name: 'BigQuery Data Access: Query Statistics Total Query Cost', __FILE: block-gcp-optimization/bigquery_audit.dashboard.lookml,
            __LINE_NUM: 513}], __FILE: block-gcp-optimization/bigquery_audit.dashboard.lookml,
        __LINE_NUM: 501}, {label: !!null '', maxValue: !!null '', minValue: !!null '',
        orientation: right, showLabels: true, showValues: true, tickDensity: default,
        tickDensityCustom: 5, type: linear, unpinAxis: false, valueFormat: !!null '',
        series: [{id: bigquery_data_access.number_of_queries, name: 'BigQuery Data
              Access: Query Statistics Number of Queries', __FILE: block-gcp-optimization/bigquery_audit.dashboard.lookml,
            __LINE_NUM: 527}], __FILE: block-gcp-optimization/bigquery_audit.dashboard.lookml,
        __LINE_NUM: 515}]
    column_spacing_ratio:
    column_group_spacing_ratio:
    listen:
      User: bigquery_data_access_authentication_info.user_id
      Project: bigquery_data_access_resource_labels.project_id
      Is Service Account: bigquery_data_access_authentication_info.is_service_account
      Date: bigquery_data_access_job_statistics.start_date
    row: 0
    col: 0
    width: 4
    height: 3
  - title: Queries > 30 GB
    name: Queries > 30 GB
    model: gcp_optimization
    explore: bigquery_data_access
    type: single_value
    fields: [bigquery_data_access.number_of_expensive_queries]
    filters:
      bigquery_data_access_payload.service_name: bigquery.googleapis.com
      bigquery_data_access_payload.method_name: jobservice.jobcompleted
      bigquery_data_access_job_completed_event.event_name: query_job_completed
    limit: 500
    column_limit: 50
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    single_value_title: Queries > 30 GB
    listen:
      User: bigquery_data_access_authentication_info.user_id
      Project: bigquery_data_access_resource_labels.project_id
      Is Service Account: bigquery_data_access_authentication_info.is_service_account
      Date: bigquery_data_access_job_statistics.start_date
    row: 0
    col: 16
    width: 4
    height: 3
  - title: Biggest Users
    name: Biggest Users
    model: gcp_optimization
    explore: bigquery_data_access
    type: table
    fields: [bigquery_data_access_authentication_info.user_id, bigquery_data_access_job_statistics.total_billed_gigabytes,
      bigquery_data_access_job_statistics.average_billed_gigabytes, bigquery_data_access_job_statistics.total_query_cost,
      bigquery_data_access.number_of_queries, bigquery_data_access.number_of_expensive_queries]
    filters:
      bigquery_data_access_payload.method_name: jobservice.jobcompleted
      bigquery_data_access_payload.service_name: bigquery.googleapis.com
      bigquery_data_access_job_completed_event.event_name: query_job_completed
    sorts: [bigquery_data_access_job_statistics.total_query_cost desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting_ignored_fields: []
    listen:
      User: bigquery_data_access_authentication_info.user_id
      Project: bigquery_data_access_resource_labels.project_id
      Is Service Account: bigquery_data_access_authentication_info.is_service_account
      Date: bigquery_data_access_job_statistics.start_date
    row: 10
    col: 0
    width: 12
    height: 8
  - title: Biggest Projects
    name: Biggest Projects
    model: gcp_optimization
    explore: bigquery_data_access
    type: table
    fields: [bigquery_data_access_job_statistics.total_billed_gigabytes, bigquery_data_access_job_statistics.average_billed_gigabytes,
      bigquery_data_access_job_statistics.total_query_cost, bigquery_data_access.number_of_queries,
      bigquery_data_access_resource_labels.project_id, bigquery_data_access.number_of_expensive_queries]
    filters:
      bigquery_data_access_payload.method_name: jobservice.jobcompleted
      bigquery_data_access_payload.service_name: bigquery.googleapis.com
      bigquery_data_access_job_completed_event.event_name: query_job_completed
    sorts: [bigquery_data_access_job_statistics.total_query_cost desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting_ignored_fields: []
    listen:
      User: bigquery_data_access_authentication_info.user_id
      Project: bigquery_data_access_resource_labels.project_id
      Is Service Account: bigquery_data_access_authentication_info.is_service_account
      Date: bigquery_data_access_job_statistics.start_date
    row: 10
    col: 12
    width: 12
    height: 8
  - title: Most Expensive Queries (> 30GB scanned)
    name: Most Expensive Queries (> 30GB scanned)
    model: gcp_optimization
    explore: bigquery_data_access
    type: table
    fields: [bigquery_data_access_authentication_info.user_id, bigquery_data_access_resource_labels.project_id,
      bigquery_data_access_query.query, bigquery_data_access_job_statistics.query_cost,
      bigquery_data_access_job_statistics.query_runtime]
    filters:
      bigquery_data_access_payload.method_name: jobservice.jobcompleted
      bigquery_data_access_payload.service_name: bigquery.googleapis.com
      bigquery_data_access_job_completed_event.event_name: query_job_completed
      bigquery_data_access_job_statistics.billed_gigabytes: ">30"
    sorts: [bigquery_data_access_job_statistics.query_cost desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting_ignored_fields: []
    listen:
      User: bigquery_data_access_authentication_info.user_id
      Project: bigquery_data_access_resource_labels.project_id
      Is Service Account: bigquery_data_access_authentication_info.is_service_account
    row: 18
    col: 0
    width: 24
    height: 8
  - title: Total Queries and Total Query Cost by Start Date
    name: Total Queries and Total Query Cost by Start Date
    model: gcp_optimization
    explore: bigquery_data_access
    type: looker_line
    fields: [bigquery_data_access.number_of_queries, bigquery_data_access_job_statistics.total_query_cost,
      bigquery_data_access_job_statistics.start_date]
    fill_fields: [bigquery_data_access_job_statistics.start_date]
    filters:
      bigquery_data_access_payload.method_name: jobservice.jobcompleted
      bigquery_data_access_payload.service_name: bigquery.googleapis.com
      bigquery_data_access_job_completed_event.event_name: query_job_completed
    sorts: [bigquery_data_access_job_statistics.start_date desc]
    limit: 500
    column_limit: 50
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: ccba75a3-58c7-4b9c-a931-4ffc59e79cba
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: !!null '', orientation: left, series: [{axisId: bigquery_data_access.number_of_queries,
            id: bigquery_data_access.number_of_queries, name: Number of Queries}],
        showLabels: false, showValues: true, maxValue: !!null '', minValue: !!null '',
        valueFormat: !!null '', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: bigquery_data_access_job_statistics.total_query_cost,
            id: bigquery_data_access_job_statistics.total_query_cost, name: Total
              Query Cost}], showLabels: false, showValues: false, maxValue: !!null '',
        minValue: !!null '', valueFormat: !!null '', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    colors: ['palette: Mixed Dark']
    series_types:
      bigquery_data_access_job_statistics.total_query_cost: column
    point_style: none
    series_colors:
      bigquery_data_access_job_statistics.total_query_cost: "#4276BE"
      bigquery_data_access.number_of_queries: "#C2DD67"
    show_value_labels: true
    label_density: 25
    label_color: [transparent, "#4276BE"]
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    column_spacing_ratio:
    column_group_spacing_ratio:
    listen:
      User: bigquery_data_access_authentication_info.user_id
      Project: bigquery_data_access_resource_labels.project_id
      Is Service Account: bigquery_data_access_authentication_info.is_service_account
      Date: bigquery_data_access_job_statistics.start_date
    row: 3
    col: 0
    width: 12
    height: 7
  - title: Number of Active Users by Start Date
    name: Number of Active Users by Start Date
    model: gcp_optimization
    explore: bigquery_data_access
    type: looker_column
    fields: [bigquery_data_access_authentication_info.number_of_active_users, bigquery_data_access_job_statistics.start_date]
    fill_fields: [bigquery_data_access_job_statistics.start_date]
    filters:
      bigquery_data_access_payload.method_name: jobservice.jobcompleted
      bigquery_data_access_payload.service_name: bigquery.googleapis.com
      bigquery_data_access_job_completed_event.event_name: query_job_completed
    sorts: [bigquery_data_access_job_statistics.start_date desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: bigquery_data_access_authentication_info.number_of_active_users,
            id: bigquery_data_access_authentication_info.number_of_active_users, name: Number
              of Active Users}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    series_colors:
      bigquery_data_access_authentication_info.number_of_active_users: "#4276BE"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      User: bigquery_data_access_authentication_info.user_id
      Project: bigquery_data_access_resource_labels.project_id
      Is Service Account: bigquery_data_access_authentication_info.is_service_account
      Date: bigquery_data_access_job_statistics.start_date
    row: 3
    col: 12
    width: 12
    height: 7
  filters:
  - name: Project
    title: Project
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: gcp_optimization
    explore: bigquery_data_access
    listens_to_filters: []
    field: bigquery_data_access_resource_labels.project_id
  - name: User
    title: User
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: gcp_optimization
    explore: bigquery_data_access
    listens_to_filters: []
    field: bigquery_data_access_authentication_info.user_id
  - name: Is Service Account
    title: Is Service Account
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: gcp_optimization
    explore: bigquery_data_access
    listens_to_filters: []
    field: bigquery_data_access_authentication_info.is_service_account
  - name: Date
    title: Date
    type: field_filter
    default_value: 30 days
    allow_multiple_values: true
    required: false
    model: gcp_optimization
    explore: bigquery_data_access
    listens_to_filters: []
    field: bigquery_data_access_job_statistics.start_date