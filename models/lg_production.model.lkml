connection: "looker-big-query"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
include: "/dashboards/monthly_well_production.dashboard.lookml"   # include a LookML dashboard called my_dashboard

include: "/explores/lg_well_production_data.lkml"
include: "/explores/lg_well_production_data_by_month.lkml"


datagroup: siros_demo {
  label: "Demonstrate caching"
  description: "Demonstrate datagroup parameter caching"
  max_cache_age: "24 hours"
  sql_trigger: SELECT max(month) FROM `siros-tech.lg_well_data.lg_well_production_data_07_03_23_clustered` ;;
}

explore: lg_well_production_data_07_03_23_clustered {}
