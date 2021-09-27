- dashboard: bigquery_inspection
  preferred_viewer: dashboards-next
  title: BigQuery Inspection
  layout: newspaper
  elements:
  - title: Avg Runtime
    name: Avg Runtime
    model: block_bigquery_optimization
    explore: bigquery_data_access
    type: single_value
    fields: [bigquery_data_access_job_statistics.average_query_runtime, bigquery_data_access_query.query_text_selector]
    fill_fields: [bigquery_data_access_query.query_text_selector]
    filters:
      bigquery_data_access_payload.method_name: jobservice.jobcompleted
      bigquery_data_access_payload.service_name: bigquery.googleapis.com
      bigquery_data_access_job_completed_event.event_name: query_job_completed
    sorts: [bigquery_data_access_query.query_text_selector]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: difference, label: Difference, expression: "${bigquery_data_access_job_statistics.average_query_runtime}\
          \ - offset(${bigquery_data_access_job_statistics.average_query_runtime},1)",
        value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    single_value_title: Avg. Query Runtime (sec)
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: true
    comparison_label: Compared to Avg of All Others
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
            name: 'BigQuery Data Access: Query Statistics Total Query Cost', __FILE: block-bigquery-optimization/bigquery_audit.dashboard.lookml,
            __LINE_NUM: 366}], __FILE: block-bigquery-optimization/bigquery_audit.dashboard.lookml,
        __LINE_NUM: 364}, {label: !!null '', maxValue: !!null '', minValue: !!null '',
        orientation: right, showLabels: true, showValues: true, tickDensity: default,
        tickDensityCustom: 5, type: linear, unpinAxis: false, valueFormat: !!null '',
        series: [{id: bigquery_data_access.number_of_queries, name: 'BigQuery Data
              Access: Query Statistics Number of Queries', __FILE: block-bigquery-optimization/bigquery_audit.dashboard.lookml,
            __LINE_NUM: 372}], __FILE: block-bigquery-optimization/bigquery_audit.dashboard.lookml,
        __LINE_NUM: 369}]
    column_spacing_ratio:
    column_group_spacing_ratio:
    hidden_fields: [bigquery_data_access_query.query_text_selector]
    listen:
      Start Date: bigquery_data_access_job_statistics.start_date
      Query Text: bigquery_data_access_query.query_text_filter
    row: 8
    col: 0
    width: 5
    height: 4
  - title: Total Cost
    name: Total Cost
    model: block_bigquery_optimization
    explore: bigquery_data_access
    type: single_value
    fields: [bigquery_data_access_job_statistics.total_query_cost, bigquery_data_access_query.query_text_selector]
    fill_fields: [bigquery_data_access_query.query_text_selector]
    filters:
      bigquery_data_access_payload.method_name: jobservice.jobcompleted
      bigquery_data_access_payload.service_name: bigquery.googleapis.com
      bigquery_data_access_job_completed_event.event_name: query_job_completed
      bigquery_data_access_resource_labels.project_id: ''
      bigquery_data_access_authentication_info.user_id: ''
      bigquery_data_access_authentication_info.is_service_account: ''
    sorts: [bigquery_data_access_query.query_text_selector]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: total, label: Total, expression: 'if(is_null(${bigquery_data_access_job_statistics.total_query_cost}/(${bigquery_data_access_job_statistics.total_query_cost}
          + offset(${bigquery_data_access_job_statistics.total_query_cost},1))), 0,
          ${bigquery_data_access_job_statistics.total_query_cost}/(${bigquery_data_access_job_statistics.total_query_cost}
          + offset(${bigquery_data_access_job_statistics.total_query_cost},1)))',
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Of All Queries
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
            name: 'BigQuery Data Access: Query Statistics Total Query Cost', __FILE: block-bigquery-optimization/bigquery_audit.dashboard.lookml,
            __LINE_NUM: 196}], __FILE: block-bigquery-optimization/bigquery_audit.dashboard.lookml,
        __LINE_NUM: 194}, {label: !!null '', maxValue: !!null '', minValue: !!null '',
        orientation: right, showLabels: true, showValues: true, tickDensity: default,
        tickDensityCustom: 5, type: linear, unpinAxis: false, valueFormat: !!null '',
        series: [{id: bigquery_data_access.number_of_queries, name: 'BigQuery Data
              Access: Query Statistics Number of Queries', __FILE: block-bigquery-optimization/bigquery_audit.dashboard.lookml,
            __LINE_NUM: 202}], __FILE: block-bigquery-optimization/bigquery_audit.dashboard.lookml,
        __LINE_NUM: 199}]
    column_spacing_ratio:
    column_group_spacing_ratio:
    hidden_fields: [bigquery_data_access_query.query_text_selector]
    listen:
      Start Date: bigquery_data_access_job_statistics.start_date
      Query Text: bigquery_data_access_query.query_text_filter
    row: 8
    col: 5
    width: 4
    height: 4
  - title: Query Detail
    name: Query Detail
    model: block_bigquery_optimization
    explore: bigquery_data_access
    type: table
    fields: [bigquery_data_access_query.query, bigquery_data_access_query_destination_table.dataset_id,
      bigquery_data_access_query_destination_table.project_id, bigquery_data_access_query_destination_table.table_id]
    filters:
      bigquery_data_access_payload.method_name: jobservice.jobcompleted
      bigquery_data_access_payload.service_name: bigquery.googleapis.com
      bigquery_data_access_job_completed_event.event_name: query_job_completed
    sorts: [bigquery_data_access_query.query]
    limit: 500
    column_limit: 50
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: ccba75a3-58c7-4b9c-a931-4ffc59e79cba
      options:
        steps: 5
        __FILE: block-bigquery-optimization/bigquery_audit.dashboard.lookml
        __LINE_NUM: 443
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: !!null '', orientation: left, series: [{axisId: bigquery_data_access.number_of_queries,
            id: bigquery_data_access.number_of_queries, name: Number of Queries, __FILE: block-bigquery-optimization/bigquery_audit.dashboard.lookml,
            __LINE_NUM: 449}], showLabels: false, showValues: true, maxValue: !!null '',
        minValue: !!null '', valueFormat: !!null '', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear, __FILE: block-bigquery-optimization/bigquery_audit.dashboard.lookml,
        __LINE_NUM: 449}, {label: !!null '', orientation: right, series: [{axisId: bigquery_data_access_job_statistics.total_query_cost,
            id: bigquery_data_access_job_statistics.total_query_cost, name: Total
              Query Cost, __FILE: block-bigquery-optimization/bigquery_audit.dashboard.lookml,
            __LINE_NUM: 454}], showLabels: false, showValues: false, maxValue: !!null '',
        minValue: !!null '', valueFormat: !!null '', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear, __FILE: block-bigquery-optimization/bigquery_audit.dashboard.lookml,
        __LINE_NUM: 454}]
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
    series_types: {}
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
      Start Date: bigquery_data_access_job_statistics.start_date
      Query Text: bigquery_data_access_query.query_text_filter
    row: 12
    col: 0
    width: 24
    height: 8
  - title: Failed Vs Successful
    name: Failed Vs Successful
    model: block_bigquery_optimization
    explore: bigquery_data_access
    type: looker_pie
    fields: [bigquery_data_access.number_of_queries, bigquery_data_access_job_status.query_failed]
    fill_fields: [bigquery_data_access_job_status.query_failed]
    filters:
      bigquery_data_access_payload.method_name: jobservice.jobcompleted
      bigquery_data_access_payload.service_name: bigquery.googleapis.com
      bigquery_data_access_job_completed_event.event_name: query_job_completed
    sorts: [bigquery_data_access.number_of_queries desc]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    colors: ['palette: Mixed Dark']
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: ccba75a3-58c7-4b9c-a931-4ffc59e79cba
      options:
        steps: 5
        __FILE: block-bigquery-optimization/bigquery_audit.dashboard.lookml
        __LINE_NUM: 443
    series_colors:
      bigquery_data_access_job_statistics.total_query_cost: "#4276BE"
      bigquery_data_access.number_of_queries: "#C2DD67"
    series_labels:
      'No': Successful
      'Yes': Failed
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: !!null '', orientation: left, series: [{axisId: bigquery_data_access.number_of_queries,
            id: bigquery_data_access.number_of_queries, name: Number of Queries, __FILE: block-bigquery-optimization/bigquery_audit.dashboard.lookml,
            __LINE_NUM: 449}], showLabels: false, showValues: true, maxValue: !!null '',
        minValue: !!null '', valueFormat: !!null '', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear, __FILE: block-bigquery-optimization/bigquery_audit.dashboard.lookml,
        __LINE_NUM: 449}, {label: !!null '', orientation: right, series: [{axisId: bigquery_data_access_job_statistics.total_query_cost,
            id: bigquery_data_access_job_statistics.total_query_cost, name: Total
              Query Cost, __FILE: block-bigquery-optimization/bigquery_audit.dashboard.lookml,
            __LINE_NUM: 454}], showLabels: false, showValues: false, maxValue: !!null '',
        minValue: !!null '', valueFormat: !!null '', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear, __FILE: block-bigquery-optimization/bigquery_audit.dashboard.lookml,
        __LINE_NUM: 454}]
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
    series_types: {}
    point_style: none
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
      Start Date: bigquery_data_access_job_statistics.start_date
      Query Text: bigquery_data_access_query.query_text_filter
    row: 8
    col: 9
    width: 5
    height: 4
  - title: Number of Queries
    name: Number of Queries
    model: block_bigquery_optimization
    explore: bigquery_data_access
    type: single_value
    fields: [bigquery_data_access.number_of_queries, bigquery_data_access_query.query_text_selector]
    fill_fields: [bigquery_data_access_query.query_text_selector]
    filters:
      bigquery_data_access_payload.method_name: jobservice.jobcompleted
      bigquery_data_access_payload.service_name: bigquery.googleapis.com
      bigquery_data_access_job_completed_event.event_name: query_job_completed
    sorts: [bigquery_data_access_query.query_text_selector]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: total, label: Total, expression: 'if(is_null(${bigquery_data_access.number_of_queries}/(${bigquery_data_access.number_of_queries}
          + offset(${bigquery_data_access.number_of_queries},1))), 0, ${bigquery_data_access.number_of_queries}/(${bigquery_data_access.number_of_queries}
          + offset(${bigquery_data_access.number_of_queries},1)))', value_format: !!null '',
        value_format_name: percent_2, _kind_hint: measure, _type_hint: number}]
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: ccba75a3-58c7-4b9c-a931-4ffc59e79cba
      options:
        steps: 5
        __FILE: block-bigquery-optimization/bigquery_audit.dashboard.lookml
        __LINE_NUM: 443
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Of All Queries
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: !!null '', orientation: left, series: [{axisId: bigquery_data_access.number_of_queries,
            id: bigquery_data_access.number_of_queries, name: Number of Queries, __FILE: block-bigquery-optimization/bigquery_audit.dashboard.lookml,
            __LINE_NUM: 449}], showLabels: false, showValues: true, maxValue: !!null '',
        minValue: !!null '', valueFormat: !!null '', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear, __FILE: block-bigquery-optimization/bigquery_audit.dashboard.lookml,
        __LINE_NUM: 449}, {label: !!null '', orientation: right, series: [{axisId: bigquery_data_access_job_statistics.total_query_cost,
            id: bigquery_data_access_job_statistics.total_query_cost, name: Total
              Query Cost, __FILE: block-bigquery-optimization/bigquery_audit.dashboard.lookml,
            __LINE_NUM: 454}], showLabels: false, showValues: false, maxValue: !!null '',
        minValue: !!null '', valueFormat: !!null '', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear, __FILE: block-bigquery-optimization/bigquery_audit.dashboard.lookml,
        __LINE_NUM: 454}]
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
    series_types: {}
    point_style: none
    series_colors:
      bigquery_data_access_job_statistics.total_query_cost: "#4276BE"
      bigquery_data_access.number_of_queries: "#4276BE"
    show_value_labels: true
    label_density: 25
    label_color: [transparent, "#4276BE"]
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    hidden_fields: [bigquery_data_access_query.query_text_selector]
    listen:
      Start Date: bigquery_data_access_job_statistics.start_date
      Query Text: bigquery_data_access_query.query_text_filter
    row: 8
    col: 19
    width: 5
    height: 4
  - title: Scanned TB
    name: Scanned TB
    model: block_bigquery_optimization
    explore: bigquery_data_access
    type: single_value
    fields: [bigquery_data_access_job_statistics.total_billed_terabytes, bigquery_data_access_query.query_text_selector]
    fill_fields: [bigquery_data_access_query.query_text_selector]
    filters:
      bigquery_data_access_payload.method_name: jobservice.jobcompleted
      bigquery_data_access_payload.service_name: bigquery.googleapis.com
      bigquery_data_access_job_completed_event.event_name: query_job_completed
      bigquery_data_access_resource_labels.project_id: ''
      bigquery_data_access_authentication_info.user_id: ''
      bigquery_data_access_authentication_info.is_service_account: ''
    sorts: [bigquery_data_access_query.query_text_selector]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: comparison, label: Comparison, expression: 'if(is_null(${bigquery_data_access_job_statistics.total_billed_terabytes}/(${bigquery_data_access_job_statistics.total_billed_terabytes}
          + offset(${bigquery_data_access_job_statistics.total_billed_terabytes},1))),
          0, ${bigquery_data_access_job_statistics.total_billed_terabytes}/(${bigquery_data_access_job_statistics.total_billed_terabytes}
          + offset(${bigquery_data_access_job_statistics.total_billed_terabytes},1)))',
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    single_value_title: Scanned (TB)
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: Of All Queries
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
            name: 'BigQuery Data Access: Query Statistics Total Query Cost', __FILE: block-bigquery-optimization/bigquery_audit.dashboard.lookml,
            __LINE_NUM: 266}], __FILE: block-bigquery-optimization/bigquery_audit.dashboard.lookml,
        __LINE_NUM: 264}, {label: !!null '', maxValue: !!null '', minValue: !!null '',
        orientation: right, showLabels: true, showValues: true, tickDensity: default,
        tickDensityCustom: 5, type: linear, unpinAxis: false, valueFormat: !!null '',
        series: [{id: bigquery_data_access.number_of_queries, name: 'BigQuery Data
              Access: Query Statistics Number of Queries', __FILE: block-bigquery-optimization/bigquery_audit.dashboard.lookml,
            __LINE_NUM: 272}], __FILE: block-bigquery-optimization/bigquery_audit.dashboard.lookml,
        __LINE_NUM: 269}]
    column_spacing_ratio:
    column_group_spacing_ratio:
    listen:
      Start Date: bigquery_data_access_job_statistics.start_date
      Query Text: bigquery_data_access_query.query_text_filter
    row: 8
    col: 14
    width: 5
    height: 4
  - title: Queries Over Time
    name: Queries Over Time
    model: block_bigquery_optimization
    explore: bigquery_data_access
    type: looker_column
    fields: [bigquery_data_access.number_of_queries, bigquery_data_access_job_statistics.start_date]
    fill_fields: [bigquery_data_access_job_statistics.start_date]
    filters:
      bigquery_data_access_payload.method_name: jobservice.jobcompleted
      bigquery_data_access_payload.service_name: bigquery.googleapis.com
      bigquery_data_access_job_completed_event.event_name: query_job_completed
    sorts: [bigquery_data_access_job_statistics.start_date]
    limit: 500
    column_limit: 50
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: ccba75a3-58c7-4b9c-a931-4ffc59e79cba
      options:
        steps: 5
        __FILE: block-bigquery-optimization/bigquery_audit.dashboard.lookml
        __LINE_NUM: 443
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: !!null '', orientation: left, series: [{axisId: bigquery_data_access.number_of_queries,
            id: bigquery_data_access.number_of_queries, name: Number of Queries, __FILE: block-bigquery-optimization/bigquery_audit.dashboard.lookml,
            __LINE_NUM: 449}], showLabels: false, showValues: true, maxValue: !!null '',
        minValue: !!null '', valueFormat: !!null '', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear, __FILE: block-bigquery-optimization/bigquery_audit.dashboard.lookml,
        __LINE_NUM: 449}, {label: !!null '', orientation: right, series: [{axisId: bigquery_data_access_job_statistics.total_query_cost,
            id: bigquery_data_access_job_statistics.total_query_cost, name: Total
              Query Cost, __FILE: block-bigquery-optimization/bigquery_audit.dashboard.lookml,
            __LINE_NUM: 454}], showLabels: false, showValues: false, maxValue: !!null '',
        minValue: !!null '', valueFormat: !!null '', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear, __FILE: block-bigquery-optimization/bigquery_audit.dashboard.lookml,
        __LINE_NUM: 454}]
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
    series_types: {}
    point_style: none
    series_colors:
      bigquery_data_access_job_statistics.total_query_cost: "#4276BE"
      bigquery_data_access.number_of_queries: "#4276BE"
    show_value_labels: true
    label_density: 25
    label_color: [transparent, "#4276BE"]
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    listen:
      Start Date: bigquery_data_access_job_statistics.start_date
      Query Text: bigquery_data_access_query.query_text_filter
    row: 0
    col: 0
    width: 24
    height: 8
  filters:
  - name: Start Date
    title: Start Date
    type: field_filter
    default_value: 4 weeks
    allow_multiple_values: true
    required: false
    model: block_bigquery_optimization
    explore: bigquery_data_access
    listens_to_filters: []
    field: bigquery_data_access_job_statistics.start_date
  - name: Query Text
    title: Query Text
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: block_bigquery_optimization
    explore: bigquery_data_access
    listens_to_filters: []
    field: bigquery_data_access_query.query_text_filter
