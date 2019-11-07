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
  }


  dimension: property_hs_all_accessible_team_ids {
    type: string
    sql: ${TABLE}."PROPERTY_HS_ALL_ACCESSIBLE_TEAM_IDS" ;;
  }

  dimension: property_hs_all_owner_ids {
    type: string
    sql: ${TABLE}."PROPERTY_HS_ALL_OWNER_IDS" ;;
  }

  dimension: property_hs_all_team_ids {
    type: string
    sql: ${TABLE}."PROPERTY_HS_ALL_TEAM_IDS" ;;
  }

  dimension: property_hs_analytics_average_page_views {
    type: number
    sql: ${TABLE}."PROPERTY_HS_ANALYTICS_AVERAGE_PAGE_VIEWS" ;;
  }

  dimension: property_hs_analytics_first_referrer {
    type: string
    sql: ${TABLE}."PROPERTY_HS_ANALYTICS_FIRST_REFERRER" ;;
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
  }


  dimension: property_hs_analytics_revenue {
    type: number
    sql: ${TABLE}."PROPERTY_HS_ANALYTICS_REVENUE" ;;
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

  dimension: property_hs_avatar_filemanager_key {
    type: string
    sql: ${TABLE}."PROPERTY_HS_AVATAR_FILEMANAGER_KEY" ;;
  }

  dimension: property_hs_buying_role {
    type: string
    sql: ${TABLE}."PROPERTY_HS_BUYING_ROLE" ;;
  }

  dimension: property_hs_content_membership_notes {
    type: string
    sql: ${TABLE}."PROPERTY_HS_CONTENT_MEMBERSHIP_NOTES" ;;
  }

  dimension: property_hs_content_membership_registration_domain_sent_to {
    type: string
    sql: ${TABLE}."PROPERTY_HS_CONTENT_MEMBERSHIP_REGISTRATION_DOMAIN_SENT_TO" ;;
  }

  dimension: property_hs_content_membership_status {
    type: string
    sql: ${TABLE}."PROPERTY_HS_CONTENT_MEMBERSHIP_STATUS" ;;
  }

  dimension: property_hs_conversations_visitor_email {
    type: string
    sql: ${TABLE}."PROPERTY_HS_CONVERSATIONS_VISITOR_EMAIL" ;;
  }

  dimension: property_hs_email_last_email_name {
    type: string
    sql: ${TABLE}."PROPERTY_HS_EMAIL_LAST_EMAIL_NAME" ;;
  }

  dimension: property_hs_facebookid {
    type: string
    sql: ${TABLE}."PROPERTY_HS_FACEBOOKID" ;;
  }

  dimension: property_hs_feedback_last_nps_follow_up {
    type: string
    sql: ${TABLE}."PROPERTY_HS_FEEDBACK_LAST_NPS_FOLLOW_UP" ;;
  }

  dimension: property_hs_feedback_last_nps_rating {
    type: string
    sql: ${TABLE}."PROPERTY_HS_FEEDBACK_LAST_NPS_RATING" ;;
  }

  dimension: property_hs_google_click_id {
    type: string
    sql: ${TABLE}."PROPERTY_HS_GOOGLE_CLICK_ID" ;;
  }

  dimension: property_hs_googleplusid {
    type: string
    sql: ${TABLE}."PROPERTY_HS_GOOGLEPLUSID" ;;
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
  }

  dimension_group: property_hs_lifecyclestage_lead {
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
    sql: ${TABLE}."PROPERTY_HS_LIFECYCLESTAGE_LEAD_DATE" ;;
  }

  dimension_group: property_hs_lifecyclestage_marketingqualifiedlead {
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
    sql: ${TABLE}."PROPERTY_HS_LIFECYCLESTAGE_MARKETINGQUALIFIEDLEAD_DATE" ;;
  }

  dimension_group: property_hs_lifecyclestage_opportunity {
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
    sql: ${TABLE}."PROPERTY_HS_LIFECYCLESTAGE_OPPORTUNITY_DATE" ;;
  }

  dimension_group: property_hs_lifecyclestage_other {
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
    sql: ${TABLE}."PROPERTY_HS_LIFECYCLESTAGE_OTHER_DATE" ;;
  }

  dimension_group: property_hs_lifecyclestage_salesqualifiedlead {
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
    sql: ${TABLE}."PROPERTY_HS_LIFECYCLESTAGE_SALESQUALIFIEDLEAD_DATE" ;;
  }

  dimension_group: property_hs_lifecyclestage_subscriber {
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
    sql: ${TABLE}."PROPERTY_HS_LIFECYCLESTAGE_SUBSCRIBER_DATE" ;;
  }

  dimension: property_hs_linkedinid {
    type: string
    sql: ${TABLE}."PROPERTY_HS_LINKEDINID" ;;
  }

  dimension: property_hs_persona {
    type: string
    sql: ${TABLE}."PROPERTY_HS_PERSONA" ;;
  }

  dimension: property_hs_predictivecontactscorebucket {
    type: string
    sql: ${TABLE}."PROPERTY_HS_PREDICTIVECONTACTSCOREBUCKET" ;;
  }

  dimension: property_hs_predictivescoringtier {
    type: string
    sql: ${TABLE}."PROPERTY_HS_PREDICTIVESCORINGTIER" ;;
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

  dimension_group: property_hs_sales_email_last_opened {
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
    sql: ${TABLE}."PROPERTY_HS_SALES_EMAIL_LAST_OPENED" ;;
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

  dimension: property_hs_social_facebook_clicks {
    type: number
    sql: ${TABLE}."PROPERTY_HS_SOCIAL_FACEBOOK_CLICKS" ;;
  }

  dimension: property_hs_social_google_plus_clicks {
    type: number
    sql: ${TABLE}."PROPERTY_HS_SOCIAL_GOOGLE_PLUS_CLICKS" ;;
  }

  dimension: property_hs_social_linkedin_clicks {
    type: number
    sql: ${TABLE}."PROPERTY_HS_SOCIAL_LINKEDIN_CLICKS" ;;
  }

  dimension: property_hs_social_num_broadcast_clicks {
    type: number
    sql: ${TABLE}."PROPERTY_HS_SOCIAL_NUM_BROADCAST_CLICKS" ;;
  }

  dimension: property_hs_social_twitter_clicks {
    type: number
    sql: ${TABLE}."PROPERTY_HS_SOCIAL_TWITTER_CLICKS" ;;
  }

  dimension: property_hs_twitterid {
    type: string
    sql: ${TABLE}."PROPERTY_HS_TWITTERID" ;;
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

  dimension: property_hubspot_owner_id {
    type: string
    sql: ${TABLE}."PROPERTY_HUBSPOT_OWNER_ID" ;;
  }

  dimension: property_hubspot_team_id {
    type: string
    sql: ${TABLE}."PROPERTY_HUBSPOT_TEAM_ID" ;;
  }

  dimension: property_industry {
    type: string
    sql: ${TABLE}."PROPERTY_INDUSTRY" ;;
  }

  dimension: property_ip_city {
    type: string
    sql: ${TABLE}."PROPERTY_IP_CITY" ;;
  }

  dimension: property_ip_country {
    type: string
    sql: ${TABLE}."PROPERTY_IP_COUNTRY" ;;
  }

  dimension: property_ip_country_code {
    type: string
    sql: ${TABLE}."PROPERTY_IP_COUNTRY_CODE" ;;
  }

  dimension: property_ip_latlon {
    type: string
    sql: ${TABLE}."PROPERTY_IP_LATLON" ;;
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
  }

  dimension: property_lastname {
    type: string
    sql: ${TABLE}."PROPERTY_LASTNAME" ;;
    group_label: "contact Info"
  }

  dimension: property_lifecyclestage {
    type: string
    sql: ${TABLE}."PROPERTY_LIFECYCLESTAGE" ;;
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

  dimension: property_num_associated_deals {
    type: number
    sql: ${TABLE}."PROPERTY_NUM_ASSOCIATED_DEALS" ;;
  }

  dimension: property_num_contacted_notes {
    type: number
    sql: ${TABLE}."PROPERTY_NUM_CONTACTED_NOTES" ;;
  }

  dimension: property_num_notes {
    type: number
    sql: ${TABLE}."PROPERTY_NUM_NOTES" ;;
  }

  dimension: property_numemployees {
    type: string
    sql: ${TABLE}."PROPERTY_NUMEMPLOYEES" ;;
  }

  dimension: property_owneremail {
    type: string
    sql: ${TABLE}."PROPERTY_OWNEREMAIL" ;;
  }

  dimension: property_ownername {
    type: string
    sql: ${TABLE}."PROPERTY_OWNERNAME" ;;
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
