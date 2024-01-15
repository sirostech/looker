---
- dashboard: operator
  title: Operator
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: LtVqKzhJItU1XvCnbP2h1c
  elements:
  - title: Total Wells
    name: Total Wells
    model: lg_production
    explore: lg_well_data_07_03_23_for_calc
    type: single_value
    fields: [lg_well_data_07_03_23_for_calc.operator_name, lg_well_data_07_03_23_for_calc.count]
    filters:
      lg_well_data_07_03_23_for_calc.operator_name: WHITING OIL AND GAS CORPORATION
      lg_well_data_07_03_23_for_calc.pv_basin: WB
    sorts: [lg_well_data_07_03_23_for_calc.count desc 0]
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
      is_disabled: true
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
      is_disabled: true
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
      is_disabled: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: legacy
      palette_id: looker_classic
      options:
        steps: 5
    custom_color: "#353b49"
    single_value_title: Total Well Count
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: legacy, palette_id: legacy_diverging1},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: running_total_of_well_production_gas_production_total,
            id: running_total_of_well_production_gas_production_total, name: Gas Cumulative
              Mcf}, {axisId: running_total_of_well_production_oil_production_total,
            id: running_total_of_well_production_oil_production_total, name: Oil Cumulative
              Bbl}, {axisId: running_total_of_well_production_water_production_total,
            id: running_total_of_well_production_water_production_total, name: Water
              Cumulative Bbl}], showLabels: true, showValues: true, unpinAxis: true,
        tickDensity: default, tickDensityCustom: 5, type: log}]
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
    hidden_fields: []
    defaults_version: 1
    listen: {}
    row: 2
    col: 0
    width: 8
    height: 3
  - title: PV Status
    name: PV Status
    model: lg_production
    explore: lg_well_data_07_03_23_for_calc
    type: looker_pie
    fields: [lg_well_data_07_03_23_for_calc.operator_name, lg_well_data_07_03_23_for_calc.pv_status,
      lg_well_data_07_03_23_for_calc.count]
    filters:
      lg_well_data_07_03_23_for_calc.operator_name: WHITING OIL AND GAS CORPORATION
      lg_well_data_07_03_23_for_calc.pv_basin: WB
    sorts: [lg_well_data_07_03_23_for_calc.count desc]
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
      is_disabled: true
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
      is_disabled: true
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
      is_disabled: true
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: legacy
      palette_id: looker_classic
      options:
        steps: 5
    custom_color_enabled: true
    custom_color: "#353b49"
    show_single_value_title: true
    single_value_title: Total Well Count
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: legacy, palette_id: legacy_diverging1},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    y_axes: [{label: '', orientation: left, series: [{axisId: running_total_of_well_production_gas_production_total,
            id: running_total_of_well_production_gas_production_total, name: Gas Cumulative
              Mcf}, {axisId: running_total_of_well_production_oil_production_total,
            id: running_total_of_well_production_oil_production_total, name: Oil Cumulative
              Bbl}, {axisId: running_total_of_well_production_water_production_total,
            id: running_total_of_well_production_water_production_total, name: Water
              Cumulative Bbl}], showLabels: true, showValues: true, unpinAxis: true,
        tickDensity: default, tickDensityCustom: 5, type: log}]
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
    hidden_fields: [lg_well_data_07_03_23_for_calc.operator_name]
    defaults_version: 1
    hidden_points_if_no: []
    listen: {}
    row: 5
    col: 0
    width: 8
    height: 6
  - title: Producing Wells By Formation
    name: Producing Wells By Formation
    model: lg_production
    explore: lg_well_data_07_03_23_for_calc
    type: looker_grid
    fields: [lg_well_data_07_03_23_for_calc.operator_name, lg_well_data_07_03_23_for_calc.formations,
      lg_well_data_07_03_23_for_calc.count]
    filters:
      lg_well_data_07_03_23_for_calc.operator_name: WHITING OIL AND GAS CORPORATION
      lg_well_data_07_03_23_for_calc.pv_status: Producing
      lg_well_data_07_03_23_for_calc.pv_basin: WB
    sorts: [lg_well_data_07_03_23_for_calc.count desc 0]
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
      is_disabled: true
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
      is_disabled: true
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
      is_disabled: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: transparent
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: true
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: legacy
      palette_id: looker_classic
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      running_total_of_well_production_gas_production_total: Gas Cumulative Mcf
      running_total_of_well_production_oil_production_total: Oil Cumulative Bbl
      running_total_of_well_production_water_production_total: Water Cumulative Bbl
      lg_well_data_07_03_23_for_calc.count: Number of Producing Wells
      lg_well_data_07_03_23_for_calc.formations: Producing Formation
    series_cell_visualizations:
      lg_well_data_07_03_23_for_calc.count:
        is_active: true
        palette:
          palette_id: legacy_diverging1
          collection_id: legacy
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: legacy, palette_id: legacy_diverging1},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    custom_color_enabled: true
    custom_color: "#353b49"
    show_single_value_title: true
    single_value_title: Total Well Count
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    x_axis_gridlines: true
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: running_total_of_well_production_gas_production_total,
            id: running_total_of_well_production_gas_production_total, name: Gas Cumulative
              Mcf}, {axisId: running_total_of_well_production_oil_production_total,
            id: running_total_of_well_production_oil_production_total, name: Oil Cumulative
              Bbl}, {axisId: running_total_of_well_production_water_production_total,
            id: running_total_of_well_production_water_production_total, name: Water
              Cumulative Bbl}], showLabels: true, showValues: true, unpinAxis: true,
        tickDensity: default, tickDensityCustom: 5, type: log}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      running_total_of_well_production_gas_production_total: "#1f3e5a"
      running_total_of_well_production_oil_production_total: "#ed6168"
      running_total_of_well_production_water_production_total: "#9fdee0"
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    hidden_fields: [lg_well_data_07_03_23_for_calc.operator_name]
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    hidden_points_if_no: []
    listen: {}
    row: 2
    col: 8
    width: 8
    height: 4
  - title: Potential Wells
    name: Potential Wells
    model: lg_production
    explore: lg_well_data_07_03_23_for_calc
    type: looker_grid
    fields: [lg_well_data_07_03_23_for_calc.operator_name, lg_well_data_07_03_23_for_calc.formations,
      lg_well_data_07_03_23_for_calc.count, lg_well_data_07_03_23_for_calc.pv_status]
    pivots: [lg_well_data_07_03_23_for_calc.formations]
    sorts: [lg_well_data_07_03_23_for_calc.formations, lg_well_data_07_03_23_for_calc.count
        desc 0]
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
      is_disabled: true
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
      is_disabled: true
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
      is_disabled: true
    filter_expression: "(matches_filter(${lg_well_data_07_03_23_for_calc.operator_name},\
      \ `WHITING OIL AND GAS CORPORATION`) AND matches_filter(${lg_well_data_07_03_23_for_calc.pv_status},\
      \ `Permitted`) AND matches_filter(${lg_well_data_07_03_23_for_calc.pv_basin},\
      \ `WB`)) OR (matches_filter(${lg_well_data_07_03_23_for_calc.pv_status}, `Drilled`)\
      \ AND matches_filter(${lg_well_data_07_03_23_for_calc.operator_name}, `WHITING\
      \ OIL AND GAS CORPORATION`) AND matches_filter(${lg_well_data_07_03_23_for_calc.pv_basin},\
      \ `WB`))"
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: transparent
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: true
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: legacy
      palette_id: looker_classic
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      running_total_of_well_production_gas_production_total: Gas Cumulative Mcf
      running_total_of_well_production_oil_production_total: Oil Cumulative Bbl
      running_total_of_well_production_water_production_total: Water Cumulative Bbl
      lg_well_data_07_03_23_for_calc.count: Number of Potential Wells
      lg_well_data_07_03_23_for_calc.formations: Producing Formation
    series_cell_visualizations:
      lg_well_data_07_03_23_for_calc.count:
        is_active: true
        palette:
          palette_id: legacy_diverging1
          collection_id: legacy
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: legacy, palette_id: legacy_diverging1},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    custom_color_enabled: true
    custom_color: "#353b49"
    show_single_value_title: true
    single_value_title: Total Well Count
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    x_axis_gridlines: true
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: running_total_of_well_production_gas_production_total,
            id: running_total_of_well_production_gas_production_total, name: Gas Cumulative
              Mcf}, {axisId: running_total_of_well_production_oil_production_total,
            id: running_total_of_well_production_oil_production_total, name: Oil Cumulative
              Bbl}, {axisId: running_total_of_well_production_water_production_total,
            id: running_total_of_well_production_water_production_total, name: Water
              Cumulative Bbl}], showLabels: true, showValues: true, unpinAxis: true,
        tickDensity: default, tickDensityCustom: 5, type: log}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      running_total_of_well_production_gas_production_total: "#1f3e5a"
      running_total_of_well_production_oil_production_total: "#ed6168"
      running_total_of_well_production_water_production_total: "#9fdee0"
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    hidden_fields: [lg_well_data_07_03_23_for_calc.operator_name]
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    hidden_points_if_no: []
    listen: {}
    row: 6
    col: 8
    width: 8
    height: 5
  - title: Drilled Well Locations & Estimated Start Date
    name: Drilled Well Locations & Estimated Start Date
    model: lg_production
    explore: lg_well_data_07_03_23_for_calc
    type: looker_grid
    fields: [lg_well_data_07_03_23_for_calc.operator_name, lg_well_data_07_03_23_for_calc.formations,
      lg_well_data_07_03_23_for_calc.count, lg_well_data_07_03_23_for_calc.pv_status,
      lg_well_data_07_03_23_for_calc.prod_start_month, lg_well_data_07_03_23_for_calc.location]
    pivots: [lg_well_data_07_03_23_for_calc.formations]
    filters:
      lg_well_data_07_03_23_for_calc.pv_status: Drilled
      lg_well_data_07_03_23_for_calc.operator_name: WHITING OIL AND GAS CORPORATION
      lg_well_data_07_03_23_for_calc.pv_basin: WB
    sorts: [lg_well_data_07_03_23_for_calc.formations, lg_well_data_07_03_23_for_calc.prod_start_month
        desc]
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
      is_disabled: true
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
      is_disabled: true
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
      is_disabled: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: transparent
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: true
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: legacy
      palette_id: looker_classic
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      running_total_of_well_production_gas_production_total: Gas Cumulative Mcf
      running_total_of_well_production_oil_production_total: Oil Cumulative Bbl
      running_total_of_well_production_water_production_total: Water Cumulative Bbl
      lg_well_data_07_03_23_for_calc.count: Number of Drilled Wells
      lg_well_data_07_03_23_for_calc.formations: Producing Formation
    series_cell_visualizations:
      lg_well_data_07_03_23_for_calc.count:
        is_active: true
        palette:
          palette_id: legacy_diverging1
          collection_id: legacy
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: legacy, palette_id: legacy_diverging1},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    custom_color_enabled: true
    custom_color: "#353b49"
    show_single_value_title: true
    single_value_title: Total Well Count
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    x_axis_gridlines: true
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: running_total_of_well_production_gas_production_total,
            id: running_total_of_well_production_gas_production_total, name: Gas Cumulative
              Mcf}, {axisId: running_total_of_well_production_oil_production_total,
            id: running_total_of_well_production_oil_production_total, name: Oil Cumulative
              Bbl}, {axisId: running_total_of_well_production_water_production_total,
            id: running_total_of_well_production_water_production_total, name: Water
              Cumulative Bbl}], showLabels: true, showValues: true, unpinAxis: true,
        tickDensity: default, tickDensityCustom: 5, type: log}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      running_total_of_well_production_gas_production_total: "#1f3e5a"
      running_total_of_well_production_oil_production_total: "#ed6168"
      running_total_of_well_production_water_production_total: "#9fdee0"
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    hidden_fields: [lg_well_data_07_03_23_for_calc.operator_name]
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    hidden_points_if_no: []
    listen: {}
    row: 11
    col: 8
    width: 8
    height: 7
  - title: Permitted Well Locations & Estimated Start Date
    name: Permitted Well Locations & Estimated Start Date
    model: lg_production
    explore: lg_well_data_07_03_23_for_calc
    type: looker_grid
    fields: [lg_well_data_07_03_23_for_calc.operator_name, lg_well_data_07_03_23_for_calc.formations,
      lg_well_data_07_03_23_for_calc.count, lg_well_data_07_03_23_for_calc.pv_status,
      lg_well_data_07_03_23_for_calc.prod_start_month, lg_well_data_07_03_23_for_calc.location]
    pivots: [lg_well_data_07_03_23_for_calc.formations]
    filters:
      lg_well_data_07_03_23_for_calc.pv_status: Permitted
      lg_well_data_07_03_23_for_calc.operator_name: WHITING OIL AND GAS CORPORATION
      lg_well_data_07_03_23_for_calc.pv_basin: WB
    sorts: [lg_well_data_07_03_23_for_calc.formations, lg_well_data_07_03_23_for_calc.prod_start_month]
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
      is_disabled: true
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
      is_disabled: true
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
      is_disabled: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: transparent
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: true
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: legacy
      palette_id: looker_classic
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      running_total_of_well_production_gas_production_total: Gas Cumulative Mcf
      running_total_of_well_production_oil_production_total: Oil Cumulative Bbl
      running_total_of_well_production_water_production_total: Water Cumulative Bbl
      lg_well_data_07_03_23_for_calc.count: Number of Permitted Wells
      lg_well_data_07_03_23_for_calc.formations: Producing Formation
      lg_well_data_07_03_23_for_calc.prod_start_month: Estimated Prod Start
    series_cell_visualizations:
      lg_well_data_07_03_23_for_calc.count:
        is_active: true
        palette:
          palette_id: legacy_diverging1
          collection_id: legacy
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: legacy, palette_id: legacy_diverging1},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    custom_color_enabled: true
    custom_color: "#353b49"
    show_single_value_title: true
    single_value_title: Total Well Count
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    x_axis_gridlines: true
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: running_total_of_well_production_gas_production_total,
            id: running_total_of_well_production_gas_production_total, name: Gas Cumulative
              Mcf}, {axisId: running_total_of_well_production_oil_production_total,
            id: running_total_of_well_production_oil_production_total, name: Oil Cumulative
              Bbl}, {axisId: running_total_of_well_production_water_production_total,
            id: running_total_of_well_production_water_production_total, name: Water
              Cumulative Bbl}], showLabels: true, showValues: true, unpinAxis: true,
        tickDensity: default, tickDensityCustom: 5, type: log}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      running_total_of_well_production_gas_production_total: "#1f3e5a"
      running_total_of_well_production_oil_production_total: "#ed6168"
      running_total_of_well_production_water_production_total: "#9fdee0"
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    hidden_fields: [lg_well_data_07_03_23_for_calc.operator_name]
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    hidden_points_if_no: []
    listen: {}
    row: 11
    col: 0
    width: 8
    height: 7
  - title: Prod Start Date in Last 5 Years by Location
    name: Prod Start Date in Last 5 Years by Location
    model: lg_production
    explore: lg_well_data_07_03_23_for_calc
    type: looker_grid
    fields: [lg_well_data_07_03_23_for_calc.operator_name, lg_well_data_07_03_23_for_calc.formations,
      lg_well_data_07_03_23_for_calc.count, lg_well_data_07_03_23_for_calc.pv_status,
      lg_well_data_07_03_23_for_calc.location]
    pivots: [lg_well_data_07_03_23_for_calc.formations]
    filters:
      lg_well_data_07_03_23_for_calc.pv_status: Producing
      lg_well_data_07_03_23_for_calc.operator_name: WHITING OIL AND GAS CORPORATION
      lg_well_data_07_03_23_for_calc.pv_basin: WB
      lg_well_data_07_03_23_for_calc.prod_start_year: after 5 years ago
      lg_well_data_07_03_23_for_calc.formations: "-NULL"
    sorts: [lg_well_data_07_03_23_for_calc.formations, lg_well_data_07_03_23_for_calc.count
        desc 3]
    limit: 500
    column_limit: 50
    row_total: right
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
      is_disabled: true
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
      is_disabled: true
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
      is_disabled: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: transparent
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: true
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: legacy
      palette_id: looker_classic
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      running_total_of_well_production_gas_production_total: Gas Cumulative Mcf
      running_total_of_well_production_oil_production_total: Oil Cumulative Bbl
      running_total_of_well_production_water_production_total: Water Cumulative Bbl
      lg_well_data_07_03_23_for_calc.count: Number of Producing Wells
      lg_well_data_07_03_23_for_calc.formations: Producing Formation
      lg_well_data_07_03_23_for_calc.prod_start_month: Estimated Prod Start
    series_cell_visualizations:
      lg_well_data_07_03_23_for_calc.count:
        is_active: true
        palette:
          palette_id: legacy_diverging1
          collection_id: legacy
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: legacy, palette_id: legacy_diverging1},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    custom_color_enabled: true
    custom_color: "#353b49"
    show_single_value_title: true
    single_value_title: Total Well Count
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    x_axis_gridlines: true
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: running_total_of_well_production_gas_production_total,
            id: running_total_of_well_production_gas_production_total, name: Gas Cumulative
              Mcf}, {axisId: running_total_of_well_production_oil_production_total,
            id: running_total_of_well_production_oil_production_total, name: Oil Cumulative
              Bbl}, {axisId: running_total_of_well_production_water_production_total,
            id: running_total_of_well_production_water_production_total, name: Water
              Cumulative Bbl}], showLabels: true, showValues: true, unpinAxis: true,
        tickDensity: default, tickDensityCustom: 5, type: log}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      running_total_of_well_production_gas_production_total: "#1f3e5a"
      running_total_of_well_production_oil_production_total: "#ed6168"
      running_total_of_well_production_water_production_total: "#9fdee0"
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    hidden_fields: [lg_well_data_07_03_23_for_calc.operator_name]
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    hidden_points_if_no: []
    listen: {}
    row: 11
    col: 16
    width: 8
    height: 7
  - title: Total Production by Formation for last Year
    name: Total Production by Formation for last Year
    model: lg_production
    explore: lg_well_data_07_03_23_for_calc
    type: looker_column
    fields: [lg_well_production_data_07_03_23_clustered.oil_production_total, lg_well_production_data_07_03_23_clustered.gas_production_total,
      lg_well_production_data_07_03_23_clustered.water_production_total, lg_well_production_data_07_03_23_clustered.production_month,
      lg_well_data_07_03_23_for_calc.formations]
    pivots: [lg_well_data_07_03_23_for_calc.formations]
    fill_fields: [lg_well_production_data_07_03_23_clustered.production_month]
    filters:
      lg_well_data_07_03_23_for_calc.pv_status: Producing
      lg_well_data_07_03_23_for_calc.operator_name: WHITING OIL AND GAS CORPORATION
      lg_well_data_07_03_23_for_calc.pv_basin: WB
      lg_well_production_data_07_03_23_clustered.production_year: after 1 years ago
    sorts: [lg_well_data_07_03_23_for_calc.formations, lg_well_production_data_07_03_23_clustered.production_month
        desc]
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
      is_disabled: true
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
      is_disabled: true
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
      is_disabled: true
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
    x_axis_scale: time
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
            id: running_total_of_well_production_gas_production_total, name: Gas Cumulative
              Mcf}, {axisId: running_total_of_well_production_oil_production_total,
            id: running_total_of_well_production_oil_production_total, name: Oil Cumulative
              Bbl}, {axisId: running_total_of_well_production_water_production_total,
            id: running_total_of_well_production_water_production_total, name: Water
              Cumulative Bbl}], showLabels: true, showValues: true, unpinAxis: true,
        tickDensity: default, tickDensityCustom: 5, type: log}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      running_total_of_well_production_gas_production_total: "#1f3e5a"
      running_total_of_well_production_oil_production_total: "#ed6168"
      running_total_of_well_production_water_production_total: "#9fdee0"
      Three Forks - lg_well_production_data_07_03_23_clustered.oil_production_total: "#ed6168"
    series_labels:
      running_total_of_well_production_gas_production_total: Gas Cumulative Mcf
      running_total_of_well_production_oil_production_total: Oil Cumulative Bbl
      running_total_of_well_production_water_production_total: Water Cumulative Bbl
      lg_well_data_07_03_23_for_calc.count: Number of Producing Wells
      lg_well_data_07_03_23_for_calc.formations: Producing Formation
      lg_well_data_07_03_23_for_calc.prod_start_month: Estimated Prod Start
      Bakken - lg_well_production_data_07_03_23_clustered.oil_production_total: Bakken
        - Oil Bbl
      Bakken - lg_well_production_data_07_03_23_clustered.gas_production_total: Bakken
        - Gas Mmcf
      Bakken - lg_well_production_data_07_03_23_clustered.water_production_total: Bakken
        - Water Bbbl
      Three Forks - lg_well_production_data_07_03_23_clustered.oil_production_total: Three
        Forks - Oil Bbl
      Three Forks - lg_well_production_data_07_03_23_clustered.gas_production_total: Three
        Forks - Gas Mmcf
      Three Forks - lg_well_production_data_07_03_23_clustered.water_production_total: Three
        Forks - Water Bbl
      Dupero/Nisku - lg_well_production_data_07_03_23_clustered.gas_production_total: Dupero/Nisku
        - Gas Mmcf
      Dupero/Nisku - lg_well_production_data_07_03_23_clustered.oil_production_total: Dupero/Nisku
        - Oil Bbl
      Dupero/Nisku - lg_well_production_data_07_03_23_clustered.water_production_total: Dupero/Nisku
        - Water Bbl
      Madison Group - lg_well_production_data_07_03_23_clustered.oil_production_total: Madison
        Group - Oil Bbl
      Madison Group - lg_well_production_data_07_03_23_clustered.gas_production_total: Madison
        Group - Gas Mmcf
      Madison Group - lg_well_production_data_07_03_23_clustered.water_production_total: Madison
        Group - Water Bbl
      Red River - lg_well_production_data_07_03_23_clustered.oil_production_total: Red
        River - Oil Bbl
      Red River - lg_well_production_data_07_03_23_clustered.gas_production_total: Red
        River - Gas Mmcf
      Red River - lg_well_production_data_07_03_23_clustered.water_production_total: Red
        River - Water Bbl
    column_group_spacing_ratio: 0.2
    show_dropoff: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: false
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    series_cell_visualizations:
      lg_well_data_07_03_23_for_calc.count:
        is_active: true
        palette:
          palette_id: legacy_diverging1
          collection_id: legacy
    table_theme: transparent
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: legacy, palette_id: legacy_diverging1},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: true
    conditional_formatting_include_nulls: false
    custom_color_enabled: true
    custom_color: "#353b49"
    show_single_value_title: true
    single_value_title: Total Well Count
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    hidden_fields: []
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    hidden_points_if_no: []
    hide_totals: false
    hide_row_totals: false
    listen: {}
    row: 2
    col: 16
    width: 8
    height: 9
  - title: Operator Name
    name: Operator Name
    model: lg_production
    explore: lg_well_data_07_03_23_for_calc
    type: single_value
    fields: [lg_well_data_07_03_23_for_calc.operator_name]
    filters:
      lg_well_data_07_03_23_for_calc.operator_name: WHITING OIL AND GAS CORPORATION
      lg_well_data_07_03_23_for_calc.pv_basin: WB
    sorts: [lg_well_data_07_03_23_for_calc.operator_name]
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
      is_disabled: true
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
      is_disabled: true
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
      is_disabled: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: legacy
      palette_id: looker_classic
      options:
        steps: 5
    custom_color: "#353b49"
    single_value_title: Operator
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: legacy, palette_id: legacy_diverging1},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: running_total_of_well_production_gas_production_total,
            id: running_total_of_well_production_gas_production_total, name: Gas Cumulative
              Mcf}, {axisId: running_total_of_well_production_oil_production_total,
            id: running_total_of_well_production_oil_production_total, name: Oil Cumulative
              Bbl}, {axisId: running_total_of_well_production_water_production_total,
            id: running_total_of_well_production_water_production_total, name: Water
              Cumulative Bbl}], showLabels: true, showValues: true, unpinAxis: true,
        tickDensity: default, tickDensityCustom: 5, type: log}]
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
    hidden_fields: []
    defaults_version: 1
    listen: {}
    row: 0
    col: 0
    width: 21
    height: 2
  - title: Operator Name (Copy)
    name: Operator Name (Copy)
    model: lg_production
    explore: lg_well_data_07_03_23_for_calc
    type: single_value
    fields: [lg_well_data_07_03_23_for_calc.pv_basin]
    filters:
      lg_well_data_07_03_23_for_calc.operator_name: WHITING OIL AND GAS CORPORATION
      lg_well_data_07_03_23_for_calc.pv_basin: WB
    sorts: [lg_well_data_07_03_23_for_calc.pv_basin]
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
      is_disabled: true
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
      is_disabled: true
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
      is_disabled: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: legacy
      palette_id: looker_classic
      options:
        steps: 5
    custom_color: "#353b49"
    single_value_title: Basin
    conditional_formatting: [{type: equal to, value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: legacy, palette_id: legacy_diverging1},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: running_total_of_well_production_gas_production_total,
            id: running_total_of_well_production_gas_production_total, name: Gas Cumulative
              Mcf}, {axisId: running_total_of_well_production_oil_production_total,
            id: running_total_of_well_production_oil_production_total, name: Oil Cumulative
              Bbl}, {axisId: running_total_of_well_production_water_production_total,
            id: running_total_of_well_production_water_production_total, name: Water
              Cumulative Bbl}], showLabels: true, showValues: true, unpinAxis: true,
        tickDensity: default, tickDensityCustom: 5, type: log}]
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
    hidden_fields: []
    defaults_version: 1
    row: 0
    col: 21
    width: 3
    height: 2
