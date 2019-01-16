view: bundle_supplier_status_logs {
  sql_table_name: kreatize_tuebingen.bundle_supplier_status_logs ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: bundle_supplier_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.bundle_supplier_id ;;
  }

  dimension: bundle_supplier_status_id {
    type: number
    sql: ${TABLE}.bundle_supplier_status_id ;;
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
    drill_fields: [id, bundle_suppliers.id]
  }
}
