include: "/views/lg_well_data_07_03_23_for_calc.view.lkml"
include: "/views/lg_well_production_data_07_03_23_clustered.view.lkml"



explore: lg_well_data_07_03_23_for_calc {
  join: lg_well_production_data_07_03_23_clustered {
    type: left_outer
    sql_on: ${lg_well_data_07_03_23_for_calc.api_10} = ${lg_well_production_data_07_03_23_clustered.api_10_int64} ;;
    relationship: one_to_many
  }
}
