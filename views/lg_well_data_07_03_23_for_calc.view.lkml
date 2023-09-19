view: lg_well_data_07_03_23_for_calc {
  sql_table_name: `siros-tech.lg_well_data.lg_well_data_07_03_23_for_calc` ;;

  dimension: api_10 {
    primary_key: yes
    type: number
    sql: ${TABLE}.api_10 ;;
  }
  dimension: bfit_net {
    type: number
    sql: ${TABLE}.bfit_net ;;
  }
  dimension: bh_lat_wsg84 {
    type: number
    sql: ${TABLE}.bh_lat_wsg84 ;;
  }
  dimension: bh_location {
    type: string
    sql: ${TABLE}.bh_location ;;
  }
  dimension: bh_lon_wsg84 {
    type: number
    sql: ${TABLE}.bh_lon_wsg84 ;;
  }
  dimension: bh_md {
    type: number
    sql: ${TABLE}.bh_md ;;
  }
  dimension: bh_tvd {
    type: number
    sql: ${TABLE}.bh_tvd ;;
  }
  dimension: bottom_perf {
    type: number
    sql: ${TABLE}.bottom_perf ;;
  }
  dimension: completions {
    type: string
    sql: ${TABLE}.completions ;;
  }
  dimension: county_name {
    type: string
    sql: ${TABLE}.county_name ;;
  }
  dimension: cum_proppant {
    type: number
    sql: ${TABLE}.cum_proppant ;;
  }
  dimension: cum_total_fluid_volume {
    type: number
    sql: ${TABLE}.cum_total_fluid_volume ;;
  }
  dimension: cum_total_non_water_volume {
    type: number
    sql: ${TABLE}.cum_total_non_water_volume ;;
  }
  dimension: dry_gas_cumulative_boe {
    type: number
    sql: ${TABLE}.dry_gas_cumulative_boe ;;
  }
  dimension: dry_gas_cumulative_mcf {
    type: number
    sql: ${TABLE}.dry_gas_cumulative_mcf ;;
  }
  dimension: dry_hole {
    type: yesno
    sql: ${TABLE}.dry_hole ;;
  }
  dimension: formations {
    type: string
    sql: ${TABLE}.formations ;;
  }
  dimension: gross_dry_gas_eur_boe {
    type: number
    sql: ${TABLE}.gross_dry_gas_eur_boe ;;
  }
  dimension: gross_dry_gas_eur_mcf {
    type: number
    sql: ${TABLE}.gross_dry_gas_eur_mcf ;;
  }
  dimension: gross_ngl_eur_bbl {
    type: number
    sql: ${TABLE}.gross_ngl_eur_bbl ;;
  }
  dimension: gross_oil_eur_bbl {
    type: number
    sql: ${TABLE}.gross_oil_eur_bbl ;;
  }
  dimension: gross_water_eur_bbl {
    type: number
    sql: ${TABLE}.gross_water_eur_bbl ;;
  }
  dimension: heel_lat_wsg84 {
    type: number
    sql: ${TABLE}.heel_lat_wsg84 ;;
  }
  dimension: heel_location {
    type: string
    sql: ${TABLE}.heel_location ;;
  }
  dimension: heel_lon_wsg84 {
    type: number
    sql: ${TABLE}.heel_lon_wsg84 ;;
  }
  dimension: heel_md {
    type: number
    sql: ${TABLE}.heel_md ;;
  }
  dimension: heel_tvd {
    type: number
    sql: ${TABLE}.heel_tvd ;;
  }
  dimension: hole_direction {
    type: string
    sql: ${TABLE}.hole_direction ;;
  }
  dimension: lat_length {
    type: number
    sql: ${TABLE}.lat_length ;;
  }
  dimension: lease_name {
    type: string
    sql: ${TABLE}.lease_name ;;
  }
  dimension_group: lg_est_prod_start {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.lg_est_prod_start ;;
  }
  dimension: liquid_bbl {
    type: number
    sql: ${TABLE}.liquid_bbl ;;
  }
  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }
  dimension: ngl_cumulative_bbl {
    type: number
    sql: ${TABLE}.ngl_cumulative_bbl ;;
  }
  dimension: oil_cumulative_bbl {
    type: number
    sql: ${TABLE}.oil_cumulative_bbl ;;
  }
  dimension: operator_name {
    type: string
    sql: ${TABLE}.operator_name ;;
  }
  dimension_group: prod_start {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.prod_start ;;
  }
  dimension: proppant_ft {
    type: number
    sql: ${TABLE}.proppant_ft ;;
  }
  dimension: pv_basin {
    type: string
    sql: ${TABLE}.pv_basin ;;
  }
  dimension: pv_status {
    type: string
    sql: ${TABLE}.pv_status ;;
  }
  dimension: sh_lat_wsg84 {
    type: number
    sql: ${TABLE}.sh_lat_wsg84 ;;
  }
  dimension: sh_location {
    type: string
    sql: ${TABLE}.sh_location ;;
  }
  dimension: sh_lon_wsg84 {
    type: number
    sql: ${TABLE}.sh_lon_wsg84 ;;
  }
  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
  dimension: top_perf {
    type: number
    sql: ${TABLE}.top_perf ;;
  }
  dimension: total_eur_boe {
    type: number
    sql: ${TABLE}.total_eur_boe ;;
  }
  dimension: type_curve_names {
    type: string
    sql: ${TABLE}.type_curve_names ;;
  }
  dimension: uwi {
    type: string
    sql: ${TABLE}.uwi ;;
  }
  dimension: well_label {
    type: string
    sql: ${TABLE}.well_label ;;
  }
  dimension: well_url {
    type: string
    sql: ${TABLE}.well_url ;;
  }
  dimension: wet_gas_cumulative_mcf {
    type: number
    sql: ${TABLE}.wet_gas_cumulative_mcf ;;
  }
  dimension: wtr_cumulative_bbl {
    type: number
    sql: ${TABLE}.wtr_cumulative_bbl ;;
  }
  measure: count {
    type: count
    drill_fields: [lease_name, county_name, operator_name]
  }
  measure: api_list {
    type: list
    list_field: api_10
  }
  measure: operator_aggregation {
    type: count_distinct
    sql: ${operator_name} ;;
  }
  dimension: custom_geo_intersection {
    type: number
    sql:CASE
      WHEN ST_INTERSECTS(
        ST_MAKELINE(ST_GEOGPOINT(${sh_lon_wsg84}, ${sh_lat_wsg84}), ST_GEOGPOINT(${bh_lon_wsg84}, ${bh_lat_wsg84})),
        ST_GEOGFROMTEXT({{_user_attributes['polygon_string']}})
      )THEN 1
      ELSE 0
    END;;
  }
  set: polygon_set {
    fields: [api_10, formations, pv_basin]
  }

}
