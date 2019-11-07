view: deal_contact {
  sql_table_name: HUBSPOT.DEAL_CONTACT ;;



  dimension: contact_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."CONTACT_ID" ;;
  }

  dimension: deal_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."DEAL_ID" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      deal.property_dealname,
      deal.deal_id,
      contact.property_ownername,
      contact.property_firstname,
      contact.property_lastname,
      contact.property_hs_email_last_email_name,
      contact.id
    ]
  }
}
