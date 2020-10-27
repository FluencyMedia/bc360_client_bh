- dashboard: bh_sample_monthly_report
  title: BH - Sample Monthly Report
  layout: newspaper
  preferred_viewer: dashboards
  elements:
  - name: Cost
    type: text
    title_text: Cost
    subtitle_text: ''
    body_text: ''
    row: 2
    col: 1
    width: 2
    height: 2
  - name: Reach
    type: text
    title_text: Reach
    subtitle_text: ''
    body_text: ''
    row: 4
    col: 1
    width: 2
    height: 2
  - name: Clicks
    type: text
    title_text: Clicks
    subtitle_text: ''
    body_text: ''
    row: 6
    col: 1
    width: 2
    height: 2
  - name: Conversions
    type: text
    title_text: Conversions
    subtitle_text: ''
    body_text: ''
    row: 8
    col: 1
    width: 2
    height: 2
  - title: Impressions
    name: Impressions
    model: client_bh_marketing
    explore: bh_mx_ppc
    type: single_value
    fields: [mx_marketing.date_month, mx_marketing.impr_sum]
    pivots: [mx_marketing.date_month]
    fill_fields: [mx_marketing.date_month]
    filters:
      mx_marketing.date_month: 2 months ago for 2 months
    sorts: [mx_marketing.date_month desc]
    limit: 500
    query_timezone: America/New_York
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: '#,##0.0,"K"'
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    bar_range_max:
    row: 4
    col: 3
    width: 3
    height: 2
  - title: CTR
    name: CTR
    model: client_bh_marketing
    explore: bh_mx_ppc
    type: single_value
    fields: [mx_marketing.date_month, mx_marketing.ctr]
    pivots: [mx_marketing.date_month]
    fill_fields: [mx_marketing.date_month]
    filters:
      mx_marketing.date_month: 2 months ago for 2 months
    sorts: [mx_marketing.date_month desc]
    limit: 500
    query_timezone: America/New_York
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    bar_range_max:
    row: 8
    col: 12
    width: 3
    height: 2
  - title: Conversions
    name: Conversions (2)
    model: client_bh_marketing
    explore: bh_mx_ppc
    type: single_value
    fields: [mx_marketing.date_month, mx_marketing.outcomes_sum]
    pivots: [mx_marketing.date_month]
    fill_fields: [mx_marketing.date_month]
    filters:
      mx_marketing.date_month: 2 months ago for 2 months
    sorts: [mx_marketing.date_month desc]
    limit: 500
    query_timezone: America/New_York
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    bar_range_max:
    row: 8
    col: 3
    width: 3
    height: 2
  - title: CPC
    name: CPC
    model: client_bh_marketing
    explore: bh_mx_ppc
    type: single_value
    fields: [mx_marketing.date_month, mx_marketing.cpc]
    pivots: [mx_marketing.date_month]
    fill_fields: [mx_marketing.date_month]
    filters:
      mx_marketing.date_month: 2 months ago for 2 months
    sorts: [mx_marketing.date_month desc]
    limit: 500
    query_timezone: America/New_York
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    bar_range_max:
    row: 8
    col: 15
    width: 3
    height: 2
  - title: Clicks
    name: Clicks (2)
    model: client_bh_marketing
    explore: bh_mx_ppc
    type: single_value
    fields: [mx_marketing.date_month, mx_marketing.clicks_sum]
    pivots: [mx_marketing.date_month]
    fill_fields: [mx_marketing.date_month]
    filters:
      mx_marketing.date_month: 2 months ago for 2 months
    sorts: [mx_marketing.date_month desc]
    limit: 500
    query_timezone: America/New_York
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: '#,##0.0,"K"'
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    bar_range_max:
    row: 6
    col: 3
    width: 3
    height: 2
  - title: Cost/Conv
    name: Cost/Conv
    model: client_bh_marketing
    explore: bh_mx_ppc
    type: single_value
    fields: [mx_marketing.date_month, mx_marketing.cpo]
    pivots: [mx_marketing.date_month]
    fill_fields: [mx_marketing.date_month]
    filters:
      mx_marketing.date_month: 2 months ago for 2 months
    sorts: [mx_marketing.date_month desc]
    limit: 500
    query_timezone: America/New_York
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    bar_range_max:
    row: 6
    col: 15
    width: 3
    height: 2
  - title: Conv %
    name: Conv %
    model: client_bh_marketing
    explore: bh_mx_ppc
    type: single_value
    fields: [mx_marketing.date_month, mx_marketing.otr]
    pivots: [mx_marketing.date_month]
    fill_fields: [mx_marketing.date_month]
    filters:
      mx_marketing.date_month: 2 months ago for 2 months
    sorts: [mx_marketing.date_month desc]
    limit: 500
    query_timezone: America/New_York
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    bar_range_max:
    row: 6
    col: 12
    width: 3
    height: 2
  - title: New Tile
    name: New Tile
    model: client_bh_marketing
    explore: bh_mx_ppc
    type: looker_line
    fields: [mx_marketing.date_day_of_month, mx_marketing.date_month,
      mx_marketing.impr_sum]
    pivots: [mx_marketing.date_month]
    fill_fields: [mx_marketing.date_day_of_month, mx_marketing.date_month]
    filters:
      mx_marketing.date_month: 2 months ago for 2 months
    sorts: [mx_marketing.date_day_of_month, mx_marketing.date_month]
    limit: 500
    dynamic_fields: [{table_calculation: measure_running, label: Measure (Running),
        expression: 'running_total(${mx_marketing.impr_sum})', value_format: !!null '',
        value_format_name: decimal_0, _kind_hint: measure, _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: right
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: step
    y_axes: [{label: '', orientation: left, series: [{axisId: cost_running, id: 2020-07
              - cost_running, name: 2020-07}, {axisId: cost_running, id: 2020-08 -
              cost_running, name: 2020-08}], showLabels: false, showValues: false,
        valueFormat: '$#,##0,"K"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Day of Month
    hide_legend: true
    series_types:
      2020-08 - measure_running: area
    series_colors:
      2020-07 - cost_running: "#2a55b8"
      2020-08 - cost_running: "#8ea5f2"
      2020-07 - measure_running: "#2a55b8"
      2020-08 - measure_running: "#b5c3fc"
    swap_axes: false
    defaults_version: 1
    hidden_fields: [mx_marketing.impr_sum]
    title_hidden: true
    row: 4
    col: 6
    width: 3
    height: 2
  - title: Clicks - Sparkline
    name: Clicks - Sparkline
    model: client_bh_marketing
    explore: bh_mx_ppc
    type: looker_line
    fields: [mx_marketing.date_day_of_month, mx_marketing.date_month,
      mx_marketing.clicks_sum]
    pivots: [mx_marketing.date_month]
    fill_fields: [mx_marketing.date_day_of_month, mx_marketing.date_month]
    filters:
      mx_marketing.date_month: 2 months ago for 2 months
    sorts: [mx_marketing.date_day_of_month, mx_marketing.date_month]
    limit: 500
    dynamic_fields: [{table_calculation: measure_running, label: Measure (Running),
        expression: 'running_total(${mx_marketing.clicks_sum})', value_format: !!null '',
        value_format_name: decimal_0, _kind_hint: measure, _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: right
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: step
    y_axes: [{label: '', orientation: left, series: [{axisId: cost_running, id: 2020-07
              - cost_running, name: 2020-07}, {axisId: cost_running, id: 2020-08 -
              cost_running, name: 2020-08}], showLabels: false, showValues: false,
        valueFormat: '$#,##0,"K"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Day of Month
    hide_legend: true
    series_types:
      2020-08 - measure_running: area
    series_colors:
      2020-07 - cost_running: "#2a55b8"
      2020-08 - cost_running: "#8ea5f2"
      2020-07 - measure_running: "#2a55b8"
      2020-08 - measure_running: "#b5c3fc"
    swap_axes: false
    defaults_version: 1
    hidden_fields: [mx_marketing.clicks_sum]
    title_hidden: true
    row: 6
    col: 6
    width: 3
    height: 2
  - title: Conversions - Sparkline
    name: Conversions - Sparkline
    model: client_bh_marketing
    explore: bh_mx_ppc
    type: looker_line
    fields: [mx_marketing.date_day_of_month, mx_marketing.date_month,
      mx_marketing.outcomes_sum]
    pivots: [mx_marketing.date_month]
    fill_fields: [mx_marketing.date_day_of_month, mx_marketing.date_month]
    filters:
      mx_marketing.date_month: 2 months ago for 2 months
    sorts: [mx_marketing.date_day_of_month, mx_marketing.date_month]
    limit: 500
    dynamic_fields: [{table_calculation: measure_running, label: Measure (Running),
        expression: 'running_total(${mx_marketing.outcomes_sum})', value_format: !!null '',
        value_format_name: decimal_0, _kind_hint: measure, _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: right
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: step
    y_axes: [{label: '', orientation: left, series: [{axisId: cost_running, id: 2020-07
              - cost_running, name: 2020-07}, {axisId: cost_running, id: 2020-08 -
              cost_running, name: 2020-08}], showLabels: false, showValues: false,
        valueFormat: '$#,##0,"K"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Day of Month
    hide_legend: true
    series_types:
      2020-08 - measure_running: area
    series_colors:
      2020-07 - cost_running: "#2a55b8"
      2020-08 - cost_running: "#8ea5f2"
      2020-07 - measure_running: "#2a55b8"
      2020-08 - measure_running: "#b5c3fc"
    swap_axes: false
    defaults_version: 1
    hidden_fields: [mx_marketing.outcomes_sum]
    title_hidden: true
    row: 8
    col: 6
    width: 3
    height: 2
  - title: Impressions - MoM
    name: Impressions - MoM
    model: client_bh_marketing
    explore: bh_mx_ppc
    type: single_value
    fields: [mx_marketing.date_month, mx_marketing.impr_sum]
    pivots: [mx_marketing.date_month]
    fill_fields: [mx_marketing.date_month]
    filters:
      mx_marketing.date_month: 2 months ago for 2 months
    sorts: [mx_marketing.date_month]
    limit: 500
    dynamic_fields: [{table_calculation: total_change, label: Total Change, expression: "coalesce(pivot_index(${mx_marketing.impr_sum},2),0)-\n\
          \  coalesce(pivot_index(${mx_marketing.impr_sum},1),0)", value_format: !!null '',
        value_format_name: usd_0, is_disabled: false, _kind_hint: supermeasure, _type_hint: number},
      {table_calculation: change, label: "% Change", expression: "${total_change}/\n\
          \  coalesce(pivot_index(${mx_marketing.impr_sum},2),0)", value_format: !!null '',
        value_format_name: percent_1, is_disabled: false, _kind_hint: supermeasure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: between, value: [0.05, 0.1], background_color: "#77c989",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          custom: {id: fd0f2de9-f306-e71b-3773-187203a9198f, label: Custom, type: continuous,
            stops: [{color: "#E57947", offset: 0}, {color: "#ffffff", offset: 50},
              {color: "#3dbf55", offset: 100}]}, options: {steps: 5, constraints: {
              min: {type: number, value: -0.1}, mid: {type: number, value: 0}, max: {
                type: number, value: 0.1}}}}, bold: false, italic: false, strikethrough: false,
        fields: [change]}, {type: greater than, value: 0.1, background_color: "#32bf43",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: between, value: [-0.1, 5],
        background_color: "#ffa5ae", font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: less than, value: -0.1, background_color: "#d67e83",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      mx_marketing.cost_sum:
        is_active: false
    series_text_format:
      total_change:
        align: right
      change:
        align: right
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: mx_marketing.cost_sum,
            id: 2020-07 - mx_marketing.cost_sum, name: 2020-07 - 5. Performance
              $ Cost}, {axisId: mx_marketing.cost_sum, id: 2020-08 - mx_marketing.cost_sum,
            name: 2020-08 - 5. Performance $ Cost}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: !!null '', orientation: right, series: [{axisId: total_change, id: total_change,
            name: Total Change}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    up_color: "#3EB0D5"
    down_color: "#B1399E"
    total_color: "#C2DD67"
    hidden_fields: [total_change, mx_marketing.impr_sum]
    hidden_points_if_no: []
    series_labels: {}
    title_hidden: true
    row: 4
    col: 9
    width: 3
    height: 2
  - title: Cost - MoM
    name: Cost - MoM
    model: client_bh_marketing
    explore: bh_mx_ppc
    type: single_value
    fields: [mx_marketing.date_month, mx_marketing.cost_sum]
    pivots: [mx_marketing.date_month]
    fill_fields: [mx_marketing.date_month]
    filters:
      mx_marketing.date_month: 2 months ago for 2 months
    sorts: [mx_marketing.date_month]
    limit: 500
    dynamic_fields: [{table_calculation: total_change, label: Total Change, expression: "coalesce(pivot_index(${mx_marketing.cost_sum},2),0)-\n\
          \  coalesce(pivot_index(${mx_marketing.cost_sum},1),0)", value_format: !!null '',
        value_format_name: usd_0, is_disabled: false, _kind_hint: supermeasure, _type_hint: number},
      {table_calculation: change, label: "% Change", expression: "${total_change}/\n\
          \  coalesce(pivot_index(${mx_marketing.cost_sum},2),0)", value_format: !!null '',
        value_format_name: percent_1, is_disabled: false, _kind_hint: supermeasure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: between, value: [0.05, 0.1], background_color: "#77c989",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          custom: {id: fd0f2de9-f306-e71b-3773-187203a9198f, label: Custom, type: continuous,
            stops: [{color: "#E57947", offset: 0}, {color: "#ffffff", offset: 50},
              {color: "#3dbf55", offset: 100}]}, options: {steps: 5, constraints: {
              min: {type: number, value: -0.1}, mid: {type: number, value: 0}, max: {
                type: number, value: 0.1}}}}, bold: false, italic: false, strikethrough: false,
        fields: [change]}, {type: greater than, value: 0.1, background_color: "#32bf43",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: between, value: [-0.1, -0.05],
        background_color: "#ffa5ae", font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: less than, value: -0.1, background_color: "#d67e83",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      mx_marketing.cost_sum:
        is_active: false
    series_text_format:
      total_change:
        align: right
      change:
        align: right
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: mx_marketing.cost_sum,
            id: 2020-07 - mx_marketing.cost_sum, name: 2020-07 - 5. Performance
              $ Cost}, {axisId: mx_marketing.cost_sum, id: 2020-08 - mx_marketing.cost_sum,
            name: 2020-08 - 5. Performance $ Cost}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: !!null '', orientation: right, series: [{axisId: total_change, id: total_change,
            name: Total Change}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    up_color: "#3EB0D5"
    down_color: "#B1399E"
    total_color: "#C2DD67"
    hidden_fields: [total_change, mx_marketing.cost_sum]
    hidden_points_if_no: []
    series_labels: {}
    title_hidden: true
    row: 2
    col: 9
    width: 3
    height: 2
  - title: Clicks - MoM
    name: Clicks - MoM
    model: client_bh_marketing
    explore: bh_mx_ppc
    type: single_value
    fields: [mx_marketing.date_month, mx_marketing.clicks_sum]
    pivots: [mx_marketing.date_month]
    fill_fields: [mx_marketing.date_month]
    filters:
      mx_marketing.date_month: 2 months ago for 2 months
    sorts: [mx_marketing.date_month]
    limit: 500
    dynamic_fields: [{table_calculation: total_change, label: Total Change, expression: "coalesce(pivot_index(${mx_marketing.clicks_sum},2),0)-\n\
          \  coalesce(pivot_index(${mx_marketing.clicks_sum},1),0)", value_format: !!null '',
        value_format_name: usd_0, is_disabled: false, _kind_hint: supermeasure, _type_hint: number},
      {table_calculation: change, label: "% Change", expression: "${total_change}/\n\
          \  coalesce(pivot_index(${mx_marketing.clicks_sum},2),0)", value_format: !!null '',
        value_format_name: percent_1, is_disabled: false, _kind_hint: supermeasure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: between, value: [0.05, 0.1], background_color: "#77c989",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          custom: {id: fd0f2de9-f306-e71b-3773-187203a9198f, label: Custom, type: continuous,
            stops: [{color: "#E57947", offset: 0}, {color: "#ffffff", offset: 50},
              {color: "#3dbf55", offset: 100}]}, options: {steps: 5, constraints: {
              min: {type: number, value: -0.1}, mid: {type: number, value: 0}, max: {
                type: number, value: 0.1}}}}, bold: false, italic: false, strikethrough: false,
        fields: [change]}, {type: greater than, value: 0.1, background_color: "#32bf43",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: between, value: [-0.1, -0.05],
        background_color: "#ffa5ae", font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: less than, value: -0.1, background_color: "#d67e83",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      mx_marketing.cost_sum:
        is_active: false
    series_text_format:
      total_change:
        align: right
      change:
        align: right
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: mx_marketing.cost_sum,
            id: 2020-07 - mx_marketing.cost_sum, name: 2020-07 - 5. Performance
              $ Cost}, {axisId: mx_marketing.cost_sum, id: 2020-08 - mx_marketing.cost_sum,
            name: 2020-08 - 5. Performance $ Cost}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: !!null '', orientation: right, series: [{axisId: total_change, id: total_change,
            name: Total Change}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    up_color: "#3EB0D5"
    down_color: "#B1399E"
    total_color: "#C2DD67"
    hidden_fields: [total_change, mx_marketing.clicks_sum]
    hidden_points_if_no: []
    series_labels: {}
    title_hidden: true
    row: 6
    col: 9
    width: 3
    height: 2
  - title: Conversions - MoM
    name: Conversions - MoM
    model: client_bh_marketing
    explore: bh_mx_ppc
    type: single_value
    fields: [mx_marketing.date_month, mx_marketing.impr_sum, mx_marketing.outcomes_sum]
    pivots: [mx_marketing.date_month]
    fill_fields: [mx_marketing.date_month]
    filters:
      mx_marketing.date_month: 2 months ago for 2 months
    sorts: [mx_marketing.date_month]
    limit: 500
    dynamic_fields: [{table_calculation: total_change, label: Total Change, expression: "coalesce(pivot_index(${mx_marketing.outcomes_sum},2),0)-\n\
          \  coalesce(pivot_index(${mx_marketing.outcomes_sum},1),0)", value_format: !!null '',
        value_format_name: usd_0, is_disabled: false, _kind_hint: supermeasure, _type_hint: number},
      {table_calculation: change, label: "% Change", expression: "${total_change}/\n\
          \  coalesce(pivot_index(${mx_marketing.outcomes_sum},2),0)", value_format: !!null '',
        value_format_name: percent_1, is_disabled: false, _kind_hint: supermeasure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: between, value: [0.05, 0.1], background_color: "#77c989",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          custom: {id: fd0f2de9-f306-e71b-3773-187203a9198f, label: Custom, type: continuous,
            stops: [{color: "#E57947", offset: 0}, {color: "#ffffff", offset: 50},
              {color: "#3dbf55", offset: 100}]}, options: {steps: 5, constraints: {
              min: {type: number, value: -0.1}, mid: {type: number, value: 0}, max: {
                type: number, value: 0.1}}}}, bold: false, italic: false, strikethrough: false,
        fields: [change]}, {type: greater than, value: 0.1, background_color: "#32bf43",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: between, value: [-0.1, -0.05],
        background_color: "#ffa5ae", font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: less than, value: -0.1, background_color: "#d67e83",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      mx_marketing.cost_sum:
        is_active: false
    series_text_format:
      total_change:
        align: right
      change:
        align: right
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: mx_marketing.cost_sum,
            id: 2020-07 - mx_marketing.cost_sum, name: 2020-07 - 5. Performance
              $ Cost}, {axisId: mx_marketing.cost_sum, id: 2020-08 - mx_marketing.cost_sum,
            name: 2020-08 - 5. Performance $ Cost}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: !!null '', orientation: right, series: [{axisId: total_change, id: total_change,
            name: Total Change}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    up_color: "#3EB0D5"
    down_color: "#B1399E"
    total_color: "#C2DD67"
    hidden_fields: [total_change, mx_marketing.impr_sum, mx_marketing.outcomes_sum]
    hidden_points_if_no: []
    series_labels: {}
    title_hidden: true
    row: 8
    col: 9
    width: 3
    height: 2
  - title: Cost - Past Year
    name: Cost - Past Year
    model: client_bh_marketing
    explore: bh_mx_ppc
    type: looker_column
    fields: [mx_marketing.cost_sum, mx_marketing.date_month]
    fill_fields: [mx_marketing.date_month]
    filters:
      mx_marketing.date_month: 12 months ago for 12 months
    sorts: [mx_marketing.date_month]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: mx_marketing.cost_sum,
            id: mx_marketing.cost_sum, name: "$ Cost"}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    series_colors:
      mx_marketing.cost_sum: "#86a9e3"
    trend_lines: []
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    title_hidden: true
    row: 2
    col: 18
    width: 5
    height: 2
  - title: Impressions - Past Year
    name: Impressions - Past Year
    model: client_bh_marketing
    explore: bh_mx_ppc
    type: looker_column
    fields: [mx_marketing.date_month, mx_marketing.impr_sum]
    fill_fields: [mx_marketing.date_month]
    filters:
      mx_marketing.date_month: 12 months ago for 12 months
    sorts: [mx_marketing.date_month]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: mx_marketing.cost_sum,
            id: mx_marketing.cost_sum, name: "$ Cost"}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    series_colors:
      mx_marketing.impr_sum: "#86a9e3"
    trend_lines: []
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    title_hidden: true
    row: 4
    col: 18
    width: 5
    height: 2
  - title: Clicks - Past Year
    name: Clicks - Past Year
    model: client_bh_marketing
    explore: bh_mx_ppc
    type: looker_column
    fields: [mx_marketing.date_month, mx_marketing.clicks_sum, mx_marketing.cpc,
      mx_marketing.ctr]
    fill_fields: [mx_marketing.date_month]
    filters:
      mx_marketing.date_month: 12 months ago for 12 months
    sorts: [mx_marketing.date_month]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: mx_marketing.clicks_sum,
            id: mx_marketing.clicks_sum, name: "# Clicks"}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: left, series: [{axisId: mx_marketing.cpc,
            id: mx_marketing.cpc, name: "$ CPC"}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: !!null '', orientation: left, series: [{axisId: mx_marketing.ctr,
            id: mx_marketing.ctr, name: "% CTR"}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    hide_legend: true
    series_types:
      mx_marketing.cpc: line
      mx_marketing.ctr: line
    series_colors:
      mx_marketing.clicks_sum: "#86a9e3"
      mx_marketing.cpc: "#ba5a51"
      mx_marketing.ctr: "#5b46bf"
    trend_lines: []
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    title_hidden: true
    row: 6
    col: 18
    width: 5
    height: 2
  - title: Conversions - Past Year
    name: Conversions - Past Year
    model: client_bh_marketing
    explore: bh_mx_ppc
    type: looker_column
    fields: [mx_marketing.date_month, mx_marketing.outcomes_sum, mx_marketing.cpo,
      mx_marketing.otr]
    fill_fields: [mx_marketing.date_month]
    filters:
      mx_marketing.date_month: 12 months ago for 12 months
    sorts: [mx_marketing.date_month]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: mx_marketing.outcomes_sum,
            id: mx_marketing.outcomes_sum, name: "# Outcomes"}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, type: linear},
      {label: '', orientation: left, series: [{axisId: mx_marketing.cpo, id: mx_marketing.cpo,
            name: "$ CPO"}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, type: linear}, {label: '', orientation: left, series: [
          {axisId: mx_marketing.otr, id: mx_marketing.otr, name: "%\
              \ OTR"}], showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        type: linear}]
    hide_legend: true
    series_types:
      mx_marketing.cpc: line
      mx_marketing.ctr: line
      mx_marketing.cpo: line
      mx_marketing.otr: line
    series_colors:
      mx_marketing.clicks_sum: "#86a9e3"
      mx_marketing.cpc: "#ba5a51"
      mx_marketing.ctr: "#5b46bf"
      mx_marketing.cpo: "#ba5a51"
      mx_marketing.otr: "#5b46bf"
      mx_marketing.outcomes_sum: "#86a9e3"
    trend_lines: []
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    title_hidden: true
    row: 8
    col: 18
    width: 5
    height: 2
  - name: Totals
    type: text
    title_text: Totals
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 3
    width: 3
    height: 2
  - name: Month over Month
    type: text
    title_text: Month over Month
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 6
    width: 6
    height: 2
  - name: Performance
    type: text
    title_text: Performance
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 12
    width: 6
    height: 2
  - name: Past 12 Months
    type: text
    title_text: Past 12 Months
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 18
    width: 5
    height: 2
  - title: ''
    name: ''
    model: client_bh_marketing
    explore: bh_mx_ppc
    type: single_value
    fields: [mx_marketing.cost_sum, mx_marketing.date_month]
    pivots: [mx_marketing.date_month]
    fill_fields: [mx_marketing.date_month]
    filters:
      mx_marketing.date_month: 2 months ago for 2 months
    sorts: [mx_marketing.date_month desc]
    limit: 500
    query_timezone: America/New_York
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: $##0.0,"K"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    bar_range_max:
    row: 2
    col: 3
    width: 3
    height: 2
  - title: Day of Week Performance
    name: Day of Week Performance
    model: client_bh_marketing
    explore: bh_mx_ppc
    type: looker_grid
    fields: [mx_marketing.date_day_of_week, mx_marketing.cost_sum,
      mx_marketing.outcomes_sum, mx_marketing.cpo, mx_marketing.otr]
    fill_fields: [mx_marketing.date_day_of_week]
    filters:
      mx_marketing.date_month: 1 months ago for 1 months
    sorts: [mx_marketing.date_day_of_week]
    limit: 500
    total: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      mx_marketing.date_day_of_week: Day of Week
      mx_marketing.cost_sum: Cost
      mx_marketing.outcomes_sum: Conversions
      mx_marketing.cpo: Cost/Conv
      mx_marketing.otr: Conv %
    series_cell_visualizations:
      mx_marketing.cost_sum:
        is_active: true
        palette:
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      mx_marketing.outcomes_sum:
        is_active: true
        palette:
          palette_id: afd46b40-e939-4ace-bffd-69d1bb16ee05
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      mx_marketing.cpo:
        is_active: true
        palette:
          palette_id: f4a0623c-fb22-6706-3e11-3663903382aa
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
          custom_colors:
          - "#dba18b"
          - "#bf5638"
      mx_marketing.otr:
        is_active: true
        palette:
          palette_id: afd46b40-e939-4ace-bffd-69d1bb16ee05
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
    series_text_format:
      mx_marketing.otr:
        align: right
    series_types: {}
    defaults_version: 1
    row: 10
    col: 1
    width: 11
    height: 6
  - title: Device Performance
    name: Device Performance
    model: client_bh_marketing
    explore: bh_mx_ppc
    type: looker_grid
    fields: [mx_marketing.cost_sum, mx_marketing.outcomes_sum, mx_marketing.cpo,
      mx_marketing.otr, mx_marketing.device]
    fill_fields: [mx_marketing.device]
    filters:
      mx_marketing.date_month: 1 months ago for 1 months
    sorts: [mx_marketing.cost_sum desc]
    limit: 500
    total: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      mx_marketing.date_day_of_week: Day of Week
      mx_marketing.cost_sum: Cost
      mx_marketing.outcomes_sum: Conversions
      mx_marketing.cpo: Cost/Conv
      mx_marketing.otr: Conv %
    series_cell_visualizations:
      mx_marketing.cost_sum:
        is_active: true
        palette:
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      mx_marketing.outcomes_sum:
        is_active: true
        palette:
          palette_id: afd46b40-e939-4ace-bffd-69d1bb16ee05
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      mx_marketing.cpo:
        is_active: true
        palette:
          palette_id: f4a0623c-fb22-6706-3e11-3663903382aa
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
          custom_colors:
          - "#dba18b"
          - "#bf5638"
      mx_marketing.otr:
        is_active: true
        palette:
          palette_id: afd46b40-e939-4ace-bffd-69d1bb16ee05
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
    series_text_format:
      mx_marketing.otr:
        align: right
    series_types: {}
    defaults_version: 1
    row: 16
    col: 1
    width: 11
    height: 4
  - title: Lead Profile
    name: Lead Profile
    model: client_bh_marketing
    explore: bh_mx_ppc
    type: looker_grid
    fields: [arch_outcomes_admin.outcome_type, mx_marketing.outcomes_sum,
      arch_outcomes_admin.outcome_type_name]
    filters:
      mx_marketing.date_month: 1 months ago for 1 months
    sorts: [mx_marketing.outcomes_sum desc]
    limit: 500
    total: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      mx_marketing.date_day_of_week: Day of Week
      mx_marketing.cost_sum: Cost
      mx_marketing.outcomes_sum: Conversions
      mx_marketing.cpo: Cost/Conv
      mx_marketing.otr: Conv %
    series_cell_visualizations:
      mx_marketing.cost_sum:
        is_active: true
        palette:
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      mx_marketing.outcomes_sum:
        is_active: true
        palette:
          palette_id: afd46b40-e939-4ace-bffd-69d1bb16ee05
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      mx_marketing.cpo:
        is_active: true
        palette:
          palette_id: f4a0623c-fb22-6706-3e11-3663903382aa
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
          custom_colors:
          - "#dba18b"
          - "#bf5638"
      mx_marketing.otr:
        is_active: true
        palette:
          palette_id: afd46b40-e939-4ace-bffd-69d1bb16ee05
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
    series_text_format:
      mx_marketing.otr:
        align: right
    series_types: {}
    defaults_version: 1
    hidden_fields: [arch_outcomes_admin.outcome_type]
    row: 20
    col: 1
    width: 11
    height: 6
  - name: " (2)"
    type: text
    title_text: "."
    row: 0
    col: 1
    width: 2
    height: 2
  - title: Analyst Notes
    name: Analyst Notes
    model: client_bh_marketing
    explore: bh_mx_ppc
    type: table
    fields: [analyst_notes_bh.severity, analyst_notes_bh.notes]
    filters:
      analyst_notes_bh.month_month: 1 months ago for 1 months
    sorts: [analyst_notes_bh.severity desc]
    limit: 500
    query_timezone: America/New_York
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    transpose: false
    truncate_text: false
    size_to_fit: false
    series_labels: {}
    series_column_widths:
      analyst_notes_bh.severity: 75
    series_text_format:
      analyst_notes_bh.notes: {}
      analyst_notes_bh.severity:
        align: center
        fg_color: "#CCC"
        bg_color: "#CCC"
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '11'
    conditional_formatting: []
    series_value_format:
      analyst_notes_bh.severity: "-"
    theme: traditional
    layout: fixed
    minWidthForIndexColumns: true
    headerFontSize: 12
    bodyFontSize: 12
    showTooltip: true
    showHighlight: true
    columnOrder: {}
    rowSubtotals: false
    colSubtotals: false
    spanRows: true
    spanCols: true
    calculateOthers: true
    sortColumnsBy: pivots
    useViewName: false
    useHeadings: true
    useShortName: false
    useUnit: false
    groupVarianceColumns: false
    genericLabelForSubtotals: false
    indexColumn: false
    transposeTable: false
    subtotalDepth: '1'
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    hidden_fields: [analyst_notes_bh.month, analyst_notes_bh.severity]
    hidden_points_if_no: []
    title_hidden: true
    row: 10
    col: 12
    width: 11
    height: 16
  - title: Cost - Cumulative
    name: Cost - Cumulative
    model: client_bh_marketing
    explore: bh_mx_ppc
    type: looker_line
    fields: [mx_marketing.date_day_of_month, mx_marketing.date_month,
      mx_marketing.cost_sum]
    pivots: [mx_marketing.date_month]
    fill_fields: [mx_marketing.date_day_of_month, mx_marketing.date_month]
    filters:
      mx_marketing.date_month: 2 months ago for 2 months
    sorts: [mx_marketing.date_day_of_month, mx_marketing.date_month]
    limit: 500
    dynamic_fields: [{table_calculation: cost_running, label: Cost (Running), expression: 'running_total(${mx_marketing.cost_sum})',
        value_format: !!null '', value_format_name: usd_0, _kind_hint: measure, _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: right
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: step
    y_axes: [{label: '', orientation: left, series: [{axisId: cost_running, id: 2020-07
              - cost_running, name: 2020-07}, {axisId: cost_running, id: 2020-08 -
              cost_running, name: 2020-08}], showLabels: false, showValues: false,
        valueFormat: '$#,##0,"K"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Day of Month
    hide_legend: true
    series_types:
      2020-08 - cost_running: area
    series_colors:
      2020-07 - cost_running: "#2a55b8"
      2020-08 - cost_running: "#8ea5f2"
    swap_axes: false
    defaults_version: 1
    hidden_fields: [mx_marketing.cost_sum]
    title_hidden: true
    row: 2
    col: 6
    width: 3
    height: 2
  - title: Campaign Performance
    name: Campaign Performance
    model: client_bh_marketing
    explore: bh_mx_ppc
    type: looker_grid
    fields: [arch_campaigns.campaign, mx_marketing.impr_sum, mx_marketing.clicks_sum,
      mx_marketing.ctr, mx_marketing.cpc, mx_marketing.cost_sum,
      mx_marketing.outcomes_sum, mx_marketing.otr, mx_marketing.cpo]
    filters:
      mx_marketing.date_month: 1 months ago for 1 months
    sorts: [mx_marketing.cost_sum desc]
    limit: 500
    total: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      mx_marketing.date_day_of_week: Day of Week
      mx_marketing.cost_sum: Cost
      mx_marketing.outcomes_sum: Conversions
      mx_marketing.cpo: Cost/Conv
      mx_marketing.otr: Conv %
      mx_marketing.impr_sum: Impressions
      mx_marketing.clicks_sum: Clicks
      mx_marketing.ctr: CTR
      mx_marketing.cpc: Cost/Click
    series_cell_visualizations:
      mx_marketing.cost_sum:
        is_active: true
        palette:
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      mx_marketing.outcomes_sum:
        is_active: true
        palette:
          palette_id: afd46b40-e939-4ace-bffd-69d1bb16ee05
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      mx_marketing.cpo:
        is_active: true
        palette:
          palette_id: 66d96904-5440-8b42-5243-e0c15b29ccba
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
          custom_colors:
          - "#dba18b"
          - "#bf5638"
      mx_marketing.otr:
        is_active: true
        palette:
          palette_id: afd46b40-e939-4ace-bffd-69d1bb16ee05
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      mx_marketing.impr_sum:
        is_active: true
        palette:
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      mx_marketing.clicks_sum:
        is_active: true
        palette:
          palette_id: afd46b40-e939-4ace-bffd-69d1bb16ee05
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      mx_marketing.cpc:
        is_active: true
        palette:
          palette_id: 88fc5dc3-3fed-b89e-3e55-2f127c92f8fa
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
          custom_colors:
          - "#dba18b"
          - "#bf5638"
      mx_marketing.ctr:
        is_active: true
        palette:
          palette_id: afd46b40-e939-4ace-bffd-69d1bb16ee05
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
    series_text_format:
      mx_marketing.otr:
        align: right
    series_types: {}
    defaults_version: 1
    row: 26
    col: 1
    width: 22
    height: 9
  - title: New Tile
    name: New Tile (2)
    model: client_bh_marketing
    explore: bh_mx_ppc
    type: looker_scatter
    fields: [arch_campaigns.campaign, mx_marketing.date_month, mx_marketing.cost_sum,
      mx_marketing.opc]
    pivots: [mx_marketing.date_month]
    fill_fields: [mx_marketing.date_month]
    filters:
      mx_marketing.date_month: 2 months ago for 2 months
    sorts: [arch_campaigns_admin.campaign desc, mx_marketing.date_month desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle_outline
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    y_axes: [{label: '', orientation: left, series: [{axisId: mx_marketing.clicks_sum,
            id: mx_marketing.clicks_sum, name: "# Clicks"}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    size_by_field: mx_marketing.opc
    hide_legend: true
    series_types: {}
    series_colors:
      2020-07 - mx_marketing.clicks_sum: "#a4bdf7"
      2020-08 - mx_marketing.clicks_sum: "#4276BE"
      2020-07 - mx_marketing.cost_sum: "#a4bdf7"
      2020-08 - mx_marketing.cost_sum: "#4276BE"
    series_labels: {}
    swap_axes: false
    hidden_fields: []
    hidden_points_if_no: []
    levels: 4
    label_factor: 85
    label_fine: 13
    rounded_strokes: true
    independent: true
    labelScale: false
    negatives: false
    wrap_width: 100
    opacity_area: 5
    dot_radius: 0
    opacity_circles: 3
    backgroundColor: "#CDCDCD"
    axisColor: "#CDCDCD"
    stroke_width: 7
    glow: 48
    axis_label_font: 18
    axis_scale_font: 12
    legend_font: 12
    legend_padding: 11
    legend_side: right
    FR - PC - Lafayette_color: "#E48522"
    FR - PC - Firestone_color: "#D13452"
    FR - PC - Westminster_color: "#fc5f7d"
    FR - PC - Lakewood_color: "#B977A9"
    FR - PC - Thornton_color: "#f85b79"
    FR - PC - Broomfield_color: "#615894"
    FR - PC - Wheat Ridge_color: "#ff6381"
    FR - PC - Littleton_color: "#7bc739"
    FR - PC - Aurora_color: "#4A80BC"
    FR - PC - Denver_color: "#F0C733"
    FR - PC - Superior - Display_color: "#92b3d7"
    FR - PC - Superior - Video Discovery_color: "#e38597"
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    interpolation: linear
    title_hidden: true
    row: 2
    col: 12
    width: 6
    height: 4
