include: "//bc360_admin/**/*.lkml"
include: "//bc360_admin/bc360_triggers.lkml"
include: "//bc360_analytics/**/*.view.lkml"
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

# explore: bh_mx_analytics {
#   label: "BH - Website Analytics"
# }

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }
