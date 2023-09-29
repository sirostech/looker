include: "/views/lg_well_data_07_03_23_for_calc.view.lkml"
include: "/views/lg_well_production_data_07_03_23_clustered.view.lkml"

include: "/views/derived_tables/lg_well_production_by_month.view.lkml"

explore: lg_well_production {
  from:  lg_well_data_07_03_23_for_calc
  join: lg_well_production_by_month {
    type: left_outer
    sql_on: ${lg_well_production_by_month.api_10_int64} = ${lg_well_production.api_10} ;;
    relationship: one_to_many
  }
}
