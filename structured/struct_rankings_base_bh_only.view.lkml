include: "//bc360_rankings/**/*.lkml"

view: struct_rankings_base_bh_only {
  extends: [struct_rankings_base]

  sql_table_name:  bc360-main.mx_rankings.struct_rankings_base_bh_only;;

  # derived_table: {
  #  datagroup_trigger: dg_bc360_rankings
  #    sql: SELECT
  #       *
  #      FROM `bc360-main.mx_rankings.struct_rankings_base_bh_only`  ;;
  # }

}

view: struct_rankings_base_bh_only__urls {
  extends: [struct_rankings_base__urls]
}

view: struct_rankings_base_bh_only__result_details {
  extends: [struct_rankings_base__result_details]
}

view: struct_rankings_base_bh_only__domain_meta {
  extends: [struct_rankings_base__domain_meta]

  dimension: client { hidden: yes }
  dimension: organization { hidden: yes }
  dimension: category { hidden: yes }
}
