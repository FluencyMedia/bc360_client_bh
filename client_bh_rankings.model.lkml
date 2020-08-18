include: "//bc360_admin/*.lkml"
include: "//bc360_admin/bc360_triggers.lkml"
include: "//bc360_clients/*.view.lkml"
include: "//bc360_services/*.view.lkml"
include: "//bc360_campaigns/*.view.lkml"
include: "//bc360_rankings/*.view.lkml"

include: "*.view.lkml"

persist_with: dg_bc360_rankings

label: "Beaumont Health"

explore: bh_rankings_all {
  from: arch_terms_base
  label: "BH - Rankings [All]"

  join: bh_mx_rankings_all {
    type: left_outer
    relationship: many_to_many
    sql_on: ${bh_rankings_all.search_term} = ${bh_mx_rankings_all.search_term} AND
            ${bh_rankings_all.scan_month} = ${bh_mx_rankings_all.scan_month};;
  }

  join: location_meta {
    type: left_outer
    relationship: many_to_one
    sql_on: ${location_meta.location} = ${bh_mx_rankings_all.location} ;;
  }
}

explore: bh_rankings_bh {
  from: arch_terms_base
  label: "BH - Rankings [BH]"

  join: bh_mx_rankings_bh {
    type: left_outer
    relationship: many_to_many
    sql_on: ${bh_rankings_bh.search_term} = ${bh_mx_rankings_bh.search_term} AND
            ${bh_rankings_bh.scan_month} = ${bh_mx_rankings_bh.scan_month};;
  }

  join: location_meta {
    type: left_outer
    relationship: many_to_one
    sql_on: ${location_meta.location} = ${bh_mx_rankings_bh.location} ;;
  }
}

explore: struct_rankings_base_bh {
  label: "BH - Rankings [STRUCT]"

  hidden: no

  join: struct_rankings_base_bh__urls {
    sql: ,UNNEST(struct_rankings_base_bh.urls) as urls ;;
    relationship: one_to_many
  }

  join: struct_rankings_base_bh__result_details {
    sql: ,UNNEST(struct_rankings_base_bh.result_details) as result_details ;;
    relationship: one_to_many
  }

}
