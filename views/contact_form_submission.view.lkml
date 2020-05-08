view: contact_form_submission {
  sql_table_name: "HUBSPOT"."CONTACT_FORM_SUBMISSION"
    ;;

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
    sql: CAST(${TABLE}."_FIVETRAN_SYNCED" AS TIMESTAMP_NTZ) ;;
  }

  dimension: contact_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."CONTACT_ID" ;;
  }

  dimension: conversion_id {
    type: string
    sql: ${TABLE}."CONVERSION_ID" ;;
  }

  dimension: form_id {
    type: string
    sql: ${TABLE}."FORM_ID" ;;
  }

  dimension: page_url {
    type: string
    sql: ${TABLE}."PAGE_URL" ;;
  }

  dimension: portal_id {
    type: number
    sql: ${TABLE}."PORTAL_ID" ;;
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
    sql: CAST(${TABLE}."TIMESTAMP" AS TIMESTAMP_NTZ) ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}."TITLE" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
