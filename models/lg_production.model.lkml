connection: "looker-big-query"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

include: "/explores/lg_well_production_data.lkml"
include: "/explores/lg_well_production_data_by_month.lkml"



explore: lg_well_production_data_07_03_23_clustered {}
