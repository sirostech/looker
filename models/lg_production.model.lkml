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

explore: from_polygon {
  # join: lg_well_production_data_07_03_23_clustered {
  #   type: left_outer
  #   sql_on: ${from_polygon.api_10} = ${lg_well_production_data_07_03_23_clustered.api_10} ;;
  #   relationship: one_to_many
  # }

  from: lg_well_data_07_03_23_for_calc
    fields:
      #[custom_geo_intersection, api_10, user_defined_polygon, sh_lon_wsg84, sh_lat_wsg84, bh_lon_wsg84, bh_lat_wsg84]
      [ALL_FIELDS*]
    always_filter: {
    filters: [custom_geo_intersection: "1"]
    }
    join: lg_well_production_data_07_03_23_clustered {
      type: left_outer
      sql_on: ${from_polygon.api_10} = ${lg_well_production_data_07_03_23_clustered.api_10} ;;
      relationship: one_to_many
    }
}
explore: lg_well_production_data_07_03_23_clustered {}
