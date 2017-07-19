view: _campaign {
  sql_table_name: salesforce.campaign ;;
  # dimensions #

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: actual_cost {
    type: number
    sql: ${TABLE}.actual_cost ;;
  }

  dimension: amount_all_opportunities {
    type: number
    sql: ${TABLE}.amount_all_opportunities ;;
  }

  dimension: amount_won_opportunities {
    type: number
    sql: ${TABLE}.amount_won_opportunities ;;
  }

  dimension: created_by_id {
    type: string
    hidden: yes
    sql: ${TABLE}.created_by_id ;;
  }

  dimension_group: created {
    type: time
    timeframes: [date, week, month]
    sql: ${TABLE}.created_date ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension_group: end {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.end_date ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.is_deleted ;;
  }

  dimension: last_modified_by_id {
    type: string
    sql: ${TABLE}.last_modifiedby_id ;;
  }

  dimension_group: last_modified {
    type: time
    timeframes: [date, week, month]
    sql: ${TABLE}.last_modified_date ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: number_of_contacts {
    type: number
    sql: ${TABLE}.number_of_contacts ;;
  }

  dimension: number_of_converted_leads {
    type: number
    sql: ${TABLE}.number_of_converted_leads ;;
  }

  dimension: number_of_leads {
    type: number
    sql: ${TABLE}.number_of_leads ;;
  }

  dimension: number_of_opportunities {
    type: number
    sql: ${TABLE}.number_of_opportunities ;;
  }

  dimension: number_of_responses {
    type: number
    sql: ${TABLE}.number_of_responses ;;
  }

  dimension: number_of_won_opportunities {
    type: number
    sql: ${TABLE}.number_of_won_opportunities ;;
  }

  dimension: number_sent {
    type: number
    hidden: yes
    sql: ${TABLE}.number_sent ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}.ownerid ;;
  }

  dimension_group: start {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.startdate ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension_group: system_modstamp {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.system_modstamp ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  # measures #

  measure: count {
    type: count
    #     filters:
    #       campaign.is_deleted: 0
    drill_fields: [id, name]
  }

  measure: total_number_of_converted_leads {
    type: sum
    sql: ${TABLE}.number_of_converted_leads ;;
  }

  #     filters:
  #       campaign.is_deleted: 0

  measure: total_number_of_leads {
    type: sum
    sql: ${TABLE}.number_of_leads ;;
  }

  #     filters:
  # #       campaign.is_deleted: 0

  measure: total_number_of_opportunities {
    type: sum
    sql: ${TABLE}.number_of_opportunities ;;

    filters: {
      field: campaign.is_deleted
      value: "0"
    }
  }

  measure: total_number_of_responses {
    type: sum
    sql: ${TABLE}.number_of_responses ;;
  }

  #     filters:
  #       campaign.is_deleted: 0

  measure: total_number_of_won_opportunities {
    type: sum
    sql: ${TABLE}.number_of_won_opportunities ;;
  }

  #     filters:
  #       campaign.is_deleted: 0

  measure: total_number_sent {
    type: sum
    hidden: yes
    sql: ${TABLE}.number_sent ;;
  }

  #     filters:
  #       campaign.is_deleted: 0

  measure: total_actual_cost {
    type: sum
    sql: ${TABLE}.actual_cost ;;
  }

  #     filters:
  #       campaign.is_deleted: 0

  measure: total_amount_all_opportunities {
    type: sum
    sql: ${TABLE}.amount_all_opportunities ;;
  }

  #     filters:
  #       campaign.is_deleted: 0

  measure: total_amount_won_opportunities {
    type: sum
    sql: ${TABLE}.amount_won_opportunities ;;
  }
}

#     filters:
#       campaign.is_deleted: 0
