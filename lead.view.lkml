view: _lead {
  sql_table_name: salesforce.lead ;;
  # dimensions #

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: annual_revenue {
    type: number
    sql: ${TABLE}.annual_revenue ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.company ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}.country ;;
  }

  dimension: converted_account_id {
    type: string
    hidden: yes
    sql: ${TABLE}.converted_account_id ;;
  }

  dimension: converted_contact_id {
    type: string
    hidden: yes
    sql: ${TABLE}.converted_contact_id ;;
  }

  dimension_group: converted {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.converted_date ;;
  }

  dimension: converted_opportunity_id {
    type: string
    hidden: yes
    sql: ${TABLE}.converted_opportunity_id ;;
  }

  dimension: created_by_id {
    type: string
    hidden: yes
    sql: ${TABLE}.created_by_id ;;
  }

  dimension_group: created {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_date ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  #   - dimension: fax
  #     type: string
  #     sql: ${TABLE}.fax

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: industry {
    type: string
    sql: ${TABLE}.industry ;;
  }

  dimension: is_converted {
    type: yesno
    sql: ${TABLE}.is_converted ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.is_deleted ;;
  }

  dimension: is_unread_by_owner {
    type: yesno
    sql: ${TABLE}.is_unread_by_owner ;;
  }

  dimension: last_modified_by_id {
    type: string
    sql: ${TABLE}.last_modified_by_id ;;
  }

  dimension_group: last_modified {
    type: time
    timeframes: [date, week, month]
    sql: ${TABLE}.last_modified_date ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: lead_source {
    type: string
    sql: ${TABLE}.lead_source ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: number_of_employees {
    type: number
    sql: ${TABLE}.number_of_employees ;;
  }

  dimension: owner_id {
    type: string
    hidden: yes
    sql: ${TABLE}.owner_id ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.postal_code ;;
  }

  dimension: salutation {
    type: string
    sql: ${TABLE}.salutation ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: street {
    type: string
    sql: ${TABLE}.street ;;
  }

  dimension_group: system_modstamp {
    type: time
    timeframes: [date, week, month]
    sql: ${TABLE}.system_modstamp ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: website {
    type: string
    sql: ${TABLE}.website ;;
  }

  # measures #
  measure: count {
    type: count
    drill_fields: [id, last_name, name, first_name]
  }

  #     filters:
  #       lead.is_deleted: 0

  measure: avg_annual_revenue {
    type: average
    sql: ${TABLE}.annual_revenue ;;
  }
}

#     filters:
#       lead.is_deleted: 0
