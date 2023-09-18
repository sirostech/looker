view: sql_runner_query {
  derived_table: {
    sql: SELECT api_10, COUNT(*) FROM `siros-tech.well_production.daily_well_production` GROUP BY 1 ORDER BY 2 DESC LIMIT 100
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: api_10 {
    type: string
    sql: ${TABLE}.api_10 ;;
  }

  dimension: f0_ {
    type: number
    sql: ${TABLE}.f0_ ;;
  }

  set: detail {
    fields: [api_10, f0_]
  }
}
