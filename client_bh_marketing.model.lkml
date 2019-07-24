include: "//bc360_admin/**/*.lkml"
include: "//bc360_admin/bc360_triggers.lkml"
include: "//bc360_clients/**/*.view.lkml"
include: "//bc360_services/**/*.view.lkml"
include: "//bc360_campaigns/**/*.view.lkml"
include: "//bc360_outcomes/**/*.view.lkml"
include: "//bc360_marketing/**/*.view.lkml"
include: "//bc360_roadmaps/**/*.view.lkml"
# include: "//bc360_users/**/*.view.lkml"


include: "/**/*.view.lkml"
include: "/**/*.dashboard.lookml"

label: "Beaumont Health"

explore: bh_mx_roadmaps {
  label: "BH - Roadmaps"
}

explore: bh_marketing {
  from: arch_clients_admin
  label: "BH - Digital Marketing"

  join: arch_campaigns_admin {
    relationship: one_to_many
    type: left_outer
    sql_on: ${bh_marketing.organization_id} = ${arch_campaigns_admin.organization_id} ;;
  }

  join: bh_mx_marketing {
    relationship: one_to_many
    type: inner
    sql_on: ${arch_campaigns_admin.adgroup_id} = ${bh_mx_marketing.adgroup_id} ;;
  }

  join: arch_outcomes_admin {
    relationship: many_to_one
    type: left_outer
    sql_on: ${bh_mx_marketing.outcome_tracker_id} = ${arch_outcomes_admin.outcome_tracker_id} ;;
  }
}

explore: bh_mx_ppc {
  from: arch_clients_admin
  label: "BH - PPC"

  join: arch_campaigns_admin {
    relationship: one_to_many
    type: left_outer
    sql_on: ${bh_mx_ppc.organization_id} = ${arch_campaigns_admin.organization_id} ;;
  }

  join: bh_mx_marketing_ppc {
    relationship: one_to_many
    type: inner
    sql_on: ${arch_campaigns_admin.adgroup_id} = ${bh_mx_marketing_ppc.adgroup_id} ;;
  }

  join: arch_outcomes_admin {
    relationship: many_to_one
    type: left_outer
    sql_on: ${bh_mx_marketing_ppc.outcome_tracker_id} = ${arch_outcomes_admin.outcome_tracker_id} ;;
  }
}

explore: bh_mx_display {
  from: arch_clients_admin
  label: "BH - Display"

  join: arch_campaigns_admin {
    relationship: one_to_many
    type: left_outer
    sql_on: ${bh_mx_display.organization_id} = ${arch_campaigns_admin.organization_id} ;;
  }

  join: bh_mx_marketing_display {
    relationship: one_to_many
    type: inner
    sql_on: ${arch_campaigns_admin.adgroup_id} = ${bh_mx_marketing_display.adgroup_id} ;;
  }

  join: arch_outcomes_admin {
    relationship: many_to_one
    type: left_outer
    sql_on: ${bh_mx_marketing_display.outcome_tracker_id} = ${arch_outcomes_admin.outcome_tracker_id} ;;
  }
}
