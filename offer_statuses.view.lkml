view: offer_statuses {
  sql_table_name: kreatize_tuebingen.offer_statuses ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: cloneable {
    type: yesno
    sql: ${TABLE}.cloneable ;;
  }

  dimension: color {
    type: string
    sql: ${TABLE}.color ;;
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

  dimension: duplicatable {
    type: yesno
    sql: ${TABLE}.duplicatable ;;
  }

  dimension: key {
    type: string
    sql: ${TABLE}.`key` ;;
  }

  dimension: locked {
    type: yesno
    sql: ${TABLE}.locked ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
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
    drill_fields: [id, name]
  }

  measure: offer_status_name {
    type: string
    sql: ${name} ;;
  }
}
