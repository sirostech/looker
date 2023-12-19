---
- dashboard: from_polygon_for_front_end_use
  title: From Polygon (For Front End Use)
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: pz9w8KRgJzuZhfbfzKwnze
  embed_style:
    background_color: "#1f2024"
    title_color: "#00ccf2"
    tile_background_color: "#1f2024"
    tile_text_color: "#00ccf2"
  elements:
  - title: Monthly Well Production
    name: Monthly Well Production
    model: lg_production
    explore: lg_well_data_07_03_23_for_calc
    type: looker_line
    fields: [lg_well_production_data_07_03_23_clustered.water_production_total, lg_well_production_data_07_03_23_clustered.oil_production_total,
      lg_well_production_data_07_03_23_clustered.gas_production_total, lg_well_production_data_07_03_23_clustered.production_duration]
    filters:
      lg_well_data_07_03_23_for_calc.custom_geo_intersection: '1'
      lg_well_production_data_07_03_23_clustered.production_duration_param: Month
      lg_well_production_data_07_03_23_clustered.production_duration: "-NULL"
    sorts: [lg_well_production_data_07_03_23_clustered.production_duration]
    limit: 1000
    column_limit: 50
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
    show_null_points: false
    interpolation: linear
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
      options:
        steps: 5
        reverse: false
    y_axes: [{label: '', orientation: left, series: [{axisId: lg_well_production_data_07_03_23_clustered.water_production_total,
            id: lg_well_production_data_07_03_23_clustered.water_production_total,
            name: Water Production Total}, {axisId: lg_well_production_data_07_03_23_clustered.oil_production_total,
            id: lg_well_production_data_07_03_23_clustered.oil_production_total, name: Oil
              Production Total}, {axisId: lg_well_production_data_07_03_23_clustered.gas_production_total,
            id: lg_well_production_data_07_03_23_clustered.gas_production_total, name: Gas
              Production Total}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      lg_well_production_data_07_03_23_clustered.water_production_total: "#2B99F7"
      lg_well_production_data_07_03_23_clustered.oil_production_total: "#FC2E31"
      lg_well_production_data_07_03_23_clustered.gas_production_total: "#08B248"
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    listen: {}
    row: 0
    col: 0
    width: 17
    height: 10
  - title: Production Totals by Type
    name: Production Totals by Type
    model: lg_production
    explore: lg_well_data_07_03_23_for_calc
    type: looker_single_record
    fields: [lg_well_production_data_07_03_23_clustered.gas_production_total, lg_well_production_data_07_03_23_clustered.oil_production_total,
      lg_well_production_data_07_03_23_clustered.water_production_total]
    filters:
      lg_well_data_07_03_23_for_calc.custom_geo_intersection: '1'
    limit: 500
    column_limit: 50
    show_view_names: false
    defaults_version: 1
    listen: {}
    row: 0
    col: 17
    width: 6
    height: 4
  - title: Operator Distribution by PV Status
    name: Operator Distribution by PV Status
    model: lg_production
    explore: lg_well_data_07_03_23_for_calc
    type: looker_grid
    fields: [lg_well_data_07_03_23_for_calc.operator_name, count_of_api_10, lg_well_data_07_03_23_for_calc.pv_status]
    filters:
      lg_well_data_07_03_23_for_calc.custom_geo_intersection: '1'
    sorts: [lg_well_data_07_03_23_for_calc.pv_status desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: count_of_api_10
      based_on: lg_well_data_07_03_23_for_calc.api_10
      expression: ''
      label: Count of API 10
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: transparent
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      count_of_api_10:
        is_active: true
    defaults_version: 1
    hidden_pivots: {}
    value_labels: legend
    label_type: labPer
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
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    listen: {}
    row: 10
    col: 17
    width: 6
    height: 4
  - title: Well % by Operator
    name: Well % by Operator
    model: lg_production
    explore: lg_well_data_07_03_23_for_calc
    type: looker_pie
    fields: [lg_well_data_07_03_23_for_calc.operator_name, count_of_api_10]
    filters:
      lg_well_data_07_03_23_for_calc.custom_geo_intersection: '1'
    sorts: [count_of_api_10 desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: count_of_api_10
      based_on: lg_well_data_07_03_23_for_calc.api_10
      expression: ''
      label: Count of API 10
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    value_labels: legend
    label_type: labPer
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen: {}
    row: 4
    col: 17
    width: 6
    height: 6
  - title: Cumulative Production Totals
    name: Cumulative Production Totals
    model: lg_production
    explore: lg_well_data_07_03_23_for_calc
    type: looker_column
    fields: [lg_well_production_data_07_03_23_clustered.production_month, lg_well_production_data_07_03_23_clustered.gas_production_total,
      lg_well_production_data_07_03_23_clustered.oil_production_total, lg_well_production_data_07_03_23_clustered.water_production_total]
    filters:
      lg_well_data_07_03_23_for_calc.custom_geo_intersection: '1'
    sorts: [lg_well_production_data_07_03_23_clustered.production_month]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: sum_of_gas_mcf_monthly_sum
      based_on: lg_well_production_data_07_03_23_clustered.gas_mcf_monthly_sum
      expression: ''
      label: Sum of Gas Mcf Monthly Sum
      type: sum
      _kind_hint: measure
      _type_hint: number
    - args:
      - lg_well_production_data_07_03_23_clustered.gas_production_total
      calculation_type: running_total
      category: table_calculation
      based_on: lg_well_production_data_07_03_23_clustered.gas_production_total
      label: Running total of Well Production Gas Production Total
      source_field: lg_well_production_data_07_03_23_clustered.gas_production_total
      table_calculation: running_total_of_well_production_gas_production_total
      value_format:
      value_format_name:
      _kind_hint: measure
      _type_hint: number
    - args:
      - lg_well_production_data_07_03_23_clustered.oil_production_total
      calculation_type: running_total
      category: table_calculation
      based_on: lg_well_production_data_07_03_23_clustered.oil_production_total
      label: Running total of Well Production Oil Production Total
      source_field: lg_well_production_data_07_03_23_clustered.oil_production_total
      table_calculation: running_total_of_well_production_oil_production_total
      value_format:
      value_format_name:
      _kind_hint: measure
      _type_hint: number
    - args:
      - lg_well_production_data_07_03_23_clustered.water_production_total
      calculation_type: running_total
      category: table_calculation
      based_on: lg_well_production_data_07_03_23_clustered.water_production_total
      label: Running total of Well Production Water Production Total
      source_field: lg_well_production_data_07_03_23_clustered.water_production_total
      table_calculation: running_total_of_well_production_water_production_total
      value_format:
      value_format_name:
      _kind_hint: measure
      _type_hint: number
    x_axis_gridlines: true
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: legacy
      palette_id: looker_classic
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: running_total_of_well_production_gas_production_total,
            id: running_total_of_well_production_gas_production_total, name: Gas Cumulative},
          {axisId: running_total_of_well_production_oil_production_total, id: running_total_of_well_production_oil_production_total,
            name: Oil Cumulative}, {axisId: running_total_of_well_production_water_production_total,
            id: running_total_of_well_production_water_production_total, name: Water
              Cumulative}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      running_total_of_well_production_gas_production_total: "#1f3e5a"
      running_total_of_well_production_oil_production_total: "#ed6168"
      running_total_of_well_production_water_production_total: "#9fdee0"
    series_labels:
      running_total_of_well_production_gas_production_total: Gas Cumulative Mcf
      running_total_of_well_production_oil_production_total: Oil Cumulative Bbl
      running_total_of_well_production_water_production_total: Water Cumulative Bbl
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    hidden_fields: [lg_well_production_data_07_03_23_clustered.gas_production_total,
      lg_well_production_data_07_03_23_clustered.oil_production_total, lg_well_production_data_07_03_23_clustered.water_production_total]
    defaults_version: 1
    listen: {}
    row: 10
    col: 0
    width: 17
    height: 9
  - title: Well % by Formation
    name: Well % by Formation
    model: lg_production
    explore: lg_well_data_07_03_23_for_calc
    type: looker_pie
    fields: [lg_well_data_07_03_23_for_calc.formations, count_of_api_10]
    filters:
      lg_well_data_07_03_23_for_calc.custom_geo_intersection: '1'
    sorts: [lg_well_data_07_03_23_for_calc.formations]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: count_of_formations
      based_on: lg_well_data_07_03_23_for_calc.formations
      expression: ''
      label: Count of Formations
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - measure: count_of_api_10
      based_on: lg_well_data_07_03_23_for_calc.api_10
      expression: ''
      label: Count of API 10
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    hidden_pivots: {}
    listen: {}
    row: 14
    col: 17
    width: 6
    height: 5
