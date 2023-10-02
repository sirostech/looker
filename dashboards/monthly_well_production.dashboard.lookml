---
- dashboard: from_polygon__line_chart
  title: From Polygon - Line chart
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 3jM4Ifcb1SOJGcHAJanCv3
  elements:
  - title: Monthly Well Production
    name: Monthly Well Production
    model: lg_production
    explore: lg_well_data_07_03_23_for_calc
    type: looker_line
    fields: [lg_well_production_data_07_03_23_clustered.water_production_total, lg_well_production_data_07_03_23_clustered.oil_production_total,
      lg_well_production_data_07_03_23_clustered.gas_production_total, lg_well_production_data_07_03_23_clustered.production_month]
    fill_fields: [lg_well_production_data_07_03_23_clustered.production_month]
    filters:
      lg_well_data_07_03_23_for_calc.custom_geo_intersection: '1'
    sorts: [lg_well_production_data_07_03_23_clustered.production_month]
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
    show_null_points: true
    interpolation: linear
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
  - title: Overall Totals
    name: Overall Totals
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
    height: 6
