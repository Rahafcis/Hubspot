  view: company {
  sql_table_name: HUBSPOT.COMPANY ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ID" ;;
  }
  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}."IS_DELETED" ;;
  }

  dimension: portal_id {
    type: number
    sql: ${TABLE}."PORTAL_ID" ;;
  }

  dimension: property_address {
    type: string
    sql: ${TABLE}."PROPERTY_ADDRESS" ;;
  }

  dimension: property_address_2 {
    type: string
    sql: ${TABLE}."PROPERTY_ADDRESS_2" ;;
  }

  dimension: property_annualrevenue {
    type: number
    sql: ${TABLE}."PROPERTY_ANNUALREVENUE" ;;
  }

  dimension: property_bi {
    type: string
    sql: ${TABLE}."PROPERTY_BI" ;;
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

  dimension: property_country {
    type: string
    sql: ${TABLE}."PROPERTY_COUNTRY" ;;
  }

  dimension: property_cpm {
    type: string
    sql: ${TABLE}."PROPERTY_CPM" ;;
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

  dimension: property_description {
    type: string
    sql: ${TABLE}."PROPERTY_DESCRIPTION" ;;
  }

  dimension: property_domain {
    type: string
    sql: ${TABLE}."PROPERTY_DOMAIN" ;;
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

  dimension: property_erp {
    type: string
    sql: ${TABLE}."PROPERTY_ERP" ;;
  }

  dimension: property_facebook_company_page {
    type: string
    sql: ${TABLE}."PROPERTY_FACEBOOK_COMPANY_PAGE" ;;
  }

  dimension_group: property_first_contact_createdate {
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
    sql: ${TABLE}."PROPERTY_FIRST_CONTACT_CREATEDATE" ;;
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

  dimension: property_founded_year {
    type: number
    sql: ${TABLE}."PROPERTY_FOUNDED_YEAR" ;;
  }

  dimension: property_hs_all_owner_ids {
    type: number
    value_format_name: id
    sql: ${TABLE}."PROPERTY_HS_ALL_OWNER_IDS" ;;
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

  dimension: property_hs_analytics_num_page_views {
    type: number
    sql: ${TABLE}."PROPERTY_HS_ANALYTICS_NUM_PAGE_VIEWS" ;;
  }

  dimension: property_hs_analytics_num_visits {
    type: number
    sql: ${TABLE}."PROPERTY_HS_ANALYTICS_NUM_VISITS" ;;
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

  dimension: property_hs_lead_status {
    type: string
    sql: ${TABLE}."PROPERTY_HS_LEAD_STATUS" ;;
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

  dimension: property_hubspot_owner_id {
    type: string
    sql: ${TABLE}."PROPERTY_HUBSPOT_OWNER_ID" ;;
  }

  dimension: property_industry {
    type: string
    sql: ${TABLE}."PROPERTY_INDUSTRY" ;;
  }

  dimension: property_is_public {
    type: yesno
    sql: ${TABLE}."PROPERTY_IS_PUBLIC" ;;
  }

  dimension: property_lifecyclestage {
    type: string
    sql: ${TABLE}."PROPERTY_LIFECYCLESTAGE" ;;
  }

  dimension: property_linkedin_company_page {
    type: string
    sql: ${TABLE}."PROPERTY_LINKEDIN_COMPANY_PAGE" ;;
  }

  dimension: property_linkedinbio {
    type: string
    sql: ${TABLE}."PROPERTY_LINKEDINBIO" ;;
  }

  dimension: property_name {
    type: string
    sql: ${TABLE}."PROPERTY_NAME" ;;
    group_label: "Property_Info"
    label: "Company Name"

    link: {
      label: "Linkedin"
      url: "https://www.linkedin.com/search/results/companies/?authorCompany=%5B%5D&authorIndustry=%5B%5D&contactInterest=%5B%5D&facetCity=%5B%5D&facetCompany=%5B%5D&facetConnectionOf=%5B%5D&facetCurrentCompany=%5B%5D&facetCurrentFunction=%5B%5D&facetGeoRegion=%5B%5D&facetGroup=%5B%5D&facetGuides=%5B%5D&facetIndustry=%5B%5D&facetNetwork=%5B%5D&facetNonprofitInterest=%5B%5D&facetPastCompany=%5B%5D&facetProfessionalEvent=%5B%5D&facetProfileLanguage=%5B%5D&facetRegion=%5B%5D&facetSchool=%5B%5D&facetSeniority=%5B%5D&facetServiceCategory=%5B%5D&facetState=%5B%5D&groups=%5B%5D&keywords={{property_name}}&origin=GLOBAL_SEARCH_HEADER&page=1&refresh=false&skillExplicit=%5B%5D&topic=%5B%5D"
      icon_url: "https://image.flaticon.com/icons/svg/174/174857.svg"
    }
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

  dimension: property_num_associated_contacts {
    type: number
    sql: ${TABLE}."PROPERTY_NUM_ASSOCIATED_CONTACTS" ;;
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

  dimension: property_numberofemployees {
    type: number
    sql: ${TABLE}."PROPERTY_NUMBEROFEMPLOYEES" ;;
  }

  dimension: property_phone {
    type: string
    sql: ${TABLE}."PROPERTY_PHONE" ;;
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

  dimension: property_responsable_comercial_de_oracle {
    type: string
    sql: ${TABLE}."PROPERTY_RESPONSABLE_COMERCIAL_DE_ORACLE" ;;
    label: " Technology Interest "
  }

  dimension: property_state {
    type: string
    sql: ${TABLE}."PROPERTY_STATE" ;;
  }

  dimension: property_timezone {
    type: string
    sql: ${TABLE}."PROPERTY_TIMEZONE" ;;
  }

  dimension: property_total_money_raised {
    type: string
    sql: ${TABLE}."PROPERTY_TOTAL_MONEY_RAISED" ;;
  }

  dimension: property_total_revenue {
    type: number
    sql: ${TABLE}."PROPERTY_TOTAL_REVENUE" ;;
  }

  dimension: property_twitterhandle {
    type: string
    sql: ${TABLE}."PROPERTY_TWITTERHANDLE" ;;
  }

  dimension: property_type {
    type: string
    sql: ${TABLE}."PROPERTY_TYPE" ;;
  }

  dimension: property_web_technologies {
    type: string
    sql: ${TABLE}."PROPERTY_WEB_TECHNOLOGIES" ;;
  }

  dimension: property_website {
    type: string
    sql: ${TABLE}."PROPERTY_WEBSITE" ;;
  }

  dimension: property_zip {
    type: string
    sql: ${TABLE}."PROPERTY_ZIP" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, property_name, deal_company.count, engagement_company.count]
  }
}
