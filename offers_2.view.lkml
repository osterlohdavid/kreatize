view: offers_2 {
  derived_table: {
    sql:SELECT
        `O`.`id` AS `id`,
        `O`.`name` AS `name`,
        `P`.`priority` AS `project_priority`,
        `O`.`expected_delivery_date` AS `expected_delivery_date`,
        `O`.`supplier_delivery_date` AS `supplier_delivery_date`,
        `O`.`delivery_address` AS `delivery_address`,
        `O`.`delivery_address_line_2` AS `delivery_address_line_2`,
        `O`.`delivery_zip` AS `delivery_zip`,
        `O`.`delivery_city` AS `delivery_city`,
        `O`.`delivery_country_id` AS `delivery_country_id`,
        `O`.`validity_start_date` AS `validity_start_date`,
        `O`.`validity_end_date` AS `validity_end_date`,
        `O`.`project_id` AS `project_id`,
        `O`.`price` AS `price`,
        `O`.`subtotal_price` AS `subtotal_price`,
        `O`.`services_total` AS `services_total`,
        `O`.`supplier_id` AS `supplier_id`,
        `O`.`offer_uid` AS `offer_uid`,
        `O`.`offer_kid` AS `offer_kid`,
        `O`.`order_uid` AS `order_uid`,
        `O`.`order_kid` AS `order_kid`,
        `O`.`customer_order_id` AS `customer_order_id`,
        `O`.`pdf_header` AS `pdf_header`,
        `O`.`pdf_footer` AS `pdf_footer`,
        `O`.`published` AS `published`,
        `O`.`parent_id` AS `parent_id`,
        `O`.`contact_id` AS `contact_id`,
        `O`.`offer_status_log_id` AS `offer_status_log_id`,
        `O`.`created_at` AS `created_at`,
        `O`.`updated_at` AS `updated_at`,
        `O`.`deleted_at` AS `deleted_at`,
        `O`.`sent_at` AS `sent_at`,
        `O`.`accepted_at` AS `accepted_at`,
        `O`.`rejected_at` AS `rejected_at`,
        MAX(IF((`OS`.`key` = 'open'),
            `OSL`.`created_at`,
            NULL)) AS `open_status_at`,
        MAX(IF((`OS`.`key` = 'ready_to_send'),
            `OSL`.`created_at`,
            NULL)) AS `ready_to_send_status_at`,
        MAX(IF((`OS`.`key` = 'in_progress'),
            `OSL`.`created_at`,
            NULL)) AS `in_progress_status_at`,
        MAX(IF((`OS`.`key` = 'sent'),
            `OSL`.`created_at`,
            NULL)) AS `sent_status_at`,
        MAX(IF((`OS`.`key` = 'accepted'),
            `OSL`.`created_at`,
            NULL)) AS `accepted_status_at`,
        MAX(IF((`OS`.`key` = 'rejected'),
            `OSL`.`created_at`,
            NULL)) AS `rejected_status_at`,
        MAX(IF((`OS`.`key` = 'rejected_by_kreatize'),
            `OSL`.`created_at`,
            NULL)) AS `rejected_by_kreatize_status_at`,
        MAX(IF((`OS`.`key` = 'closed'),
            `OSL`.`created_at`,
            NULL)) AS `closed_at`,
        MAX(IF((`OS`.`key` = 'supplier_found'),
            `OSL`.`created_at`,
            NULL)) AS `supplier_found_status_at`,
        MAX(IF((`OS`.`key` = 'confirmation_sent'),
            `OSL`.`created_at`,
            NULL)) AS `confirmation_sent_status_at`,
        MAX(IF((`OS`.`key` = 'delivered'),
            `OSL`.`created_at`,
            NULL)) AS `delivered_status_at`,
        MAX(IF((`OS`.`key` = 'waiting'),
            `OSL`.`created_at`,
            NULL)) AS `waiting_status_at`,
        MAX(IF((`OS`.`key` = 'complaint'),
            `OSL`.`created_at`,
            NULL)) AS `complaint_status_at`,
        MAX(IF((`OS`.`key` = 'completed'),
            `OSL`.`created_at`,
            NULL)) AS `completed_status_at`,
        MAX(IF((`OS`.`key` = 'ready_to_quote'),
            `OSL`.`created_at`,
            NULL)) AS `ready_to_quote_status_at`,
        MAX(IF((`OS`.`key` = 'supplier_quote'),
            `OSL`.`created_at`,
            NULL)) AS `supplier_quote_status_at`,
        MAX(IF((`OS`.`key` = 'supplier_is_quoting'),
            `OSL`.`created_at`,
            NULL)) AS `supplier_is_quoting_status_at`,
        MAX(IF((`OS`.`key` = 'decision'),
            `OSL`.`created_at`,
            NULL)) AS `decision_status_at`,
        MAX(IF((`OS`.`key` = 'cancelled'),
            `OSL`.`created_at`,
            NULL)) AS `cancelled_status_at`,
        MAX(IF((`OS`.`key` = 'customer_input'),
            `OSL`.`created_at`,
            NULL)) AS `customer_input_status_at`,
        MAX(IF((`OS`.`key` = 'looking_for_supplier'),
            `OSL`.`created_at`,
            NULL)) AS `looking_for_supplier_status_at`,
        MAX(IF((`OS`.`key` = 'invoice_sent'),
            `OSL`.`created_at`,
            NULL)) AS `invoice_sent_status_at`,
        IF(((MAX(IF((`OS`.`key` = 'supplier_found'),
                `OSL`.`created_at`,
                NULL)) IS NOT NULL)
                AND MAX(IF((`OS`.`key` = 'looking_for_supplier'),
                `OSL`.`created_at`,
                NULL))),
            (MAX(IF((`OS`.`key` = 'looking_for_supplier'),
                `OSL`.`created_at`,
                NULL)) > MAX(IF((`OS`.`key` = 'supplier_found'),
                `OSL`.`created_at`,
                NULL))),
            0) AS `is_looking_supplier_after_supplier_found`,
        IF(((MAX(IF((`OS`.`key` = 'confirmation_sent'),
                `OSL`.`created_at`,
                NULL)) IS NOT NULL)
                AND MAX(IF((`OS`.`key` = 'looking_for_supplier'),
                `OSL`.`created_at`,
                NULL))),
            (MAX(IF((`OS`.`key` = 'looking_for_supplier'),
                `OSL`.`created_at`,
                NULL)) > MAX(IF((`OS`.`key` = 'confirmation_sent'),
                `OSL`.`created_at`,
                NULL))),
            0) AS `is_looking_supplier_after_confirmation_sent`
    FROM
        (((`offers_2` `O`
        LEFT JOIN `projects_2` `P` ON ((`P`.`id` = `O`.`project_id`)))
        LEFT JOIN `offer_status_logs` `OSL` ON ((`OSL`.`offer_id` = `O`.`id`)))
        LEFT JOIN `offer_statuses` `OS` ON ((`OS`.`id` = `OSL`.`offer_status_id`)))
    WHERE
        (ISNULL(`O`.`deleted_at`)
            AND ISNULL(`P`.`deleted_at`)
            AND ISNULL(`OSL`.`deleted_at`))
    GROUP BY `O`.`id`
    ORDER BY `O`.`id` DESC
    ;;
  }

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

  dimension_group: accepted_status {
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
    sql: ${TABLE}.accepted_status_at ;;
  }

  dimension: all_express {
    type: yesno
    sql: ${TABLE}.all_express ;;
  }

  dimension: all_quoted {
    type: yesno
    sql: ${TABLE}.all_quoted ;;
  }

  dimension_group: cancelled_status {
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
    sql: ${TABLE}.cancelled_status_at ;;
  }

  dimension_group: closed {
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
    sql: ${TABLE}.closed_at ;;
  }

  dimension_group: complaint_status {
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
    sql: ${TABLE}.complaint_status_at ;;
  }

  dimension_group: completed_status {
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
    sql: ${TABLE}.completed_status_at ;;
  }

  dimension_group: confirmation_sent_status {
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
    sql: ${TABLE}.confirmation_sent_status_at ;;
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

  dimension: current_offer_status_key {
    type: string
    sql: ${TABLE}.current_offer_status_key ;;
  }

  dimension_group: customer_input_status {
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
    sql: ${TABLE}.customer_input_status_at ;;
  }

  dimension: customer_order_id {
    type: string
    sql: ${TABLE}.customer_order_id ;;
  }

  dimension_group: decision_status {
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
    sql: ${TABLE}.decision_status_at ;;
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

  dimension_group: delivered_status {
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
    sql: ${TABLE}.delivered_status_at ;;
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

  dimension_group: in_progress_status {
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
    sql: ${TABLE}.in_progress_status_at ;;
  }

  dimension_group: invoice_sent_status {
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
    sql: ${TABLE}.invoice_sent_status_at ;;
  }

  dimension: is_looking_supplier_after_confirmation_sent {
    type: number
    sql: ${TABLE}.is_looking_supplier_after_confirmation_sent ;;
  }

  dimension: is_looking_supplier_after_supplier_found {
    type: number
    sql: ${TABLE}.is_looking_supplier_after_supplier_found ;;
  }

  dimension_group: looking_for_supplier_status {
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
    sql: ${TABLE}.looking_for_supplier_status_at ;;
  }

  dimension_group: max_activity_completion {
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
    sql: ${TABLE}.max_activity_completion_date ;;
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

  dimension_group: open_status {
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
    sql: ${TABLE}.open_status_at ;;
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

  measure: total_ordervalue {
    type:  sum
    value_format_name: eur_0
    sql:${price} ;;
  }

  dimension: priority {
    type: number
    sql: ${TABLE}.priority ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.project_id ;;
  }

  dimension: published {
    type: yesno
    sql: ${TABLE}.published ;;
  }

  dimension_group: ready_to_quote_status {
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
    sql: ${TABLE}.ready_to_quote_status_at ;;
  }

  dimension_group: ready_to_send_status {
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
    sql: ${TABLE}.ready_to_send_status_at ;;
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

  dimension_group: rejected_by_kreatize_status {
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
    sql: ${TABLE}.rejected_by_kreatize_status_at ;;
  }

  dimension_group: rejected_status {
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
    sql: ${TABLE}.rejected_status_at ;;
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

  dimension_group: sent_status {
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
    sql: ${TABLE}.sent_status_at ;;
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

  dimension_group: supplier_found_status {
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
    sql: ${TABLE}.supplier_found_status_at ;;
  }

  dimension: supplier_id {
    type: number
    sql: ${TABLE}.supplier_id ;;
  }

  dimension_group: supplier_is_quoting_status {
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
    sql: ${TABLE}.supplier_is_quoting_status_at ;;
  }

  dimension_group: supplier_quote_status {
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
    sql: ${TABLE}.supplier_quote_status_at ;;
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

  dimension_group: waiting_status {
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
    sql: ${TABLE}.waiting_status_at ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
