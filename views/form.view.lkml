view: form {
  sql_table_name: "HUBSPOT"."FORM"
    ;;

  dimension: _fivetran_deleted {
    type: yesno
    sql: ${TABLE}."_FIVETRAN_DELETED" ;;
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
    sql: CAST(${TABLE}."_FIVETRAN_SYNCED" AS TIMESTAMP_NTZ) ;;
  }

  dimension: action {
    type: string
    sql: ${TABLE}."ACTION" ;;
  }

  dimension_group: created {
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
    sql: CAST(${TABLE}."CREATED_AT" AS TIMESTAMP_NTZ) ;;
  }

  dimension: css_class {
    type: string
    sql: ${TABLE}."CSS_CLASS" ;;
  }

  dimension: follow_up_id {
    type: string
    sql: ${TABLE}."FOLLOW_UP_ID" ;;
  }

  dimension: guid {
    primary_key: yes
    type: string
    sql: ${TABLE}."GUID" ;;
  }

  dimension: lead_nurturing_campaign_id {
    type: string
    sql: ${TABLE}."LEAD_NURTURING_CAMPAIGN_ID" ;;
  }

  dimension: method {
    type: string
    sql: ${TABLE}."METHOD" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: notify_recipients {
    type: string
    sql: ${TABLE}."NOTIFY_RECIPIENTS" ;;
  }

  dimension: portal_id {
    type: number
    sql: ${TABLE}."PORTAL_ID" ;;
  }

  dimension: redirect {
    type: string
    sql: ${TABLE}."REDIRECT" ;;
  }

  dimension: submit_text {
    type: string
    sql: ${TABLE}."SUBMIT_TEXT" ;;
  }

  dimension_group: updated {
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
    sql: CAST(${TABLE}."UPDATED_AT" AS TIMESTAMP_NTZ) ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
