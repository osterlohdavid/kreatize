view: part_summaries_2 {
  sql_table_name: kreatize_tuebingen.part_summaries_2 ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: angularity_tolerance {
    type: number
    sql: ${TABLE}.angularity_tolerance ;;
  }

  dimension: article_nr {
    type: string
    sql: ${TABLE}.article_nr ;;
  }

  dimension: assigned_supplier_id {
    type: number
    sql: ${TABLE}.assigned_supplier_id ;;
  }

  dimension: basis_time_for_programming_minute {
    type: number
    sql: ${TABLE}.basis_time_for_programming_minute ;;
  }

  dimension: beam_diameter {
    type: number
    sql: ${TABLE}.beam_diameter ;;
  }

  dimension: casting_part {
    type: yesno
    sql: ${TABLE}.casting_part ;;
  }

  dimension: certifications {
    type: string
    sql: ${TABLE}.certifications ;;
  }

  dimension: coating_time_per_layer {
    type: number
    sql: ${TABLE}.coating_time_per_layer ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.comments ;;
  }

  dimension: cost_per_post_processing_operation {
    type: number
    sql: ${TABLE}.cost_per_post_processing_operation ;;
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

  dimension: curing_time_layer {
    type: number
    sql: ${TABLE}.curing_time_layer ;;
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

  dimension: delivery_time {
    type: number
    sql: ${TABLE}.delivery_time ;;
  }

  dimension: dimension_x {
    type: number
    sql: ${TABLE}.dimension_x ;;
  }

  dimension: dimension_y {
    type: number
    sql: ${TABLE}.dimension_y ;;
  }

  dimension: dimension_z {
    type: number
    sql: ${TABLE}.dimension_z ;;
  }

  dimension: discount {
    type: number
    sql: ${TABLE}.discount ;;
  }

  dimension: dpi_x {
    type: number
    sql: ${TABLE}.dpi_x ;;
  }

  dimension: dpi_y {
    type: number
    sql: ${TABLE}.dpi_y ;;
  }

  dimension: error_code {
    type: number
    sql: ${TABLE}.error_code ;;
  }

  dimension: error_key {
    type: string
    sql: ${TABLE}.error_key ;;
  }

  dimension: error_msg {
    type: string
    sql: ${TABLE}.error_msg ;;
  }

  dimension: exposure_speed_of_contours {
    type: number
    sql: ${TABLE}.exposure_speed_of_contours ;;
  }

  dimension: exposure_speed_of_surface {
    type: number
    sql: ${TABLE}.exposure_speed_of_surface ;;
  }

  dimension: filament_diameter {
    type: number
    sql: ${TABLE}.filament_diameter ;;
  }

  dimension: fits_limits_factor {
    type: number
    sql: ${TABLE}.fits_limits_factor ;;
  }

  dimension: fixture_costs {
    type: number
    sql: ${TABLE}.fixture_costs ;;
  }

  dimension: gating_system {
    type: string
    sql: ${TABLE}.gating_system ;;
  }

  dimension: hole_factor {
    type: number
    sql: ${TABLE}.hole_factor ;;
  }

  dimension: hourly_rate_programmer {
    type: number
    sql: ${TABLE}.hourly_rate_programmer ;;
  }

  dimension: include_fixture_costs {
    type: yesno
    sql: ${TABLE}.include_fixture_costs ;;
  }

  dimension: include_material_cost {
    type: yesno
    sql: ${TABLE}.include_material_cost ;;
  }

  dimension: internal_comments {
    type: string
    sql: ${TABLE}.internal_comments ;;
  }

  dimension: kml_material_cost_per_part {
    type: number
    sql: ${TABLE}.kml_material_cost_per_part ;;
  }

  dimension: kml_max {
    type: number
    sql: ${TABLE}.kml_max ;;
  }

  dimension: kml_min {
    type: number
    sql: ${TABLE}.kml_min ;;
  }

  dimension: kml_part_weight {
    type: number
    sql: ${TABLE}.kml_part_weight ;;
  }

  dimension: machine_material_supplier_id {
    type: number
    sql: ${TABLE}.machine_material_supplier_id ;;
  }

  dimension: material_costs {
    type: number
    sql: ${TABLE}.material_costs ;;
  }

  dimension: material_density {
    type: number
    sql: ${TABLE}.material_density ;;
  }

  dimension: material_name {
    type: string
    sql: ${TABLE}.material_name ;;
  }

  dimension: material_number {
    type: string
    sql: ${TABLE}.material_number ;;
  }

  dimension: material_specification {
    type: string
    sql: ${TABLE}.material_specification ;;
  }

  dimension: max_aspect_ratio {
    type: string
    sql: ${TABLE}.max_aspect_ratio ;;
  }

  dimension: max_part_diameter {
    type: number
    sql: ${TABLE}.max_part_diameter ;;
  }

  dimension: max_part_length {
    type: number
    sql: ${TABLE}.max_part_length ;;
  }

  dimension: max_sheet_thickness {
    type: number
    sql: ${TABLE}.max_sheet_thickness ;;
  }

  dimension: max_transport_weight {
    type: number
    sql: ${TABLE}.max_transport_weight ;;
  }

  dimension: max_weight {
    type: number
    sql: ${TABLE}.max_weight ;;
  }

  dimension: milling_feed_rate {
    type: number
    sql: ${TABLE}.milling_feed_rate ;;
  }

  dimension: min_order_quantity {
    type: number
    sql: ${TABLE}.min_order_quantity ;;
  }

  dimension: min_part_diameter {
    type: number
    sql: ${TABLE}.min_part_diameter ;;
  }

  dimension: min_part_length {
    type: number
    sql: ${TABLE}.min_part_length ;;
  }

  dimension: min_setup_costs {
    type: number
    sql: ${TABLE}.min_setup_costs ;;
  }

  dimension: min_sheet_thickness {
    type: number
    sql: ${TABLE}.min_sheet_thickness ;;
  }

  dimension: min_tolerance {
    type: number
    sql: ${TABLE}.min_tolerance ;;
  }

  dimension: min_transport_costs {
    type: number
    sql: ${TABLE}.min_transport_costs ;;
  }

  dimension: min_wall_thickness {
    type: number
    sql: ${TABLE}.min_wall_thickness ;;
  }

  dimension: minimum_part_size_x {
    type: number
    sql: ${TABLE}.minimum_part_size_x ;;
  }

  dimension: minimum_part_size_y {
    type: number
    sql: ${TABLE}.minimum_part_size_y ;;
  }

  dimension: minimum_part_size_z {
    type: number
    sql: ${TABLE}.minimum_part_size_z ;;
  }

  dimension: mounting_complexity {
    type: number
    sql: ${TABLE}.mounting_complexity ;;
  }

  dimension: mountings_time {
    type: number
    sql: ${TABLE}.mountings_time ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: nesting_planes {
    type: string
    sql: ${TABLE}.nesting_planes ;;
  }

  dimension: number_of_passes_per_thread {
    type: number
    sql: ${TABLE}.number_of_passes_per_thread ;;
  }

  dimension: offer_id {
    type: number
    sql: ${TABLE}.offer_id ;;
  }

  dimension: offset {
    type: number
    sql: ${TABLE}.offset ;;
  }

  dimension: overlap {
    type: number
    sql: ${TABLE}.overlap ;;
  }

  dimension: part_dx {
    type: number
    sql: ${TABLE}.part_dx ;;
  }

  dimension: part_dy {
    type: number
    sql: ${TABLE}.part_dy ;;
  }

  dimension: part_dz {
    type: number
    sql: ${TABLE}.part_dz ;;
  }

  dimension: part_id {
    type: number
    sql: ${TABLE}.part_id ;;
  }

  dimension: partner_material_product_url {
    type: string
    sql: ${TABLE}.partner_material_product_url ;;
  }

  dimension: parts_per_casting_tree {
    type: number
    sql: ${TABLE}.parts_per_casting_tree ;;
  }

  dimension: parts_per_run {
    type: number
    sql: ${TABLE}.parts_per_run ;;
  }

  dimension: percentage_used_space_bbox {
    type: number
    sql: ${TABLE}.percentage_used_space_bbox ;;
  }

  dimension: post_processing_costs {
    type: number
    sql: ${TABLE}.post_processing_costs ;;
  }

  dimension: post_processing_costs_per_part {
    type: number
    sql: ${TABLE}.post_processing_costs_per_part ;;
  }

  dimension: price_per_batch {
    type: number
    sql: ${TABLE}.price_per_batch ;;
  }

  dimension: price_per_run {
    type: number
    sql: ${TABLE}.price_per_run ;;
  }

  dimension: process_cost {
    type: number
    sql: ${TABLE}.process_cost ;;
  }

  dimension: process_type {
    type: string
    sql: ${TABLE}.process_type ;;
  }

  dimension: profit {
    type: number
    sql: ${TABLE}.profit ;;
  }

  dimension: ra {
    type: number
    sql: ${TABLE}.ra ;;
  }

  dimension: raw_material_costs {
    type: number
    sql: ${TABLE}.raw_material_costs ;;
  }

  dimension: raw_material_inner_diameter {
    type: number
    sql: ${TABLE}.raw_material_inner_diameter ;;
  }

  dimension: raw_material_length {
    type: number
    sql: ${TABLE}.raw_material_length ;;
  }

  dimension: raw_material_outer_diameter {
    type: number
    sql: ${TABLE}.raw_material_outer_diameter ;;
  }

  dimension: raw_material_shape_type_id {
    type: number
    sql: ${TABLE}.raw_material_shape_type_id ;;
  }

  dimension: raw_material_size_x {
    type: number
    sql: ${TABLE}.raw_material_size_x ;;
  }

  dimension: raw_material_size_y {
    type: number
    sql: ${TABLE}.raw_material_size_y ;;
  }

  dimension: raw_material_size_z {
    type: number
    sql: ${TABLE}.raw_material_size_z ;;
  }

  dimension: reinforcement {
    type: yesno
    sql: ${TABLE}.reinforcement ;;
  }

  dimension: removed_volume {
    type: number
    sql: ${TABLE}.removed_volume ;;
  }

  dimension: removed_volume_percentage {
    type: number
    sql: ${TABLE}.removed_volume_percentage ;;
  }

  dimension: rz {
    type: number
    sql: ${TABLE}.rz ;;
  }

  dimension: segment_area {
    type: number
    sql: ${TABLE}.segment_area ;;
  }

  dimension: setup_costs {
    type: number
    sql: ${TABLE}.setup_costs ;;
  }

  dimension: specific_part_summary_id {
    type: number
    sql: ${TABLE}.specific_part_summary_id ;;
  }

  dimension: spot_discount {
    type: number
    sql: ${TABLE}.spot_discount ;;
  }

  dimension: step_size {
    type: number
    sql: ${TABLE}.step_size ;;
  }

  dimension: structure {
    type: string
    sql: ${TABLE}.structure ;;
  }

  dimension: supplier_comments {
    type: string
    sql: ${TABLE}.supplier_comments ;;
  }

  dimension: support_material_costs {
    type: number
    sql: ${TABLE}.support_material_costs ;;
  }

  dimension: support_material_name {
    type: string
    sql: ${TABLE}.support_material_name ;;
  }

  dimension: support_material_perc {
    type: number
    sql: ${TABLE}.support_material_perc ;;
  }

  dimension: switching_time_contour_surface {
    type: number
    sql: ${TABLE}.switching_time_contour_surface ;;
  }

  dimension: switching_time_layers {
    type: number
    sql: ${TABLE}.switching_time_layers ;;
  }

  dimension: technical_delivery_terms {
    type: string
    sql: ${TABLE}.technical_delivery_terms ;;
  }

  dimension: threaded_hole_factor {
    type: number
    sql: ${TABLE}.threaded_hole_factor ;;
  }

  dimension: time_taken_per_movement {
    type: number
    sql: ${TABLE}.time_taken_per_movement ;;
  }

  dimension: time_taken_per_programmed_feature {
    type: number
    sql: ${TABLE}.time_taken_per_programmed_feature ;;
  }

  dimension: tolerance {
    type: number
    sql: ${TABLE}.tolerance ;;
  }

  dimension: tools_used {
    type: number
    sql: ${TABLE}.tools_used ;;
  }

  dimension: total_removed_volume {
    type: number
    sql: ${TABLE}.total_removed_volume ;;
  }

  dimension: transport_costs {
    type: number
    sql: ${TABLE}.transport_costs ;;
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

  dimension: yearly_quantity_required {
    type: number
    sql: ${TABLE}.yearly_quantity_required ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, material_name, support_material_name]
  }
}
