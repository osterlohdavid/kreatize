view: part_prices {
  sql_table_name: kreatize_tuebingen.part_prices ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: costs {
    type: number
    sql: ${TABLE}.costs ;;
  }

  measure: total_costs {
    type: sum
    value_format_name: eur_0
    sql: ${costs} ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_num,
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

  dimension_group: kml {
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
    sql: ${TABLE}.kml_at ;;
  }

  dimension: kml_error_key {
    type: string
    sql: ${TABLE}.kml_error_key ;;
  }

  dimension: kml_price {
    type: number
    sql: ${TABLE}.kml_price ;;
  }

  measure: total_kml_price {
    type: sum
    value_format_name: eur_0
    sql: ${kml_price} ;;
  }

  dimension: kml_quantity {
    type: number
    sql: ${TABLE}.kml_quantity ;;
  }

  dimension: part_summary_id {
    type: number
    sql: ${TABLE}.part_summary_id ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  measure: total_price {
    type: sum
    value_format_name: eur_0
    sql: ${price} ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension: role {
    type: string
    sql: ${TABLE}.role ;;
  }

  dimension: selected {
    type: yesno
    sql: ${TABLE}.selected ;;
  }

  measure: selected_part_price {
    type: sum
    sql: ${price} ;;
    filters: {
      field: selected
      value: "Yes"
    }
  }

  dimension: subtotal_price {
    type: number
    sql: ${TABLE}.subtotal_price ;;
  }

  measure: total_subtotal_price {
    type: sum
    value_format_name: eur_0
    sql: ${subtotal_price} ;;
  }

  dimension: supplier_price {
    type: number
    sql: ${TABLE}.supplier_price ;;
  }

  measure: total_supplier_price {
    type: sum
    value_format_name: eur_0
    sql: ${supplier_price} ;;
  }

  dimension: supplier_price_locked {
    type: yesno
    sql: ${TABLE}.supplier_price_locked ;;
  }

  dimension: gross_profit {
    type: number
    sql: ${price} - ${supplier_price} ;;
  }

  measure: total_gross_profit {
    type: sum
    value_format_name: eur_0
    sql: ${gross_profit} ;;
  }

  dimension: total_gross_profit_tier {
    type: tier
    sql: ${total_gross_profit} ;;
    tiers: [500, 1000, 5000, 10000]
    style: interval
  }

  measure: gross_margin {
    type: number
    value_format_name: percent_2
    sql:  1.0 * ${total_gross_profit} / nullif(${total_price},0);;
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
    drill_fields: [id]
  }
}
