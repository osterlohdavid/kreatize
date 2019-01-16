view: offers_2 {
  sql_table_name: kreatize_tuebingen.offers_2 ;;

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

  dimension: offer_accepted {
    type: yesno
    sql:  ${accepted_date} != "";;
  }


  dimension: all_express {
    type: yesno
    sql: ${TABLE}.all_express ;;
  }

  dimension: all_quoted {
    type: yesno
    sql: ${TABLE}.all_quoted ;;
  }

  dimension: contact_id {
    type: number
    sql: ${TABLE}.contact_id ;;
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

  dimension: customer_order_id {
    type: string
    sql: ${TABLE}.customer_order_id ;;
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

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: offer_kid {
    type: string
    sql: ${TABLE}.offer_kid ;;
  }

  dimension: offer_status_log_id {
    type: number
    sql: ${TABLE}.offer_status_log_id ;;
  }

  dimension: offer_uid {
    type: string
    sql: ${TABLE}.offer_uid ;;
  }

  dimension: order_kid {
    type: string
    sql: ${TABLE}.order_kid ;;
  }

  dimension: order_uid {
    type: string
    sql: ${TABLE}.order_uid ;;
  }

  dimension: parent_id {
    type: number
    sql: ${TABLE}.parent_id ;;
  }

  dimension: pdf_footer {
    type: string
    sql: ${TABLE}.pdf_footer ;;
  }

  dimension: pdf_header {
    type: string
    sql: ${TABLE}.pdf_header ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.project_id ;;
  }

  dimension: published {
    type: yesno
    sql: ${TABLE}.published ;;
  }

  dimension_group: rejected {
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
    sql: ${TABLE}.rejected_at ;;
  }

  dimension_group: sent {
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
    sql: ${TABLE}.sent_at ;;
  }

  dimension: services_total {
    type: number
    sql: ${TABLE}.services_total ;;
  }

  dimension: subtotal_price {
    type: number
    sql: ${TABLE}.subtotal_price ;;
  }

  dimension: subtotal_price_without_services {
    type: number
    sql: ${TABLE}.subtotal_price_without_services ;;
  }

  dimension_group: supplier_delivery {
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
    sql: ${TABLE}.supplier_delivery_date ;;
  }

  dimension: supplier_id {
    type: number
    sql: ${TABLE}.supplier_id ;;
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

  dimension_group: validity_end {
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
    sql: ${TABLE}.validity_end_date ;;
  }

  dimension_group: validity_start {
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
    sql: ${TABLE}.validity_start_date ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
