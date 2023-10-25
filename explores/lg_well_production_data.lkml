include: "/views/lg_well_data_07_03_23_for_calc.view.lkml"
include: "/views/lg_well_production_data_07_03_23_clustered.view.lkml"
include: "/views/parameters/parameters.view.lkml"


explore: lg_well_data_07_03_23_for_calc {
  label: "Monthly Well Production"


   persist_with: siros_demo

  join: lg_well_production_data_07_03_23_clustered {
    type: left_outer
    sql_on: ${lg_well_data_07_03_23_for_calc.api_10} = ${lg_well_production_data_07_03_23_clustered.api_10_int64} ;;
    relationship: one_to_many
    # fields: [production_set*]
  }
  join: parameters {
    relationship: one_to_one
    sql_on:  ;;
  }
}
