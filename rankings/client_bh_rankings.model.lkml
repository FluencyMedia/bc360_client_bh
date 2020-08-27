include: "//bc360_admin/**/*.lkml"
include: "//bc360_admin/**/bc360_triggers.lkml"
include: "//bc360_clients/**/*.view.lkml"
include: "//bc360_services/**/*.view.lkml"
include: "//bc360_campaigns/**/*.view.lkml"
include: "//bc360_rankings/**/*.view.lkml"

include: "/**/*.view.lkml"

persist_with: dg_bc360_rankings

label: "Beaumont Health"

explore: struct_rankings_base_bh_only {
  label: "BH - Rankings [ONLY]"
  view_label: "BH - Rankings"

  hidden: no

  join: struct_rankings_base_bh_only__urls {
    sql: ,UNNEST(struct_rankings_base_bh_only.urls) as struct_rankings_base_bh_only__urls ;;
    relationship: one_to_many
  }

  join: struct_rankings_base_bh_only__result_details {
    sql: ,UNNEST(struct_rankings_base_bh_only.result_details) as struct_rankings_base_bh_only__result_details ;;
    relationship: one_to_many
  }

  join: struct_rankings_base_bh_only__domain_meta {
    sql: ,UNNEST(struct_rankings_base_bh_only.domain_meta) as struct_rankings_base_bh_only__domain_meta ;;
    relationship: one_to_many
  }

  join: location_meta_bh {
    relationship: many_to_one
    sql_on: ${struct_rankings_base_bh_only.location} = ${location_meta_bh.zipkey} ;;
  }

}

explore: struct_rankings_base_bh_all {
  label: "BH - Rankings [ALL]"
  view_label: "BH - Rankings"

  hidden: no

  join: struct_rankings_base_bh_all__urls {
    sql: ,UNNEST(struct_rankings_base_bh_all.urls) as struct_rankings_base_bh_all__urls ;;
    relationship: one_to_many
  }

  join: struct_rankings_base_bh_all__result_details {
    sql: ,UNNEST(struct_rankings_base_bh_all.result_details) as struct_rankings_base_bh_all__result_details ;;
    relationship: one_to_many
  }

  join: struct_rankings_base_bh_all__domain_meta {
    sql: ,UNNEST(struct_rankings_base_bh_all.domain_meta) as struct_rankings_base_bh_all__domain_meta ;;
    relationship: one_to_many
  }

  join: location_meta_bh {
    relationship: many_to_one
    sql_on: ${struct_rankings_base_bh_all.location} = ${location_meta_bh.zipkey};;
  }
}


########### LEGACY EXPLORES ###########

explore: bh_rankings_all {
  from: arch_terms_base
  label: "BH - Rankings [All]"
  hidden: yes

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
  hidden: yes

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
