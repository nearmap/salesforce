view: _contact {
  sql_table_name: salesforce.contact ;;
  # dimensions #

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: account_id {
    type: string
    sql: ${TABLE}.account_id ;;
  }

  dimension: contact_record_type {
    type: string
    case: {
      when: {
        sql: ${TABLE}.record_type_id = '012280000002M0tAAE' ;;
        label: "US Contacts"
      }
      else: "AU Contacts"
    }
  }

  dimension: assistant_name {
    type: string
    sql: ${TABLE}.assistant_name ;;
  }

  #   - dimension: assistant_phone
  #     type: string
  #     sql: ${TABLE}.assistantphone

  dimension_group: birth_date {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    sql: ${TABLE}.birthdate ;;
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

  dimension_group: date_entered_marketing_disqualified {
    type: time
    timeframes: [date, week, month]
    sql: ${TABLE}.dt_entered_marketing_disqualified_c ;;
  }

  dimension_group: date_entered_marketing_qualified {
    type: time
    timeframes: [date, week, month]
    sql: ${TABLE}.dt_entered_marketing_qualified_c ;;
  }

  dimension_group: date_entered_sales_accepted {
    type: time
    timeframes: [date, week, month]
    sql: ${TABLE}.dt_entered_sales_accepted_c ;;
  }

  dimension_group: date_entered_sales_disqualified_c {
    type: time
    timeframes: [date, week, month]
    sql: ${TABLE}.dt_entered_sales_disqualified_c ;;
  }

  dimension_group: date_entered_sales_sourced {
    type: time
    timeframes: [date, week, month]
    sql: ${TABLE}.dt_entered_sales_sourced_c ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: fax {
    type: string
    sql: ${TABLE}.fax ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.is_deleted ;;
  }

  dimension: email_bounced {
    type: yesno
    sql: ${TABLE}.is_email_bounced ;;
  }

  dimension: last_modified_by_id {
    type: string
    hidden: yes
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

  dimension: mailing_city {
    type: string
    sql: ${TABLE}.mailing_city ;;
  }

  dimension: mailing_country {
    type: string
    sql: ${TABLE}.mailing_country ;;
  }

  dimension: mailing_postal_code {
    type: string
    sql: ${TABLE}.mailing_postal_code ;;
  }

  dimension: mailing_state {
    type: string
    sql: ${TABLE}.mailing_state ;;
  }

  dimension: mailing_street {
    type: string
    sql: ${TABLE}.mailing_street ;;
  }

  dimension: mobile_phone {
    type: string
    sql: ${TABLE}.mobile_phone ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  #   - dimension: other_city
  #     type: string
  #     sql: ${TABLE}.othercity
  #
  #   - dimension: other_country
  #     type: string
  #     sql: ${TABLE}.othercountry
  #
  #   - dimension: other_phone
  #     type: string
  #     sql: ${TABLE}.otherphone
  #
  #   - dimension: other_postal_code
  #     type: string
  #     sql: ${TABLE}.otherpostalcode
  #
  #   - dimension: other_state
  #     type: string
  #     sql: ${TABLE}.otherstate
  #
  #   - dimension: other_street
  #     type: string
  #     sql: ${TABLE}.otherstreet

  dimension: owner_id {
    type: string
    hidden: yes
    sql: ${TABLE}.owner_id ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: salutation {
    type: string
    sql: ${TABLE}.salutation ;;
  }

  dimension_group: system_modstamp {
    type: time
    timeframes: [date, week, month]
    sql: ${TABLE}.systemmodstamp ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  # measures #

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
