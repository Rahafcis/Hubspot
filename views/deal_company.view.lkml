view: deal_company {
  sql_table_name: HUBSPOT.DEAL_COMPANY ;;

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
    hidden: yes
  }

  dimension: deal_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."DEAL_ID" ;;
    hidden: yes
  }

  measure: count {
    type: count
    drill_fields: [deal.property_dealname, deal.deal_id, company.id, company.property_name]
  }
}
