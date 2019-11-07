view: engagement_company {
  sql_table_name: HUBSPOT.ENGAGEMENT_COMPANY ;;

  dimension_group: _fivetran_synced {
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
    sql: ${TABLE}."_FIVETRAN_SYNCED" ;;
  }

  dimension: company_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."COMPANY_ID" ;;
  }

  dimension: engagement_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."ENGAGEMENT_ID" ;;
  }

  measure: count {
    type: count
    drill_fields: [company.id, company.property_name, engagement.id]
  }
}
