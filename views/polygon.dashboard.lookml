- dashboard: polygon
  title: Polygon
  layout: newspaper
  preferred_viewer: dashboards-next
  tile_size: 100

  filters:

  elements:
    - name: hello_world
      type: looker_column


- name: add_a_unique_name_1695068056
  title: Untitled Visualization
  model: lg_production
  explore: lg_well_data_07_03_23_for_calc
  type: looker_column
  fields: [sum_of_oil_bbl, lg_well_production_data_07_03_23_clustered.api_10_int64,
    sum_of_gas_mcf, sum_of_water_bbl]
  filters:
    lg_well_data_07_03_23_for_calc.custom_geo_intersection: '1'
  sorts: [sum_of_oil_bbl desc 0]
  limit: 1000
  column_limit: 50
  dynamic_fields:
  - measure: sum_of_oil_bbl
    based_on: lg_well_production_data_07_03_23_clustered.oil_bbl
    expression: ''
    label: Sum of Oil Bbl
    type: sum
    _kind_hint: measure
    _type_hint: number
  - measure: sum_of_gas_mcf
    based_on: lg_well_production_data_07_03_23_clustered.gas_mcf
    expression: ''
    label: Sum of Gas Mcf
    type: sum
    _kind_hint: measure
    _type_hint: number
  - measure: sum_of_water_bbl
    based_on: lg_well_production_data_07_03_23_clustered.water_bbl
    expression: ''
    label: Sum of Water Bbl
    type: sum
    _kind_hint: measure
    _type_hint: number
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
  show_null_points: true
  defaults_version: 1
  interpolation: linear
