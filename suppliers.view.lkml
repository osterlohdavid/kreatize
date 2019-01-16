view: suppliers {
  sql_table_name: kreatize_tuebingen.suppliers ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: active {
    type: number
    sql: ${TABLE}.active ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: agb {
    type: yesno
    sql: ${TABLE}.agb ;;
  }

  dimension: api_key {
    type: string
    sql: ${TABLE}.api_key ;;
  }

  dimension_group: api_key_created {
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
    sql: ${TABLE}.api_key_created_at ;;
  }

  dimension_group: api_key_expiring {
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
    sql: ${TABLE}.api_key_expiring_at ;;
  }

  dimension: ceo {
    type: string
    sql: ${TABLE}.ceo ;;
  }

  dimension: company_id {
    type: number
    sql: ${TABLE}.company_id ;;
  }

  dimension: contact {
    type: string
    sql: ${TABLE}.contact ;;
  }

  dimension: contact_city {
    type: string
    sql: ${TABLE}.contact_city ;;
  }

  dimension: contact_person {
    type: string
    sql: ${TABLE}.contact_person ;;
  }

  dimension: contact_zip {
    type: string
    sql: ${TABLE}.contact_zip ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: cover {
    type: string
    sql: ${TABLE}.cover ;;
  }

  dimension: cover_id {
    type: number
    sql: ${TABLE}.cover_id ;;
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

  dimension: deleted {
    type: number
    sql: ${TABLE}.deleted ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: display_name {
    type: string
    sql: ${TABLE}.display_name ;;
  }

  dimension: dow {
    type: string
    sql: ${TABLE}.dow ;;
  }

  dimension: ee_maid_cc {
    type: string
    sql: ${TABLE}.ee_maid_cc ;;
  }

  dimension: ee_maid_esepa {
    type: string
    sql: ${TABLE}.ee_maid_esepa ;;
  }

  dimension: ee_secret_cc {
    type: string
    sql: ${TABLE}.ee_secret_cc ;;
  }

  dimension: ee_secret_esepa {
    type: string
    sql: ${TABLE}.ee_secret_esepa ;;
  }

  dimension: employees {
    type: string
    sql: ${TABLE}.employees ;;
  }

  dimension: hours {
    type: string
    sql: ${TABLE}.hours ;;
  }

  dimension: instant_quoting {
    type: number
    sql: ${TABLE}.instant_quoting ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }

  dimension: logo {
    type: string
    sql: ${TABLE}.logo ;;
  }

  dimension: logo_id {
    type: number
    sql: ${TABLE}.logo_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: nda {
    type: yesno
    sql: ${TABLE}.nda ;;
  }

  dimension: partnerurl {
    type: string
    sql: ${TABLE}.partnerurl ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: price_components {
    type: string
    sql: ${TABLE}.price_components ;;
  }

  dimension: pricing_strategy {
    type: string
    sql: ${TABLE}.pricing_strategy ;;
  }

  dimension: quote_period {
    type: number
    sql: ${TABLE}.quote_period ;;
  }

  dimension: quoting {
    type: number
    sql: ${TABLE}.quoting ;;
  }

  dimension: tagline {
    type: string
    sql: ${TABLE}.tagline ;;
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

  dimension: vat {
    type: string
    sql: ${TABLE}.vat ;;
  }

  dimension: video {
    type: string
    sql: ${TABLE}.video ;;
  }

  dimension: website {
    type: string
    sql: ${TABLE}.website ;;
  }

  dimension: wirecard_status {
    type: string
    sql: ${TABLE}.wirecard_status ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, display_name]
  }
}
