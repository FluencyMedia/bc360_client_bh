include: "//bc360_roadmaps/**/*.view.lkml"

view: bh_mx_roadmaps {
  extends: [mx_roadmaps]

  derived_table: {
    sql: SELECT
            ROW_NUMBER() OVER () row_num,
            row_index,
            client_id,
            service,
            service_line_code,
            medium,
            month,
            budget
          FROM `bc360-main.mx_roadmaps.roadmap_core_live`
          WHERE client_id = "CLIENT-00001";;
  }

  dimension: client_id { hidden: yes }
  dimension: row_num { hidden: yes }
  dimension: row_index { hidden: yes}
}
