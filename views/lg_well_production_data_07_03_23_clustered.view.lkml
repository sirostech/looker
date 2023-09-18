view: lg_well_production_data_07_03_23_clustered {
  sql_table_name: `siros-tech.lg_well_data.lg_well_production_data_07_03_23_clustered` ;;

  dimension: api_10 {
    type: string
    sql: ${TABLE}.api_10 ;;
  }
  dimension: gas_mcf {
    type: number
    sql: ${TABLE}.Gas_MCF ;;
  }
  dimension_group: month {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.month ;;
  }
  dimension: oil_bbl {
    type: number
    sql: ${TABLE}.Oil_BBL ;;
  }
  dimension: water_bbl {
    type: number
    sql: ${TABLE}.Water_BBL ;;
  }
  dimension: primary_key {
    primary_key: yes
    sql: CONCAT(${TABLE}.api_10, ${TABLE}.month) ;;
  }
  measure: count {
    type: count
  }
  measure: oil_production_total {
    type: sum_distinct
    sql_distinct_key: ${primary_key} ;;
    sql: ${oil_bbl} ;;
  }
  measure: gas_production_total {
    type: sum_distinct
    sql_distinct_key: ${primary_key} ;;
    sql: ${gas_mcf} ;;
  }
  measure: water_production_total {
    type: sum_distinct
    sql_distinct_key: ${primary_key} ;;
    sql: ${water_bbl} ;;
  }
}
