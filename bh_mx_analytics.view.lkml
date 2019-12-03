include: "//bc360_analytics/**/*.view.lkml"

view: bh_mx_analytics {
  view_label: "Beaumont Health"
  label: "BH - Website Analytics"
  extends: [mx_analytics_core_live]

  derived_table: {
    datagroup_trigger: dg_bc360_mx_analytics

    sql:  SELECT
            ##### DIMENSIONS
            timestamp,
            minute_index,

            ##### MEASURES: Current Minute
            users,
            users_new,
            sessions,
            pageviews

          FROM `bc360-main.mx_analytics.mx_analytics_core_live`;;
  }



  dimension: timestamp { hidden: no }
  measure: users_new { hidden: no }
  measure: users { hidden: no }

  dimension: minute_index { hidden: yes }
  dimension: minute_key { hidden: yes }
  measure: minutes_post_total { hidden: yes }
  measure: minutes_collar_total { hidden: yes }

  measure: users_new_post_spot_total { hidden: yes }
  measure: users_new_collar_total { hidden: yes }
  measure: users_new_avg_min_post { hidden: yes }
  measure: users_new_avg_min_collar { hidden: yes }
  measure: users_new_lift_raw { hidden: yes }
  measure: users_new_lift { hidden: yes }

  measure: users_post_spot_total { hidden: yes }
  measure: users_collar_total { hidden: yes }

  measure: users_avg_min_post { hidden: yes }
  measure: users_avg_min_collar { hidden: yes }
  measure: users_lift_raw { hidden: yes }
  measure: users_lift { hidden: yes }

}
