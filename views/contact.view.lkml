view: contact {
  sql_table_name: HUBSPOT.CONTACT ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ID" ;;
    group_label: "contact Info"
  }


  dimension: _fivetran_deleted {
    type: yesno
    sql: ${TABLE}."_FIVETRAN_DELETED" ;;
    hidden: yes
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
    hidden: yes
  }

  dimension: property_address {
    type: string
    sql: ${TABLE}."PROPERTY_ADDRESS" ;;
  }

  dimension: property_email {
    type: string
    sql: ${TABLE}."PROPERTY_EMAIL" ;;
    group_label: "contact Info"

  }

  dimension_group: property_first_deal_created {
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
    sql: ${TABLE}."PROPERTY_FIRST_DEAL_CREATED_DATE" ;;
    hidden: yes
  }

  dimension: property_firstname {
    type: string
    sql: ${TABLE}."PROPERTY_FIRSTNAME" ;;
    group_label: "contact Info"

  }

  dimension: property_followercount {
    type: number
    sql: ${TABLE}."PROPERTY_FOLLOWERCOUNT" ;;
    hidden: yes
  }

  dimension_group: property_hs_analytics_first_timestamp {
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
    sql: ${TABLE}."PROPERTY_HS_ANALYTICS_FIRST_TIMESTAMP" ;;
    hidden: yes
  }

  dimension: property_hs_analytics_revenue {
    type: number
    sql: ${TABLE}."PROPERTY_HS_ANALYTICS_REVENUE" ;;
  }

  dimension: property_hs_analytics_source {
    type: string
    sql: ${TABLE}."PROPERTY_HS_ANALYTICS_SOURCE" ;;
    hidden: yes
  }

  dimension: property_hs_analytics_source_data_1 {
    type: string
    sql: ${TABLE}."PROPERTY_HS_ANALYTICS_SOURCE_DATA_1" ;;
    hidden: yes
  }

  dimension: property_hs_analytics_source_data_2 {
    type: string
    sql: ${TABLE}."PROPERTY_HS_ANALYTICS_SOURCE_DATA_2" ;;
    hidden: yes
  }


  dimension: property_hs_email_last_email_name {
    type: string
    sql: ${TABLE}."PROPERTY_HS_EMAIL_LAST_EMAIL_NAME" ;;
  }

  dimension: property_hs_facebookid {
    type: string
    sql: ${TABLE}."PROPERTY_HS_FACEBOOKID" ;;
    hidden: yes
  }

  dimension: property_hs_feedback_last_nps_follow_up {
    type: string
    sql: ${TABLE}."PROPERTY_HS_FEEDBACK_LAST_NPS_FOLLOW_UP" ;;
  }

  dimension: property_hs_feedback_last_nps_rating {
    type: string
    sql: ${TABLE}."PROPERTY_HS_FEEDBACK_LAST_NPS_RATING" ;;
  }

  dimension_group: property_hs_lifecyclestage_customer {
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
    sql: ${TABLE}."PROPERTY_HS_LIFECYCLESTAGE_CUSTOMER_DATE" ;;
    hidden: yes
  }

  dimension_group: property_hs_lifecyclestage_evangelist {
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
    sql: ${TABLE}."PROPERTY_HS_LIFECYCLESTAGE_EVANGELIST_DATE" ;;
    hidden: yes
  }


  dimension_group: property_hs_sales_email_last_clicked {
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
    sql: ${TABLE}."PROPERTY_HS_SALES_EMAIL_LAST_CLICKED" ;;
  }


  dimension: property_jobtitle {
    type: string
    sql: ${TABLE}."PROPERTY_JOBTITLE" ;;
  }

  dimension_group: property_lastmodifieddate {
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
    sql: ${TABLE}."PROPERTY_LASTMODIFIEDDATE" ;;
    hidden: yes
  }

  dimension: property_lastname {
    type: string
    sql: ${TABLE}."PROPERTY_LASTNAME" ;;
    group_label: "contact Info"
  }

  dimension: property_lifecyclestage {
    type: string
    sql: ${TABLE}."PROPERTY_LIFECYCLESTAGE" ;;
    hidden: yes
  }

  dimension: property_linkedinbio {
    type: string
    sql: ${TABLE}."PROPERTY_LINKEDINBIO" ;;
  }

  dimension: property_linkedinconnections {
    type: number
    sql: ${TABLE}."PROPERTY_LINKEDINCONNECTIONS" ;;
  }


  dimension: property_mobilephone {
    type: string
    sql: ${TABLE}."PROPERTY_MOBILEPHONE" ;;
    group_label: "contact Info"
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
    hidden: yes
  }

  dimension_group: property_notes_next_activity {
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
    sql: ${TABLE}."PROPERTY_NOTES_NEXT_ACTIVITY_DATE" ;;
  }

  dimension: property_numemployees {
    type: string
    sql: ${TABLE}."PROPERTY_NUMEMPLOYEES" ;;
    hidden: yes
  }

  dimension: property_owneremail {
    type: string
    sql: ${TABLE}."PROPERTY_OWNEREMAIL" ;;
    hidden: yes
  }

  dimension: property_ownername {
    type: string
    sql: ${TABLE}."PROPERTY_OWNERNAME" ;;
    hidden: yes
  }

  dimension: property_phone {
    type: string
    sql: ${TABLE}."PROPERTY_PHONE" ;;
    group_label: "contact Info"
  }

  dimension: property_photo {
    type: string
    sql: ${TABLE}."PROPERTY_PHOTO" ;;
  }

  dimension: property_recent_deal_amount {
    type: number
    sql: ${TABLE}."PROPERTY_RECENT_DEAL_AMOUNT" ;;
  }

  dimension_group: property_recent_deal_close {
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
    sql: ${TABLE}."PROPERTY_RECENT_DEAL_CLOSE_DATE" ;;
    hidden: yes
  }


  dimension: property_start_date {
    type: string
    sql: ${TABLE}."PROPERTY_START_DATE" ;;
  }

  dimension: property_total_revenue {
    type: number
    sql: ${TABLE}."PROPERTY_TOTAL_REVENUE" ;;
  }

  dimension: property_website {
    type: string
    sql: ${TABLE}."PROPERTY_WEBSITE" ;;
  }


  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      property_ownername,
      property_firstname,
      property_lastname,
      property_hs_email_last_email_name,
      contact_property_history.count,
      deal_contact.count
    ]
  }
}
