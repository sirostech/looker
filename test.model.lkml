connection: "looker-big-query"
include: "/views/*.view.lkml"                # include all views in the views/ folder in this project

explore: sql_runner_query {}
