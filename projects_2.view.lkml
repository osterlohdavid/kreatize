view: projects_2 {
  sql_table_name: kreatize_tuebingen.projects_2 ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: bcc_email {
    type: string
    sql: ${TABLE}.bcc_email ;;
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

  dimension: delivery_address {
    type: string
    sql: ${TABLE}.delivery_address ;;
  }

  dimension: delivery_address_line_2 {
    type: string
    sql: ${TABLE}.delivery_address_line_2 ;;
  }

  dimension: delivery_city {
    type: string
    sql: ${TABLE}.delivery_city ;;
  }

  dimension: delivery_country_id {
    type: number
    sql: ${TABLE}.delivery_country_id ;;
  }

  dimension: delivery_zip {
    type: string
    sql: ${TABLE}.delivery_zip ;;
  }

  dimension_group: expected_delivery {
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
    sql: ${TABLE}.expected_delivery_date ;;
  }

  dimension: instructions {
    type: string
    sql: ${TABLE}.instructions ;;
  }

  dimension: kid {
    type: string
    sql: ${TABLE}.kid ;;
  }

  dimension: lead_id {
    type: number
    sql: ${TABLE}.lead_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: parent_id {
    type: number
    sql: ${TABLE}.parent_id ;;
  }

  dimension: priority {
    type: number
    sql: ${TABLE}.priority ;;
  }

  dimension: revision {
    type: string
    sql: ${TABLE}.revision ;;
  }

  dimension: rfq {
    type: yesno
    sql: ${TABLE}.rfq ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: supplier_id {
    type: number
    sql: ${TABLE}.supplier_id ;;
  }

  dimension: terms_of_use {
    type: yesno
    sql: ${TABLE}.terms_of_use ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: uid {
    type: string
    sql: ${TABLE}.uid ;;
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
}
