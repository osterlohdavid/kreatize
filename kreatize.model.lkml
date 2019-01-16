connection: "kreatize_db2"

include: "*.view.lkml"                       # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

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

explore: part_summaries_2 {
  label: "Kreatize Explore"
  join: offers_2 {
    type: left_outer
    relationship: many_to_one
    sql_on: ${part_summaries_2.offer_id} = ${offers_2.id} ;;
    sql_where: ${offers_2.supplier_id}=102 ;;

  }

  join: part_prices {
    type: left_outer
    relationship: many_to_one
    sql_on: ${part_summaries_2.id} = ${part_prices.part_summary_id} ;;
    sql_where: ${part_prices.selected}=1 ;;
  }

  join: projects_2 {
    type: left_outer
    relationship: many_to_one
    sql_on: ${offers_2.project_id} = ${projects_2.id} ;;
    sql_where: ${projects_2.supplier_id}=102 ;;
  }

  join: leads_2 {
    type:  left_outer
    relationship:  one_to_one
    sql_on: ${leads_2.id}=${projects_2.lead_id} ;;
  }

  join: offer_status_logs {
    type: left_outer
    relationship: one_to_one
    sql_on: ${offer_status_logs.id} = ${offers_2.offer_status_log_id} ;;

  }



  join: offer_statuses {
    type: left_outer
    relationship: one_to_one
    sql_on:  ${offer_status_logs.offer_status_id}=${offer_statuses.id} ;;
  }





}
