include: "//bc360_rankings/**/*.lkml"

view: struct_rankings_base_bh_all {
  extends: [struct_rankings_base]

  sql_table_name:  bc360-main.mx_rankings.struct_rankings_base_bh_all;;

  # derived_table: {
  #  datagroup_trigger: dg_bc360_rankings
  #    sql: SELECT
  #       *
  #      FROM `bc360-main.mx_rankings.struct_rankings_base_bh_only`  ;;
  # }

}

view: struct_rankings_base_bh_all__urls {
  extends: [struct_rankings_base__urls]
}

view: struct_rankings_base_bh_all__result_details {
  extends: [struct_rankings_base__result_details]
}

view: struct_rankings_base_bh_all__domain_meta {
  extends: [struct_rankings_base__domain_meta]

  dimension: client { hidden: yes }
  dimension: organization { hidden: no }
  dimension: category { hidden: no }
}
