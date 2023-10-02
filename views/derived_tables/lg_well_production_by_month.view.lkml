####################################################################
# Create aggregated table with a unique api_10 and month combination
#
# Eric Bevan - 10/2/23
# THIS VIEW IS NOT BEING USED BECAUSE OF UNIQUENESS OF SOURCE RECORDS
# NEEDED TO BE ADJUSTED FOR IN THE BASE LOOKER VIEW
####################################################################

include: "/views/lg_well_production_data_07_03_23_clustered.view.lkml"

view: lg_well_production_by_month {
  derived_table: {
    # explore_source: lg_well_data_07_03_23_for_calc {
    #   column: api_10_int64 { field: lg_well_production_data_07_03_23_clustered.api_10_int64 }
    #   column: month_raw {    field: lg_well_production_data_07_03_23_clustered.month_raw }
    #   column: gas_mcf {      field: lg_well_production_data_07_03_23_clustered.gas_mcf }
    #   column: oil_bbl {      field: lg_well_production_data_07_03_23_clustered.oil_bbl }
    #   column: water_bbl {    field: lg_well_production_data_07_03_23_clustered.water_bbl }
    #   derived_column: monthly_gas_mcf {   sql: SUM(gas_mcf) ;;}
    #   derived_column: monthly_oil_bbl {   sql: SUM(oil_bbl) ;;}
    #   derived_column: monthly_water_bbl { sql: SUM(water_bbl) ;;}
    # }
  sql:    SELECT  CAST(api_10 AS INT64) as api_10_int64,
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
    hidden: yes
    sql: CONCATE(${api_10_int64}, ${TABLE}.month_raw ;;
  }

  dimension: api_10_int64 {
    description: ""
    type: number
  }
  dimension_group: produced_at {
    description: "Month of Production"
    type:  time
    timeframes: [raw, month, quarter_of_year, year]
    datatype: date
    sql: ${TABLE}.month ;;
  }


  # dimension: gas_mcf {
  #   description: ""
  #   type: number
  # }
  # dimension: oil_bbl {
  #   description: ""
  #   type: number
  # }
  # dimension: water_bbl {
  #   description: ""
  #   type: number
  # }

  measure: Gas_MCF_Monthly_Sum {
    description: "Aggregate Monthly Gas MCF"
    type: sum
  }
  measure: Oil_BBL_Monthly_Sum {
    description: "Aggregate Monthly Oil BBL"
    type: sum
  }
  measure: Water_BBL_Monthly_Sum {
    description: "Aggregate Monthly Water BBL"
    type: sum
  }


}
