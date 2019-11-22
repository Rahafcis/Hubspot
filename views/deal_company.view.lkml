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
    sql: ${TABLE}."COMPANY_ID" ;;
  }

  dimension: deal_id {
    type: number
    sql: ${TABLE}."DEAL_ID" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
