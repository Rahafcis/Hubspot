view: engagement_company {
  sql_table_name: HUBSPOT.ENGAGEMENT_COMPANY ;;



  dimension: company_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."COMPANY_ID" ;;
  }

  dimension: engagement_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."ENGAGEMENT_ID" ;;
    hidden: yes

  }

  measure: count {
    type: count
    drill_fields: [company.id, company.property_name, engagement.id]
  }
}
