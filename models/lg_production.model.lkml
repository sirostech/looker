connection: "looker-big-query"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }

explore: lg_well_data_07_03_23_for_calc {
  join: lg_well_production_data_07_03_23_clustered {
    type: left_outer
    sql_on: ${lg_well_data_07_03_23_for_calc.api_10} = ${lg_well_production_data_07_03_23_clustered.api_10_int64} ;;
    relationship: one_to_many
  }
}
explore: lg_well_production_data_07_03_23_clustered {}
