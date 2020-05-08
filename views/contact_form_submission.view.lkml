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

  dimension: partner {
    type: string
    sql: case
            when ${page_url} like '%looker%' then 'Looker'
            when ${page_url} like '%fivetran%' then 'Fivetran'
            when ${page_url} like 'snowflake' then 'Snowflake'
            else 'CIS Consulting'
          end ;;
      html: {% if value == 'Looker' %}
      <p style="color: white; background-color: purple; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% elsif value == 'Snowflake' %}
      <p style="color: white; background-color: lightblue; font-size:100%; text-align:center">{{ rendered_value }}</p>
      {% elsif value == 'Fivetran' %}
      <p style="color: white; background-color: navy; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% else %}
      <p style="color: white; background-color: green; font-size:100%; text-align:center">{{ rendered_value }}</p>
    {% endif %} ;;
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
