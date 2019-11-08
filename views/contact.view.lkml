view: contact {
  sql_table_name: HUBSPOT.CONTACT ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ID" ;;
  }

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
    sql: ${TABLE}."_FIVETRAN_SYNCED" ;;
  }

  dimension: property_address {
    type: string
    sql: ${TABLE}."PROPERTY_ADDRESS" ;;
  }

  dimension: property_annualrevenue {
    type: string
    sql: ${TABLE}."PROPERTY_ANNUALREVENUE" ;;
  }

  dimension: property_associatedcompanyid {
    type: number
    value_format_name: id
    sql: ${TABLE}."PROPERTY_ASSOCIATEDCOMPANYID" ;;
  }

  dimension: property_associatedcompanylastupdated {
    type: number
    sql: ${TABLE}."PROPERTY_ASSOCIATEDCOMPANYLASTUPDATED" ;;
  }

  dimension: property_city {
    type: string
    sql: ${TABLE}."PROPERTY_CITY" ;;
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

  dimension: property_company {
    type: string
    sql: ${TABLE}."PROPERTY_COMPANY" ;;
  }

  dimension: property_company_size {
    type: string
    sql: ${TABLE}."PROPERTY_COMPANY_SIZE" ;;
  }

  dimension: property_country {
    type: string
    sql: ${TABLE}."PROPERTY_COUNTRY" ;;
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

  dimension: property_currentlyinworkflow {
    type: string
    sql: ${TABLE}."PROPERTY_CURRENTLYINWORKFLOW" ;;
  }

  dimension: property_date_of_birth {
    type: string
    sql: ${TABLE}."PROPERTY_DATE_OF_BIRTH" ;;
  }

  dimension: property_degree {
    type: string
    sql: ${TABLE}."PROPERTY_DEGREE" ;;
  }

  dimension: property_email {
    type: string
    sql: ${TABLE}."PROPERTY_EMAIL" ;;
  }

  dimension_group: property_engagements_last_meeting_booked {
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
    sql: ${TABLE}."PROPERTY_ENGAGEMENTS_LAST_MEETING_BOOKED" ;;
  }

  dimension: property_engagements_last_meeting_booked_campaign {
    type: string
    sql: ${TABLE}."PROPERTY_ENGAGEMENTS_LAST_MEETING_BOOKED_CAMPAIGN" ;;
  }

  dimension: property_engagements_last_meeting_booked_medium {
    type: string
    sql: ${TABLE}."PROPERTY_ENGAGEMENTS_LAST_MEETING_BOOKED_MEDIUM" ;;
  }

  dimension: property_engagements_last_meeting_booked_source {
    type: string
    sql: ${TABLE}."PROPERTY_ENGAGEMENTS_LAST_MEETING_BOOKED_SOURCE" ;;
  }

  dimension: property_fax {
    type: string
    sql: ${TABLE}."PROPERTY_FAX" ;;
  }

  dimension: property_field_of_study {
    type: string
    sql: ${TABLE}."PROPERTY_FIELD_OF_STUDY" ;;
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
  }

  dimension: property_firstname {
    type: string
    sql: ${TABLE}."PROPERTY_FIRSTNAME" ;;
  }

  dimension: property_followercount {
    type: number
    sql: ${TABLE}."PROPERTY_FOLLOWERCOUNT" ;;
  }

  dimension: property_gender {
    type: string
    sql: ${TABLE}."PROPERTY_GENDER" ;;
  }

  dimension: property_graduation_date {
    type: string
    sql: ${TABLE}."PROPERTY_GRADUATION_DATE" ;;
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

  dimension: property_hs_analytics_first_touch_converting_campaign {
    type: string
    sql: ${TABLE}."PROPERTY_HS_ANALYTICS_FIRST_TOUCH_CONVERTING_CAMPAIGN" ;;
  }

  dimension: property_hs_analytics_first_url {
    type: string
    sql: ${TABLE}."PROPERTY_HS_ANALYTICS_FIRST_URL" ;;
  }

  dimension: property_hs_analytics_last_referrer {
    type: string
    sql: ${TABLE}."PROPERTY_HS_ANALYTICS_LAST_REFERRER" ;;
  }

  dimension: property_hs_analytics_last_touch_converting_campaign {
    type: string
    sql: ${TABLE}."PROPERTY_HS_ANALYTICS_LAST_TOUCH_CONVERTING_CAMPAIGN" ;;
  }

  dimension: property_hs_analytics_last_url {
    type: string
    sql: ${TABLE}."PROPERTY_HS_ANALYTICS_LAST_URL" ;;
  }

  dimension: property_hs_analytics_num_event_completions {
    type: number
    sql: ${TABLE}."PROPERTY_HS_ANALYTICS_NUM_EVENT_COMPLETIONS" ;;
  }

  dimension: property_hs_analytics_num_page_views {
    type: number
    sql: ${TABLE}."PROPERTY_HS_ANALYTICS_NUM_PAGE_VIEWS" ;;
  }

  dimension: property_hs_analytics_num_visits {
    type: number
    sql: ${TABLE}."PROPERTY_HS_ANALYTICS_NUM_VISITS" ;;
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

  dimension: property_hs_email_optout {
    type: yesno
    sql: ${TABLE}."PROPERTY_HS_EMAIL_OPTOUT" ;;
  }

  dimension: property_hs_email_optout_3308717 {
    type: string
    sql: ${TABLE}."PROPERTY_HS_EMAIL_OPTOUT_3308717" ;;
  }

  dimension: property_hs_email_quarantined {
    type: yesno
    sql: ${TABLE}."PROPERTY_HS_EMAIL_QUARANTINED" ;;
  }

  dimension: property_hs_emailconfirmationstatus {
    type: string
    sql: ${TABLE}."PROPERTY_HS_EMAILCONFIRMATIONSTATUS" ;;
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

  dimension: property_hs_ip_timezone {
    type: string
    sql: ${TABLE}."PROPERTY_HS_IP_TIMEZONE" ;;
  }

  dimension: property_hs_language {
    type: string
    sql: ${TABLE}."PROPERTY_HS_LANGUAGE" ;;
  }

  dimension: property_hs_lead_status {
    type: string
    sql: ${TABLE}."PROPERTY_HS_LEAD_STATUS" ;;
  }

  dimension: property_hs_legal_basis {
    type: string
    sql: ${TABLE}."PROPERTY_HS_LEGAL_BASIS" ;;
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

  dimension: property_ip_state {
    type: string
    sql: ${TABLE}."PROPERTY_IP_STATE" ;;
  }

  dimension: property_ip_state_code {
    type: string
    sql: ${TABLE}."PROPERTY_IP_STATE_CODE" ;;
  }

  dimension: property_ip_zipcode {
    type: string
    sql: ${TABLE}."PROPERTY_IP_ZIPCODE" ;;
  }

  dimension: property_job_function {
    type: string
    sql: ${TABLE}."PROPERTY_JOB_FUNCTION" ;;
  }

  dimension: property_jobtitle {
    type: string
    sql: ${TABLE}."PROPERTY_JOBTITLE" ;;
  }

  dimension: property_kloutscoregeneral {
    type: number
    sql: ${TABLE}."PROPERTY_KLOUTSCOREGENERAL" ;;
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

  dimension: property_marital_status {
    type: string
    sql: ${TABLE}."PROPERTY_MARITAL_STATUS" ;;
  }

  dimension: property_message {
    type: string
    sql: ${TABLE}."PROPERTY_MESSAGE" ;;
  }

  dimension: property_military_status {
    type: string
    sql: ${TABLE}."PROPERTY_MILITARY_STATUS" ;;
  }

  dimension: property_mobilephone {
    type: string
    sql: ${TABLE}."PROPERTY_MOBILEPHONE" ;;
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

  dimension: property_relationship_status {
    type: string
    sql: ${TABLE}."PROPERTY_RELATIONSHIP_STATUS" ;;
  }

  dimension: property_salutation {
    type: string
    sql: ${TABLE}."PROPERTY_SALUTATION" ;;
  }

  dimension: property_school {
    type: string
    sql: ${TABLE}."PROPERTY_SCHOOL" ;;
  }

  dimension: property_seniority {
    type: string
    sql: ${TABLE}."PROPERTY_SENIORITY" ;;
  }

  dimension: property_start_date {
    type: string
    sql: ${TABLE}."PROPERTY_START_DATE" ;;
  }

  dimension: property_state {
    type: string
    sql: ${TABLE}."PROPERTY_STATE" ;;
  }

  dimension: property_total_revenue {
    type: number
    sql: ${TABLE}."PROPERTY_TOTAL_REVENUE" ;;
  }

  dimension: property_twitterbio {
    type: string
    sql: ${TABLE}."PROPERTY_TWITTERBIO" ;;
  }

  dimension: property_twitterhandle {
    type: string
    sql: ${TABLE}."PROPERTY_TWITTERHANDLE" ;;
  }

  dimension: property_twitterprofilephoto {
    type: string
    sql: ${TABLE}."PROPERTY_TWITTERPROFILEPHOTO" ;;
  }

  dimension: property_website {
    type: string
    sql: ${TABLE}."PROPERTY_WEBSITE" ;;
  }

  dimension: property_work_email {
    type: string
    sql: ${TABLE}."PROPERTY_WORK_EMAIL" ;;
  }

  dimension: property_zip {
    type: string
    sql: ${TABLE}."PROPERTY_ZIP" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, property_hs_email_last_email_name, property_firstname, property_ownername, property_lastname]
  }
}
