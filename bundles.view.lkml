view: bundles {
  sql_table_name: kreatize_tuebingen.bundles ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: creator_id {
    type: number
    sql: ${TABLE}.creator_id ;;
  }

  dimension: crm_id {
    type: string
    sql: ${TABLE}.crm_id ;;
  }

  dimension: current_bundle_status_log_id {
    type: number
    sql: ${TABLE}.current_bundle_status_log_id ;;
  }

  dimension_group: deleted {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.deleted_at ;;
  }

  dimension: kpali_creation_key {
    type: string
    sql: ${TABLE}.kpali_creation_key ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.updated_at ;;
  }

  measure: count {
    type: count
    drill_fields: [id, bundle_part_summaries.count, bundle_suppliers.count]
  }
}
