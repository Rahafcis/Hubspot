view: contact_property_history {
  sql_table_name: HUBSPOT.CONTACT_PROPERTY_HISTORY ;;


  dimension: contact_id {
    type: number
    primary_key: yes
    # hidden: yes
    sql: ${TABLE}."CONTACT_ID" ;;
    hidden: yes
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}."SOURCE" ;;
  }

  dimension: source_id {
    type: string
    sql: ${TABLE}."SOURCE_ID" ;;
    hidden: yes
  }

  dimension_group: timestamp {
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
    sql: ${TABLE}."TIMESTAMP" ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}."VALUE" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      name,
      contact.property_ownername,
      contact.property_firstname,
      contact.property_lastname,
      contact.property_hs_email_last_email_name,
      contact.id
    ]
  }
}
