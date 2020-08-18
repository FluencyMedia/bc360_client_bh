include: "//bc360_rankings/**/*.view.lkml"

view: bh_mx_rankings_all {
  extends: [mx_rankings_core]

  derived_table: {
    datagroup_trigger: dg_bc360_rankings

    sql: SELECT
            ROW_NUMBER() OVER () row_index,
            *
          FROM `bc360-main.mx_rankings.mx_rankings_core`
          WHERE location LIKE "%, mi" ;;
  }

  dimension: row_index {
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.row_index ;;
  }
}

view: bh_mx_rankings_bh {
  extends: [bh_mx_rankings_all]

  derived_table: {
    datagroup_trigger: dg_bc360_rankings

    sql: SELECT
            # ROW_NUMBER() OVER () row_index,
            *
          FROM `bc360-main.mx_rankings.mx_rankings_core`
          WHERE domain LIKE "%beaumont.org%";;
  }

  dimension: row_index {
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.row_index ;;
  }
}

view: struct_rankings_base_bh {
  extends: [struct_rankings_base]

  # sql_table_name:  bc360-main.mx_rankings.struct_rankings_base_bh;;

  derived_table: {
   datagroup_trigger: dg_bc360_rankings
     sql: SELECT
        ROW_NUMBER() OVER () row_index,
        *
       FROM `bc360-main.mx_rankings.struct_rankings_base_bh`  ;;
  }

}

view: struct_rankings_base_bh__urls {
  extends: [struct_rankings_base__urls]
}

view: struct_rankings_base_bh__result_details {
  extends: [struct_rankings_base__result_details]
}
