connection: "looker-big-query"

include: "/dashboards/monthly_well_production.dashboard.lookml"   # include a LookML dashboard called my_dashboard
include: "/views/parameters/parameters.view.lkml"
include: "/explores/lg_well_production_data.lkml"
# include: "/explores/well_production_data.lkml"



datagroup: siros_demo {
  label: "Demonstrate caching"
  description: "Demonstrate datagroup parameter caching"
  max_cache_age: "24 hours"
  sql_trigger: SELECT max(month) FROM `siros-tech.lg_well_data.lg_well_production_data_07_03_23_clustered` ;;
}


explore: lg_well_production_data_07_03_23_clustered {
}
