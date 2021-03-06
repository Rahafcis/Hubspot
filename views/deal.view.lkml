view: deal {
  sql_table_name: HUBSPOT.DEAL ;;
  drill_fields: [deal_id]

  dimension: deal_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."DEAL_ID" ;;
  }

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

  dimension: deal_pipeline_id {
    type: string
    sql: ${TABLE}."DEAL_PIPELINE_ID" ;;
  }

  dimension: deal_pipeline_stage_id {
    type: string
    sql: ${TABLE}."DEAL_PIPELINE_STAGE_ID" ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}."IS_DELETED" ;;
  }

  dimension: owner_id {
    type: number
    sql: ${TABLE}."OWNER_ID" ;;
  }

  dimension: portal_id {
    type: number
    sql: ${TABLE}."PORTAL_ID" ;;
  }

  dimension: property_amount {
    type: number
    sql: ${TABLE}."PROPERTY_AMOUNT" ;;
    value_format_name: eur_0
  }

  dimension: property_amount_in_home_currency {
    type: number
    sql: ${TABLE}."PROPERTY_AMOUNT_IN_HOME_CURRENCY" ;;
  }

  dimension: property_closed_lost_reason {
    type: string
    sql: ${TABLE}."PROPERTY_CLOSED_LOST_REASON" ;;
  }

  dimension: property_closed_won_reason {
    type: string
    sql: ${TABLE}."PROPERTY_CLOSED_WON_REASON" ;;
  }

  dimension_group: property_closedate {
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
    sql: ${TABLE}."PROPERTY_CLOSEDATE" ;;
  }

  dimension_group: property_createdate {
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
    sql: ${TABLE}."PROPERTY_CREATEDATE" ;;
  }

  dimension: property_days_to_close {
    type: number
    sql: ${TABLE}."PROPERTY_DAYS_TO_CLOSE" ;;
  }

  dimension: property_dealname {
    type: string
    sql: ${TABLE}."PROPERTY_DEALNAME" ;;
    label: "Deal"

    link: {
      label: "View Deal in Hubspot"
      url: "https://app.hubspot.com/contacts/3068849/deal/{{ deal_id._value}}/"
      icon_url: "http://app.hubspot.com/favicon.ico"
    }
  }

  dimension: property_dealtype {
    type: string
    sql: ${TABLE}."PROPERTY_DEALTYPE" ;;
  }

  dimension: property_description {
    type: string
    sql: ${TABLE}."PROPERTY_DESCRIPTION" ;;
  }

  dimension: property_hours {
    type: number
    sql: ${TABLE}."PROPERTY_HOURS" ;;
  }

  dimension: property_hs_all_owner_ids {
    type: number
    value_format_name: id
    sql: ${TABLE}."PROPERTY_HS_ALL_OWNER_IDS" ;;
  }

  dimension: property_hs_analytics_source {
    type: string
    sql: ${TABLE}."PROPERTY_HS_ANALYTICS_SOURCE" ;;
  }

  dimension: property_hs_analytics_source_data_1 {
    type: string
    sql: ${TABLE}."PROPERTY_HS_ANALYTICS_SOURCE_DATA_1" ;;
  }

  dimension: property_hs_analytics_source_data_2 {
    type: string
    sql: ${TABLE}."PROPERTY_HS_ANALYTICS_SOURCE_DATA_2" ;;
  }

  dimension: property_hs_closed_amount {
    type: number
    sql: ${TABLE}."PROPERTY_HS_CLOSED_AMOUNT" ;;
  }

  dimension: property_hs_closed_amount_in_home_currency {
    type: number
    sql: ${TABLE}."PROPERTY_HS_CLOSED_AMOUNT_IN_HOME_CURRENCY" ;;
  }

  dimension_group: property_hs_createdate {
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
    sql: ${TABLE}."PROPERTY_HS_CREATEDATE" ;;
  }

  dimension: property_hs_deal_stage_probability {
    type: number
    sql: ${TABLE}."PROPERTY_HS_DEAL_STAGE_PROBABILITY" ;;
  }

  dimension: property_hs_is_closed {
    type: yesno
    sql: ${TABLE}."PROPERTY_HS_IS_CLOSED" ;;
  }

  dimension_group: property_hs_lastmodifieddate {
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
    sql: ${TABLE}."PROPERTY_HS_LASTMODIFIEDDATE" ;;
  }

  dimension: property_hs_projected_amount {
    type: number
    sql: ${TABLE}."PROPERTY_HS_PROJECTED_AMOUNT" ;;
  }

  dimension: property_hs_projected_amount_in_home_currency {
    type: number
    sql: ${TABLE}."PROPERTY_HS_PROJECTED_AMOUNT_IN_HOME_CURRENCY" ;;
  }

  dimension_group: property_hs_sales_email_last_replied {
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
    sql: ${TABLE}."PROPERTY_HS_SALES_EMAIL_LAST_REPLIED" ;;
  }

  dimension_group: property_hubspot_owner_assigneddate {
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
    sql: ${TABLE}."PROPERTY_HUBSPOT_OWNER_ASSIGNEDDATE" ;;
  }

  dimension_group: property_notes_last_contacted {
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
    sql: ${TABLE}."PROPERTY_NOTES_LAST_CONTACTED" ;;
  }

  dimension_group: property_notes_last_updated {
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
    sql: ${TABLE}."PROPERTY_NOTES_LAST_UPDATED" ;;
  }

  dimension: property_num_contacted_notes {
    type: number
    sql: ${TABLE}."PROPERTY_NUM_CONTACTED_NOTES" ;;
  }

  dimension: property_num_notes {
    type: number
    sql: ${TABLE}."PROPERTY_NUM_NOTES" ;;
  }

  dimension: property_software {
    type: string
    sql: ${TABLE}."PROPERTY_SOFTWARE" ;;
    label: "Software"
  }

  dimension: property_vendor {
    type: string
    sql: ${TABLE}."PROPERTY_VENDOR" ;;
    label: "Vendor"
  }

  measure: count {
    type: count
    drill_fields: [deal_id, property_dealname]
  }
}
