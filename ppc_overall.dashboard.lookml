- dashboard: core_stats__overall__ppc
  title: Core Stats - Overall - PPC
  layout: newspaper
  elements:
  - name: PPC - In-market Timing (By ~ Spend/Day)
    title: PPC - In-market Timing (By ~ Spend/Day)
    model: client_bh_marketing
    explore: bh_mx_ppc
    type: looker_timeline
    fields: [arch_campaigns_admin.program, arch_campaigns_admin.service_line, arch_campaigns_admin.campaign,
      bh_mx_marketing_ppc.date_start, bh_mx_marketing_ppc.date_end, bh_mx_marketing_ppc.cost_sum, bh_mx_marketing_ppc.date_diff]
    filters:
      bh_mx_ppc.client: Beaumont Health
      bh_mx_marketing_ppc.date_date: 15 months ago for 15 months
    sorts: [arch_campaigns_admin.program, arch_campaigns_admin.service_line, bh_mx_marketing_ppc.date_start
        desc]
    limit: 500
    dynamic_fields: [{table_calculation: daily_spend, label: "$ Daily Spend", expression: "${bh_mx_marketing_ppc.cost_sum}\n\
          \  /${bh_mx_marketing_ppc.date_diff}", value_format: !!null '', value_format_name: usd,
        _kind_hint: measure, _type_hint: number}]
    query_timezone: America/New_York
    color_application:
      collection_id: 80e60a97-c02b-4a41-aa05-83522ee2144b
      custom:
        id: 57df204b-f389-715d-5640-5fe40b65ab5d
        label: Custom
        type: continuous
        stops:
        - color: "#fcecd6"
          offset: 0
        - color: "#ab8a5a"
          offset: 50
        - color: "#ab8a5a"
          offset: 100
      options:
        steps: 5
        reverse: true
    groupBars: true
    labelSize: 10pt
    valueFormat: mmm-yy
    showLegend: false
    hidden_fields: [arch_campaigns_admin.program, arch_campaigns_admin.campaign, bh_mx_marketing_ppc.cost_sum,
      bh_mx_marketing_ppc.date_diff]
    series_types: {}
    row: 0
    col: 0
    width: 24
    height: 6
  - title: PPC - Detailed Stats (2019)
    name: PPC - Detailed Stats (2019)
    model: client_bh_marketing
    explore: bh_mx_ppc
    type: table
    fields: [arch_campaigns_admin.service_line, bh_mx_marketing_ppc.date_month, bh_mx_marketing_ppc.cost_sum,
      bh_mx_marketing_ppc.clicks_sum, bh_mx_marketing_ppc.ctr, bh_mx_marketing_ppc.cpc]
    pivots: [bh_mx_marketing_ppc.date_month]
    filters:
      bh_mx_ppc.client: Beaumont Health
      bh_mx_marketing_ppc.date_date: '2019'
      bh_mx_marketing_ppc.cost_sum: NOT NULL
    sorts: [bh_mx_marketing_ppc.date_month 0, arch_campaigns_admin.service_line]
    limit: 500
    total: true
    query_timezone: America/New_York
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: true
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_ppced_rows: false
    enable_conditional_formatting: true
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          custom: {id: 71035339-296d-3322-8c40-6da8ba64663e, label: Custom, type: continuous,
            stops: [{color: "#ffffff", offset: 0}, {color: "#61ab68", offset: 100}]},
          options: {steps: 5, constraints: {mid: {type: median}}}}, bold: false, italic: false,
        strikethrough: false, fields: [bh_mx_marketing_ppc.clicks_sum]}, {type: along a scale...,
        value: !!null '', background_color: "#3EB0D5", font_color: !!null '', color_application: {
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7, custom: {id: d83523c0-0c1a-316c-5eaf-f715f739e74b,
            label: Custom, type: continuous, stops: [{color: "#ffffff", offset: 0},
              {color: "#ab8a5a", offset: 100}]}, options: {steps: 5, constraints: {
              mid: {type: median}}}}, bold: false, italic: false, strikethrough: false,
        fields: [bh_mx_marketing_ppc.cost_sum]}, {type: along a scale..., value: !!null '',
        background_color: "#3EB0D5", font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          custom: {id: f12aaf77-ebef-6ca9-3cca-904cb14cd2cc, label: Custom, type: continuous,
            stops: [{color: "#ffffff", offset: 0}, {color: "#4276BE", offset: 100}]},
          options: {steps: 5, constraints: {mid: {type: median}}, reverse: true}},
        bold: false, italic: false, strikethrough: false, fields: [bh_mx_marketing_ppc.cpc]},
      {type: along a scale..., value: !!null '', background_color: "#3EB0D5", font_color: !!null '',
        color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7, custom: {
            id: d3744fa8-7fa0-d162-7ff2-efa63471f068, label: Custom, type: continuous,
            stops: [{color: "#ffffff", offset: 0}, {color: "#a247b2", offset: 100}]},
          options: {steps: 5, constraints: {min: {type: number, value: 0}, mid: {
                type: percentile, value: 50}}}}, bold: false, italic: false, strikethrough: false,
        fields: [bh_mx_marketing_ppc.ctr]}]
    conditional_formatting_include_totals: true
    conditional_formatting_include_nulls: false
    series_types: {}
    listen: {}
    row: 20
    col: 0
    width: 24
    height: 7
  - title: PPC - Overall Performance
    name: PPC - Overall Performance
    model: client_bh_marketing
    explore: bh_mx_ppc
    type: looker_line
    fields: [arch_campaigns_admin.service_line, bh_mx_marketing_ppc.cost_sum, bh_mx_marketing_ppc.clicks_sum,
      bh_mx_marketing_ppc.date_month, bh_mx_marketing_ppc.ctr]
    pivots: [arch_campaigns_admin.service_line]
    fill_fields: [bh_mx_marketing_ppc.date_month]
    filters:
      bh_mx_ppc.client: Beaumont Health
      bh_mx_marketing_ppc.date_date: 15 months ago for 15 months
    sorts: [arch_campaigns_admin.service_line, bh_mx_marketing_ppc.date_month 0]
    limit: 500
    total: true
    row_total: left
    dynamic_fields: [{table_calculation: daily_spend, label: "$ Daily Spend", expression: "${bh_mx_marketing_ppc.cost_sum}\n\
          \  /${bh_mx_marketing_ppc.date_diff}", value_format: !!null '', value_format_name: usd,
        is_disabled: true, _kind_hint: measure, _type_hint: number}, {table_calculation: cpc,
        label: "@ CPC", expression: "${bh_mx_marketing_ppc.cost_sum:row_total}/${bh_mx_marketing_ppc.clicks_sum:row_total}",
        value_format: !!null '', value_format_name: usd, _kind_hint: supermeasure,
        _type_hint: number}]
    query_timezone: America/New_York
    color_application:
      collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d
      palette_id: c36094e3-d04d-4aa4-8ec7-bc9af9f851f4
      options:
        steps: 5
        reverse: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: bh_mx_marketing_ppc.ctr, id: Row
              Total - bh_mx_marketing_ppc.ctr, name: Row Total - 5. Performance % CTR}, {
            axisId: bh_mx_marketing_ppc.ctr, id: 2018-02 - bh_mx_marketing_ppc.ctr, name: 2018-02
              - 5. Performance % CTR}, {axisId: bh_mx_marketing_ppc.ctr, id: 2018-03 - bh_mx_marketing_ppc.ctr,
            name: 2018-03 - 5. Performance % CTR}, {axisId: bh_mx_marketing_ppc.ctr, id: 2018-04
              - bh_mx_marketing_ppc.ctr, name: 2018-04 - 5. Performance % CTR}, {axisId: bh_mx_marketing_ppc.ctr,
            id: 2018-05 - bh_mx_marketing_ppc.ctr, name: 2018-05 - 5. Performance % CTR},
          {axisId: bh_mx_marketing_ppc.ctr, id: 2018-06 - bh_mx_marketing_ppc.ctr, name: 2018-06
              - 5. Performance % CTR}, {axisId: bh_mx_marketing_ppc.ctr, id: 2018-07 - bh_mx_marketing_ppc.ctr,
            name: 2018-07 - 5. Performance % CTR}, {axisId: bh_mx_marketing_ppc.ctr, id: 2018-08
              - bh_mx_marketing_ppc.ctr, name: 2018-08 - 5. Performance % CTR}, {axisId: bh_mx_marketing_ppc.ctr,
            id: 2018-09 - bh_mx_marketing_ppc.ctr, name: 2018-09 - 5. Performance % CTR},
          {axisId: bh_mx_marketing_ppc.ctr, id: 2018-10 - bh_mx_marketing_ppc.ctr, name: 2018-10
              - 5. Performance % CTR}, {axisId: bh_mx_marketing_ppc.ctr, id: 2018-11 - bh_mx_marketing_ppc.ctr,
            name: 2018-11 - 5. Performance % CTR}, {axisId: bh_mx_marketing_ppc.ctr, id: 2018-12
              - bh_mx_marketing_ppc.ctr, name: 2018-12 - 5. Performance % CTR}, {axisId: bh_mx_marketing_ppc.ctr,
            id: 2019-01 - bh_mx_marketing_ppc.ctr, name: 2019-01 - 5. Performance % CTR},
          {axisId: bh_mx_marketing_ppc.ctr, id: 2019-02 - bh_mx_marketing_ppc.ctr, name: 2019-02
              - 5. Performance % CTR}, {axisId: bh_mx_marketing_ppc.ctr, id: 2019-03 - bh_mx_marketing_ppc.ctr,
            name: 2019-03 - 5. Performance % CTR}, {axisId: bh_mx_marketing_ppc.ctr, id: 2019-04
              - bh_mx_marketing_ppc.ctr, name: 2019-04 - 5. Performance % CTR}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, type: linear}, {
        label: !!null '', orientation: right, series: [{axisId: cpc, id: cpc, name: "@\
              \ CPC"}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        type: linear}]
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
    limit_ppced_rows: false
    legend_position: center
    series_types:
      cpc: column
      Row Total - bh_mx_marketing_ppc.ctr: area
    point_style: none
    series_colors:
      cpc: "#4FA650"
    series_labels:
      Row Total - bh_mx_marketing_ppc.ctr: Overall CTR
      Birth - bh_mx_marketing_ppc.ctr: Birth
      Heart & Vascular - bh_mx_marketing_ppc.ctr: Heart & Vascular
      Hyperbaric - bh_mx_marketing_ppc.ctr: Hyperbaric
      Mammography - bh_mx_marketing_ppc.ctr: Mammography
      Orthopedics - bh_mx_marketing_ppc.ctr: Orthopedics
      Primary Care - bh_mx_marketing_ppc.ctr: Primary Care
      Proton Therapy - bh_mx_marketing_ppc.ctr: Proton Therapy
      Weight Loss & Bariatric - bh_mx_marketing_ppc.ctr: Weight Loss & Bariatric
      Women's Health - bh_mx_marketing_ppc.ctr: Women's Health
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    x_axis_datetime_label: "%b-%y"
    y_axis_combined: true
    show_null_points: false
    interpolation: monotone
    discontinuous_nulls: true
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    groupBars: true
    labelSize: 10pt
    valueFormat: mmm-yy
    showLegend: false
    hidden_fields: [bh_mx_marketing_ppc.cost_sum, bh_mx_marketing_ppc.clicks_sum]
    listen: {}
    row: 6
    col: 0
    width: 24
    height: 7
  - title: PPC - Cumulative Investment (2019)
    name: PPC - Cumulative Investment (2019)
    model: client_bh_marketing
    explore: bh_mx_ppc
    type: looker_area
    fields: [arch_campaigns_admin.service_line, bh_mx_marketing_ppc.date_month, bh_mx_marketing_ppc.cost_sum]
    pivots: [arch_campaigns_admin.service_line]
    filters:
      bh_mx_ppc.client: Beaumont Health
      bh_mx_marketing_ppc.date_date: '2019'
      bh_mx_marketing_ppc.cost_sum: NOT NULL
    sorts: [arch_campaigns_admin.service_line 0, bh_mx_marketing_ppc.date_month]
    limit: 500
    total: true
    row_total: right
    dynamic_fields: [{table_calculation: cost, label: "+ Cost", expression: 'running_total(${bh_mx_marketing_ppc.cost_sum})',
        value_format: !!null '', value_format_name: usd_0, is_disabled: false, _kind_hint: measure,
        _type_hint: number}, {table_calculation: referrals, label: "+ Referrals",
        expression: 'running_total(${bh_mx_marketing_ppc.referrals_total})', value_format: !!null '',
        value_format_name: usd_0, _kind_hint: dimension, _type_hint: 'null', is_disabled: true}]
    query_timezone: America/New_York
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    limit_ppced_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    x_axis_datetime_label: "%b-%y"
    y_axis_combined: true
    show_null_points: true
    interpolation: step
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [bh_mx_marketing_ppc.cost_sum]
    row: 13
    col: 0
    width: 12
    height: 7
  - title: PPC - Cumulative Referrals (2019)
    name: PPC - Cumulative Referrals (2019)
    model: client_bh_marketing
    explore: bh_mx_ppc
    type: looker_area
    fields: [bh_mx_marketing_ppc.date_month, arch_campaigns_admin.service_line, bh_mx_marketing_ppc.referrals_total]
    pivots: [arch_campaigns_admin.service_line]
    filters:
      bh_mx_ppc.client: Beaumont Health
      bh_mx_marketing_ppc.date_date: '2019'
      bh_mx_marketing_ppc.cost_sum: NOT NULL
    sorts: [arch_campaigns_admin.service_line 0, bh_mx_marketing_ppc.date_month]
    limit: 500
    total: true
    row_total: right
    dynamic_fields: [{table_calculation: referrals, label: "+ Referrals", expression: 'running_total(${bh_mx_marketing_ppc.referrals_total})',
        value_format: !!null '', value_format_name: decimal_0, is_disabled: false,
        _kind_hint: measure, _type_hint: number}]
    query_timezone: America/New_York
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    limit_ppced_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    x_axis_datetime_label: "%b-%y"
    y_axis_combined: true
    show_null_points: true
    interpolation: step
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [bh_mx_marketing_ppc.referrals_total]
    row: 13
    col: 12
    width: 12
    height: 7
