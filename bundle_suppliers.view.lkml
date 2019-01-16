view: bundle_suppliers {
  sql_table_name: kreatize_tuebingen.bundle_suppliers ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: accepted {
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
    sql: ${TABLE}.accepted_at ;;
  }

  dimension: accepted_bundle_supplier_status_log_id {
    type: number
    sql: ${TABLE}.accepted_bundle_supplier_status_log_id ;;
  }

  dimension: bundle_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.bundle_id ;;
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

  dimension: current_bundle_supplier_status_log_id {
    type: number
    sql: ${TABLE}.current_bundle_supplier_status_log_id ;;
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

  dimension: kr_rank {
    type: number
    sql: ${TABLE}.kr_rank ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }

  dimension_group: supplier_delivery_date_current {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.supplier_delivery_date_current ;;
  }

  dimension_group: supplier_delivery_date_original {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.supplier_delivery_date_original ;;
  }

  dimension: supplier_id {
    type: number
    sql: ${TABLE}.supplier_id ;;
  }

  dimension: supplier_tracking_number {
    type: string
    sql: ${TABLE}.supplier_tracking_number ;;
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

  dimension_group: vf_confirmed_delivery {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.vf_confirmed_delivery_date ;;
  }

  measure: count {
    type: count
    drill_fields: [id, bundles.id, bundle_supplier_status_logs.count]
  }
}
