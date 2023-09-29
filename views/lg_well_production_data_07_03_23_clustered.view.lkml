view: lg_well_production_data_07_03_23_clustered {
  derived_table: {
  # sql_table_name: `siros-tech.lg_well_data.lg_well_production_data_07_03_23_clustered` ;;
  sql:
     SELECT  api_10,
             month,
             SUM(Oil_BBL) as Oil_BBL_Monthly_Sum,
             SUM(Gas_MCF) as Gas_MCF_Monthly_Sum,
             SUM(Water_BBL) as Water_BBL_Monthly_Sum
       FROM  `siros-tech.lg_well_data.lg_well_production_data_07_03_23_clustered`
   GROUP BY  api_10,
             month ;;
  }

  dimension: primary_key {
    primary_key: yes
    sql: CONCAT(${api_10_int64}, ${TABLE}.month) ;;
  }

  dimension: api_10 {
    type: string
    sql: ${TABLE}.api_10 ;;
  }
  dimension: api_10_int64 {
    type: number
    sql: CAST(${TABLE}.api_10 AS INT64) ;;
  }
  dimension: gas_mcf_monthly_sum {
    type: number
    sql: ${TABLE}.Gas_MCF_Monthly_Sum ;;
  }
  dimension_group: month {
    type: time
    timeframes: [raw, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.month ;;
  }
  dimension: oil_bbl_monthly_sum {
    type: number
    sql: ${TABLE}.Oil_BBL_Monthly_Sum ;;
  }
  dimension: water_bbl_monthly_sum {
    type: number
    sql: ${TABLE}.Water_BBL_Monthly_Sum ;;
  }

  measure: count {
    type: count
  }
  measure: oil_production_total {
    type: sum
    sql_distinct_key: ${primary_key} ;;
    sql: ${oil_bbl_monthly_sum} ;;
  }
  measure: gas_production_total {
    type: sum
    sql_distinct_key: ${primary_key} ;;
    sql: ${gas_mcf_monthly_sum} ;;
  }
  measure: water_production_total {
    type: sum
    sql_distinct_key: ${primary_key} ;;
    sql: ${water_bbl_monthly_sum} ;;
  }
  set: production_set {
    fields: [api_10_int64, month_raw, oil_bbl_monthly_sum, gas_mcf_monthly_sum, water_bbl_monthly_sum]
  }
}
