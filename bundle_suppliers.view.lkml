view: bundle_suppliers {
  derived_table: {
    sql: SELECT
        `bundle_suppliers`.`id` AS `id`,
        `bundle_suppliers`.`current_bundle_supplier_status_log_id` AS `current_bundle_supplier_status_log_id`,
        `bundle_suppliers`.`accepted_bundle_supplier_status_log_id` AS `accepted_bundle_supplier_status_log_id`,
        `bundle_suppliers`.`bundle_id` AS `bundle_id`,
        `bundle_suppliers`.`supplier_id` AS `supplier_id`,
        `bundle_suppliers`.`kr_rank` AS `kr_rank`,
        `bundle_suppliers`.`rank` AS `rank`,
        `bundle_suppliers`.`supplier_delivery_date_current` AS `supplier_delivery_date_current`,
        `bundle_suppliers`.`supplier_delivery_date_original` AS `supplier_delivery_date_original`,
        `bundle_suppliers`.`vf_confirmed_delivery_date` AS `vf_confirmed_delivery_date`,
        `bundle_suppliers`.`supplier_tracking_number` AS `supplier_tracking_number`,
        `bundle_suppliers`.`creator_id` AS `creator_id`,
        `bundle_suppliers`.`deleted_at` AS `deleted_at`,
        `bundle_suppliers`.`created_at` AS `created_at`,
        `bundle_suppliers`.`updated_at` AS `updated_at`,
        MAX(IF((`BSS`.`key` = 'open'),
            `BSSL`.`created_at`,
            NULL)) AS `open_at`,
        MAX(IF((`BSS`.`key` = 'rejected'),
            `BSSL`.`created_at`,
            NULL)) AS `rejected_at`,
        MAX(IF((`BSS`.`key` = 'rejected'),
            `BSSCT`.`key`,
            NULL)) AS `rejected_key`,
        MAX(IF((`BSS`.`key` = 'rejected'),
            `BSSLBSSCT`.`comments`,
            NULL)) AS `rejected_comments`,
        MAX(IF((`BSS`.`key` = 'requested'),
            `BSSL`.`created_at`,
            NULL)) AS `requested_at`,
        MAX(IF((`BSS`.`key` = 'valid'),
            `BSSL`.`created_at`,
            NULL)) AS `valid_at`,
        MAX(IF((`BSS`.`key` = 'lost'),
            `BSSL`.`created_at`,
            NULL)) AS `lost_at`,
        MAX(IF((`BSS`.`key` = 'invalid'),
            `BSSL`.`created_at`,
            NULL)) AS `invalid_at`,
        MAX(IF((`BSS`.`key` = 'accepted'),
            `BSSL`.`created_at`,
            NULL)) AS `accepted_at`,
        MAX(IF((`BSS`.`key` = 'first_reminder_done'),
            `BSSL`.`created_at`,
            NULL)) AS `first_reminder_done_at`,
        MAX(IF((`BSS`.`key` = 'second_reminder_done'),
            `BSSL`.`created_at`,
            NULL)) AS `second_reminder_done_at`,
        MAX(IF((`BSS`.`key` = 'delayed'),
            `BSSL`.`created_at`,
            NULL)) AS `delayed_at`,
        MAX(IF((`BSS`.`key` = 'shipped'),
            `BSSL`.`created_at`,
            NULL)) AS `shipped_at`,
        MAX(IF((`BSS`.`key` = 'delivery_confirmed'),
            `BSSL`.`created_at`,
            NULL)) AS `delivery_confirmed_at`,
        MAX(IF((`BSS`.`key` = 'invoiced_payed_closed'),
            `BSSL`.`created_at`,
            NULL)) AS `invoiced_payed_closed_at`,
        MAX(IF((`BSS`.`key` = 'cancelled'),
            `BSSL`.`created_at`,
            NULL)) AS `cancelled_at`,
        MAX(IF((`BSS`.`key` = 'ordered'),
            `BSSL`.`created_at`,
            NULL)) AS `ordered_at`
    FROM
        (((((`bundle_suppliers`
        LEFT JOIN `bundle_supplier_status_logs` `BSSL` ON ((`BSSL`.`bundle_supplier_id` = `bundle_suppliers`.`id`)))
        LEFT JOIN `bundle_supplier_statuses` `BSS` ON ((`BSS`.`id` = `BSSL`.`bundle_supplier_status_id`)))
        LEFT JOIN `bundle_supplier_status_logs_bundle_supplier_status_comment_types` `BSSLBSSCT` ON ((`BSSL`.`id` = `BSSLBSSCT`.`bundle_supplier_status_log_id`)))
        LEFT JOIN `bundle_supplier_status_comment_types` `BSSCT` ON ((`BSSCT`.`id` = `BSSLBSSCT`.`bundle_supplier_status_comment_type_id`)))
        LEFT JOIN `bundles` ON ((`bundles`.`id` = `bundle_suppliers`.`bundle_id`)))
    GROUP BY `bundle_suppliers`.`id`
    ORDER BY `bundle_suppliers`.`id` DESC
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

  dimension: accepted_bundle_supplier_status_log_id {
    type: number
    sql: ${TABLE}.accepted_bundle_supplier_status_log_id ;;
  }

  dimension: bundle_id {
    type: number
    sql: ${TABLE}.bundle_id ;;
  }

  dimension_group: cancelled {
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
    sql: ${TABLE}.cancelled_at ;;
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

  dimension_group: delayed {
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
    sql: ${TABLE}.delayed_at ;;
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

  dimension_group: delivery_confirmed {
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
    sql: ${TABLE}.delivery_confirmed_at ;;
  }

  dimension_group: first_reminder_done {
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
    sql: ${TABLE}.first_reminder_done_at ;;
  }

  dimension_group: invalid {
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
    sql: ${TABLE}.invalid_at ;;
  }

  dimension_group: invoiced_payed_closed {
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
    sql: ${TABLE}.invoiced_payed_closed_at ;;
  }

  dimension: kr_rank {
    type: number
    sql: ${TABLE}.kr_rank ;;
  }

  dimension_group: lost {
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
    sql: ${TABLE}.lost_at ;;
  }

  dimension_group: open {
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
    sql: ${TABLE}.open_at ;;
  }

  dimension_group: ordered {
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
    sql: ${TABLE}.ordered_at ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
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

  dimension: rejected_comments {
    type: string
    sql: ${TABLE}.rejected_comments ;;
  }

  dimension: rejected_key {
    type: string
    sql: ${TABLE}.rejected_key ;;
  }

  dimension_group: requested {
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
    sql: ${TABLE}.requested_at ;;
  }

  dimension_group: second_reminder_done {
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
    sql: ${TABLE}.second_reminder_done_at ;;
  }

  dimension_group: shipped {
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
    sql: ${TABLE}.shipped_at ;;
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

  dimension_group: valid {
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
    sql: ${TABLE}.valid_at ;;
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
    drill_fields: [id]
  }
}
