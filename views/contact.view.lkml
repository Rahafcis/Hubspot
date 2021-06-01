view: contact {
  sql_table_name: HUBSPOT.CONTACT ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ID" ;;
    }

  dimension: _fivetran_deleted {
    hidden: yes
    type: yesno
    sql: ${TABLE}."_FIVETRAN_DELETED" ;;
  }

  dimension_group: fivetran_synced {
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

  dimension: home_address {
    type: string
    sql: ${TABLE}."PROPERTY_ADDRESS" ;;
  }

  dimension: property_annualrevenue {
    hidden: yes
    type: string
    sql: ${TABLE}."PROPERTY_ANNUALREVENUE" ;;
  }

  dimension: associated_company_id {
    hidden: yes
    type: number
    value_format_name: id
    sql: ${TABLE}."PROPERTY_ASSOCIATEDCOMPANYID" ;;
  }

  dimension: associated_company_last_updated {
    type: number
    sql: ${TABLE}."PROPERTY_ASSOCIATEDCOMPANYLASTUPDATED" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."PROPERTY_CITY" ;;
    label: "City"
  }

  dimension: Contact_Name {
    description: "The first and last name of the user"
    sql: CONCAT(${TABLE}.property_firstname,' ', ${TABLE}.property_lastname) ;;
    label: "Contact"

    link: {
      label: "Linkedin"
      url: "https://www.linkedin.com/search/results/people/?authorCompany=%5B%5D&authorIndustry=%5B%5D&contactInterest=%5B%5D&facetCity=%5B%5D&facetCompany=%5B%5D&facetConnectionOf=%5B%5D&facetCurrentCompany=%5B%5D&facetCurrentFunction=%5B%5D&facetGeoRegion=%5B%5D&facetGroup=%5B%5D&facetGuides=%5B%5D&facetIndustry=%5B%5D&facetNetwork=%5B%5D&facetNonprofitInterest=%5B%5D&facetPastCompany=%5B%5D&facetProfessionalEvent=%5B%5D&facetProfileLanguage=%5B%5D&facetRegion=%5B%5D&facetSchool=%5B%5D&facetSeniority=%5B%5D&facetServiceCategory=%5B%5D&facetState=%5B%5D&groups=%5B%5D&keywords={{ Contact_Name }}&origin=GLOBAL_SEARCH_HEADER&page=1&refresh=false&skillExplicit=%5B%5D&topic=%5B%5D"
      icon_url: "https://image.flaticon.com/icons/svg/174/174857.svg"
    }

    link: {
      label: "View Contact in Hubspot"
      url: "https://app.hubspot.com/contacts/3068849/contacts/{{ id._value }}/"
      icon_url: "http://app.hubspot.com/favicon.ico"
    }

    action: {
      label: "Send email"
      url: "https://hooks.zapier.com/hooks/catch/5919737/ohbpnyg/"
      icon_url: "https://sendgrid.com/favicon.ico"

      form_param: {
        name: "To"
        type: string
        required: yes
        default:
        "{{email}}"
      }

      form_param: {
        name: "Subject"
        type: string
        required: yes


      }


      form_param: {
        name: "Body"
        type: textarea
        required: yes

      }
    }
  }


  dimension_group: property_closedate {
    hidden: yes
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
    label: "Company"
    type: string
    sql: ${TABLE}."PROPERTY_COMPANY" ;;
    link: {
      label: "Search on LinkedIn"
      url: "https://www.linkedin.com/search/results/companies/?keywords={{ property_company }}&origin=SWITCH_SEARCH_VERTICAL"
      icon_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/LinkedIn_logo_initials.png/768px-LinkedIn_logo_initials.png"
    }

    link: {
      label: "Search on Cruchbase"
      url: "https://www.crunchbase.com/organization/{{ property_company }}"
      icon_url: "https://pbs.twimg.com/profile_images/1253417530380611585/-yUUl-Dx_400x400.jpg"
    }
  }

  dimension: company_size {
    type: string
    sql: ${TABLE}."PROPERTY_COMPANY_SIZE" ;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}."PROPERTY_COUNTRY" ;;
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
    sql: ${TABLE}."PROPERTY_CREATEDATE" ;;
  }

  dimension: property_currentlyinworkflow {
    hidden: yes
    type: string
    sql: ${TABLE}."PROPERTY_CURRENTLYINWORKFLOW" ;;
  }

  dimension: date_of_birth {
    type: string
    sql: ${TABLE}."PROPERTY_DATE_OF_BIRTH" ;;
  }

  dimension: property_degree {
    hidden: yes
    type: string
    sql: ${TABLE}."PROPERTY_DEGREE" ;;
  }

  dimension: property_email {
    type: string
    sql: ${TABLE}."PROPERTY_EMAIL" ;;
    group_label: "Contact Info"
    label: "Email"
    action: {
      label: "Send email"
      url: "https://hooks.zapier.com/hooks/catch/5919737/o41xnng/"
      icon_url: "https://sendgrid.com/favicon.ico"

      form_param: {
        name: "To"
        type: string
        required: yes
        default:
        "{{property_email}}"
      }

      form_param: {
        name: "Subject"
        type: string
        required: yes

      }


      form_param: {
        name: "Body"
        type: textarea
        required: yes

      }
    }
  }


  dimension_group: engagements_last_meeting_booked {
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

  dimension: engagements_last_meeting_booked_campaign {
    type: string
    sql: ${TABLE}."PROPERTY_ENGAGEMENTS_LAST_MEETING_BOOKED_CAMPAIGN" ;;
  }

  dimension: engagements_last_meeting_booked_medium {
    type: string
    sql: ${TABLE}."PROPERTY_ENGAGEMENTS_LAST_MEETING_BOOKED_MEDIUM" ;;
  }

  dimension: engagements_last_meeting_booked_source {
    type: string
    sql: ${TABLE}."PROPERTY_ENGAGEMENTS_LAST_MEETING_BOOKED_SOURCE" ;;
  }

  dimension: fax {
    type: string
    sql: ${TABLE}."PROPERTY_FAX" ;;
  }

  dimension: property_field_of_study {
    hidden: yes
    type: string
    sql: ${TABLE}."PROPERTY_FIELD_OF_STUDY" ;;
  }

  dimension_group: first_deal_created {
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

  ##### new dimensions for partner portal report

  dimension: full_name {
    type: string
    sql: concat(concat(${property_firstname} , ' '), ${property_lastname}) ;;
  }

  dimension: pain_points {
    type: string
    sql: case when ${full_name} is not null then ${company.property_name} end ;;
    html: <a href="https://www.notion.so/cisconsulting/Verse-14ae934dcef64060b1bffee193c0970d"><button>View Notes On Notion</button></a> ;;
#     link: {
#       url: "https://www.notion.so/cisconsulting/{{ company.property_linkedin_company_page }}"
#       labe
#     }<a href="https://www.notion.so/cisconsulting/{{ company.property_name | url_encode }}-"><button>View Notes On Notion</button></a> ;;
  }

  dimension: property_firstname {
   # required_fields: [id]
    type: string
    sql: ${TABLE}."PROPERTY_FIRSTNAME" ;;
    group_label: "Contact Info"
    label: "First Name"

    link: {
      label:: "Search on LinkedIn"
      url: "https://www.linkedin.com/search/results/all/?keywords={{ property_firstname }}%20{{ property_lastname }}&origin=GLOBAL_SEARCH_HEADER"
      icon_url: "https://image.flaticon.com/icons/svg/174/174857.svg"
    }

    link: {
      label: "Update on HubSpot"
      url: "https://app.hubspot.com/contacts/3068849/contact/{{ id._value }}/"
      icon_url: "https://media-exp1.licdn.com/dms/image/C560BAQFhSyJmEbHWJw/company-logo_200_200/0?e=2159024400&v=beta&t=EPB2Wt63lokj12x7curh9CGkojnQSyLcOK-8hr-S8JU"
    }
  }

  dimension: property_followercount {
    hidden: yes
    type: number
    sql: ${TABLE}."PROPERTY_FOLLOWERCOUNT" ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}."PROPERTY_GENDER" ;;
  }

  dimension: property_graduation_date {
    hidden: yes
    type: string
    sql: ${TABLE}."PROPERTY_GRADUATION_DATE" ;;
  }

  dimension: property_hs_all_accessible_team_ids {
    hidden: yes
    type: string
    sql: ${TABLE}."PROPERTY_HS_ALL_ACCESSIBLE_TEAM_IDS" ;;
  }

  dimension: property_hs_all_owner_ids {
    hidden: yes
    type: number
    sql: ${TABLE}."PROPERTY_HS_ALL_OWNER_IDS" ;;
  }

  dimension: property_hs_all_team_ids {
    hidden: yes
    type: string
    sql: ${TABLE}."PROPERTY_HS_ALL_TEAM_IDS" ;;
  }

  dimension: property_hs_analytics_average_page_views {
    hidden: yes
    type: number
    sql: ${TABLE}."PROPERTY_HS_ANALYTICS_AVERAGE_PAGE_VIEWS" ;;
  }

  dimension: analytics_first_referrer {
    type: string
    sql: ${TABLE}."PROPERTY_HS_ANALYTICS_FIRST_REFERRER" ;;
  }

  dimension_group: analytics_first_timestamp {
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

  dimension: analytics_first_touch_converting_campaign {
    type: string
    sql: ${TABLE}."PROPERTY_HS_ANALYTICS_FIRST_TOUCH_CONVERTING_CAMPAIGN" ;;
  }

  dimension: property_hs_analytics_first_url {
    hidden: yes
    type: string
    sql: ${TABLE}."PROPERTY_HS_ANALYTICS_FIRST_URL" ;;
  }

  dimension: analytics_last_referrer {
    type: string
    sql: ${TABLE}."PROPERTY_HS_ANALYTICS_LAST_REFERRER" ;;
  }

  dimension: property_hs_analytics_last_touch_converting_campaign {
    hidden: yes
    type: string
    sql: ${TABLE}."PROPERTY_HS_ANALYTICS_LAST_TOUCH_CONVERTING_CAMPAIGN" ;;
  }

  dimension: property_hs_analytics_last_url {
    hidden: yes
    type: string
    sql: ${TABLE}."PROPERTY_HS_ANALYTICS_LAST_URL" ;;
  }

  dimension: number_of_event_completions {
    type: number
    sql: ${TABLE}."PROPERTY_HS_ANALYTICS_NUM_EVENT_COMPLETIONS" ;;
  }

  dimension: number_of_page_views {
    type: number
    sql: ${TABLE}."PROPERTY_HS_ANALYTICS_NUM_PAGE_VIEWS" ;;
  }

  dimension: number_of_visits {
    type: number
    sql: ${TABLE}."PROPERTY_HS_ANALYTICS_NUM_VISITS" ;;
  }

  dimension: property_hs_analytics_revenue {
    hidden: yes
    type: number
    sql: ${TABLE}."PROPERTY_HS_ANALYTICS_REVENUE" ;;
  }

  dimension: analytics_source {
    type: string
    sql: ${TABLE}."PROPERTY_HS_ANALYTICS_SOURCE" ;;
  }

  dimension: analytics_source_data_1 {
    type: string
    sql: ${TABLE}."PROPERTY_HS_ANALYTICS_SOURCE_DATA_1" ;;
  }

  dimension: analytics_source_data_2 {
    type: string
    sql: ${TABLE}."PROPERTY_HS_ANALYTICS_SOURCE_DATA_2" ;;
  }

  dimension: property_hs_avatar_filemanager_key {
    hidden: yes
    type: string
    sql: ${TABLE}."PROPERTY_HS_AVATAR_FILEMANAGER_KEY" ;;
  }

  dimension: property_hs_buying_role {
    hidden: yes
    type: string
    sql: ${TABLE}."PROPERTY_HS_BUYING_ROLE" ;;
  }

  dimension: content_membership_notes {
    type: string
    sql: ${TABLE}."PROPERTY_HS_CONTENT_MEMBERSHIP_NOTES" ;;
  }

  dimension: property_hs_content_membership_registration_domain_sent_to {
    hidden: yes
    type: string
    sql: ${TABLE}."PROPERTY_HS_CONTENT_MEMBERSHIP_REGISTRATION_DOMAIN_SENT_TO" ;;
  }

  dimension: property_hs_content_membership_status {
    hidden: yes
    type: string
    sql: ${TABLE}."PROPERTY_HS_CONTENT_MEMBERSHIP_STATUS" ;;
  }

  dimension: conversations_visitor_email {
    type: string
    sql: ${TABLE}."PROPERTY_HS_CONVERSATIONS_VISITOR_EMAIL" ;;
  }

  dimension: property_hs_email_last_email_name {
    hidden: yes
    type: string
    sql: ${TABLE}."PROPERTY_HS_EMAIL_LAST_EMAIL_NAME" ;;
  }

  dimension: email_optout {
    type: yesno
    sql: ${TABLE}."PROPERTY_HS_EMAIL_OPTOUT" ;;
  }

  dimension: email_optout_details {
    type: string
    sql: ${TABLE}."PROPERTY_HS_EMAIL_OPTOUT_3308717" ;;
  }

  dimension: property_hs_email_quarantined {
    hidden: yes
    type: yesno
    sql: ${TABLE}."PROPERTY_HS_EMAIL_QUARANTINED" ;;
  }

  dimension: email_confirmation_status {
    type: string
    sql: ${TABLE}."PROPERTY_HS_EMAILCONFIRMATIONSTATUS" ;;
  }

  dimension: facebook_id {
    type: string
    sql: ${TABLE}."PROPERTY_HS_FACEBOOKID" ;;
  }

  dimension: feedback_last_nps_follow_up {
    type: string
    sql: ${TABLE}."PROPERTY_HS_FEEDBACK_LAST_NPS_FOLLOW_UP" ;;
  }

  dimension: property_hs_feedback_last_nps_rating {
    hidden: yes
    type: string
    sql: ${TABLE}."PROPERTY_HS_FEEDBACK_LAST_NPS_RATING" ;;
  }

  dimension: google_click_id {
    type: string
    sql: ${TABLE}."PROPERTY_HS_GOOGLE_CLICK_ID" ;;
  }

  dimension: property_hs_googleplusid {
    hidden: yes
    type: string
    sql: ${TABLE}."PROPERTY_HS_GOOGLEPLUSID" ;;
  }

  dimension: ip_timezone {
    type: string
    sql: ${TABLE}."PROPERTY_HS_IP_TIMEZONE" ;;
  }

  dimension: property_hs_language {
    hidden: yes
    type: string
    sql: ${TABLE}."PROPERTY_HS_LANGUAGE" ;;
  }

  dimension: lead_status {
    type: string
    sql: ${TABLE}."PROPERTY_HS_LEAD_STATUS" ;;
  }

  dimension: property_hs_legal_basis {
    hidden: yes
    type: string
    sql: ${TABLE}."PROPERTY_HS_LEGAL_BASIS" ;;
  }

  dimension_group: life_cyclestage_customer {
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
    hidden: yes
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
    hidden: yes
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
    hidden: yes
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
    hidden: yes
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
    hidden: yes
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
    hidden: yes
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
    hidden: yes
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

  dimension: linkedin_id {
    type: string
    sql: ${TABLE}."PROPERTY_HS_LINKEDINID" ;;
  }

  dimension: property_hs_persona {
    hidden: yes
    type: string
    sql: ${TABLE}."PROPERTY_HS_PERSONA" ;;
  }

  dimension: property_hs_predictivecontactscorebucket {
    hidden: yes
    type: string
    sql: ${TABLE}."PROPERTY_HS_PREDICTIVECONTACTSCOREBUCKET" ;;
  }

  dimension: property_hs_predictivescoringtier {
    hidden: yes
    type: string
    sql: ${TABLE}."PROPERTY_HS_PREDICTIVESCORINGTIER" ;;
  }

  dimension_group: sales_email_last_clicked {
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

  dimension_group: sales_email_last_opened {
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

  dimension_group: sales_email_last_replied {
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
    hidden: yes
    type: number
    sql: ${TABLE}."PROPERTY_HS_SOCIAL_FACEBOOK_CLICKS" ;;
  }

  dimension: property_hs_social_google_plus_clicks {
    hidden: yes
    type: number
    sql: ${TABLE}."PROPERTY_HS_SOCIAL_GOOGLE_PLUS_CLICKS" ;;
  }

  dimension: property_hs_social_linkedin_clicks {
    hidden: yes
    type: number
    sql: ${TABLE}."PROPERTY_HS_SOCIAL_LINKEDIN_CLICKS" ;;
  }

  dimension: property_hs_social_num_broadcast_clicks {
    hidden: yes
    type: number
    sql: ${TABLE}."PROPERTY_HS_SOCIAL_NUM_BROADCAST_CLICKS" ;;
  }

  dimension: property_hs_social_twitter_clicks {
    hidden: yes
    type: number
    sql: ${TABLE}."PROPERTY_HS_SOCIAL_TWITTER_CLICKS" ;;
  }

  dimension: property_hs_twitterid {
    hidden: yes
    type: string
    sql: ${TABLE}."PROPERTY_HS_TWITTERID" ;;
  }

  dimension_group: property_hubspot_owner_assigneddate {
    hidden: yes
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
    hidden: yes
    type: string
    sql: ${TABLE}."PROPERTY_HUBSPOT_OWNER_ID" ;;
  }

  dimension: property_hubspot_team_id {
    hidden: yes
    type: string
    sql: ${TABLE}."PROPERTY_HUBSPOT_TEAM_ID" ;;
  }

  dimension: property_industry {
    hidden: yes
    type: string
    sql: ${TABLE}."PROPERTY_INDUSTRY" ;;
  }

  dimension: property_ip_city {
    label: "IP City"
    type: string
    sql: initcap(${TABLE}."PROPERTY_IP_CITY") ;;
  }

  dimension: property_ip_country {
    label: "IP Country"
    type: string
    sql: initcap(${TABLE}."PROPERTY_IP_COUNTRY") ;;
  }

  dimension: ip_country_code {
    type: string
    sql: ${TABLE}."PROPERTY_IP_COUNTRY_CODE" ;;
  }

  dimension: property_ip_latlon {
    hidden: yes
    type: string
    sql: ${TABLE}."PROPERTY_IP_LATLON" ;;
  }

  dimension: property_ip_state {
    label: "IP City"
    type: string
    sql: initcap(${TABLE}."PROPERTY_IP_STATE") ;;
  }

  dimension: property_ip_state_code {
    hidden: yes
    type: string
    sql: ${TABLE}."PROPERTY_IP_STATE_CODE" ;;
  }

  dimension: ip_zipcode {
    type: string
    sql: ${TABLE}."PROPERTY_IP_ZIPCODE" ;;
  }

  dimension: job_function {
    type: string
    sql: ${TABLE}."PROPERTY_JOB_FUNCTION" ;;
  }

  dimension: property_jobtitle {
    type: string
    sql: ${TABLE}."PROPERTY_JOBTITLE" ;;
    group_label: "Contact Info"
    label: "Job Title"
  }

  dimension: property_kloutscoregeneral {
    hidden: yes
    type: number
    sql: ${TABLE}."PROPERTY_KLOUTSCOREGENERAL" ;;
  }

  dimension_group: last_modified {
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
    group_label: "Contact Info"
    label: "Last Name"
  }

  dimension: property_lifecyclestage {
    hidden: yes
    type: string
    sql: ${TABLE}."PROPERTY_LIFECYCLESTAGE" ;;
  }

  dimension: linkedin_bio {
    type: string
    sql: ${TABLE}."PROPERTY_LINKEDINBIO" ;;
  }

  dimension: property_linkedinconnections {
    hidden: yes
    type: number
    sql: ${TABLE}."PROPERTY_LINKEDINCONNECTIONS" ;;
  }

  dimension: property_marital_status {
    hidden: yes
    type: string
    sql: ${TABLE}."PROPERTY_MARITAL_STATUS" ;;
  }

  dimension:message {
    type: string
    sql: ${TABLE}."PROPERTY_MESSAGE" ;;
  }

  dimension: property_military_status {
    hidden: yes
    type: string
    sql: ${TABLE}."PROPERTY_MILITARY_STATUS" ;;
  }

  dimension: property_mobilephone {
    label: "Mobile Phone"
    type: string
    sql: ${TABLE}."PROPERTY_MOBILEPHONE" ;;
    group_label: "Contact Info"
  }

  dimension_group: last_contacted_notes {
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

  dimension_group:notes_last_updated {
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
    hidden: yes
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

  dimension: number_of_associated_deals {
    type: number
    sql: ${TABLE}."PROPERTY_NUM_ASSOCIATED_DEALS" ;;
  }

  dimension: property_num_contacted_notes {
    hidden: yes
    type: number
    sql: ${TABLE}."PROPERTY_NUM_CONTACTED_NOTES" ;;
  }

  dimension: property_num_notes {
    hidden: yes
    type: number
    sql: ${TABLE}."PROPERTY_NUM_NOTES" ;;

  }

  dimension: property_numemployees {
    hidden: yes
    type: string
    sql: ${TABLE}."PROPERTY_NUMEMPLOYEES" ;;
  }

  dimension: property_owneremail {
    hidden: yes
    type: string
    sql: ${TABLE}."PROPERTY_OWNEREMAIL" ;;
  }

  dimension: owner_name {
    type: string
    sql: ${TABLE}."PROPERTY_OWNERNAME" ;;
  }

  dimension: property_phone {
    type: string
    sql: ${TABLE}."PROPERTY_PHONE" ;;
    group_label: "Contact Info"
    label: "Phone"
  }

  dimension: property_photo {
    hidden: yes
    type: string
    sql: ${TABLE}."PROPERTY_PHOTO" ;;
  }

  dimension: recent_deal_amount {
    type: number
    sql: ${TABLE}."PROPERTY_RECENT_DEAL_AMOUNT" ;;
  }

  dimension_group: recent_deal_close {
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
    hidden: yes
    type: string
    sql: ${TABLE}."PROPERTY_RELATIONSHIP_STATUS" ;;
  }

  dimension: property_salutation {
    hidden: yes
    type: string
    sql: ${TABLE}."PROPERTY_SALUTATION" ;;
  }

  dimension: property_school {
    hidden: yes
    type: string
    sql: ${TABLE}."PROPERTY_SCHOOL" ;;
  }

  dimension: property_seniority {
    hidden: yes
    type: string
    sql: ${TABLE}."PROPERTY_SENIORITY" ;;
  }

  dimension: property_start_date {
    hidden: yes
    type: string
    sql: ${TABLE}."PROPERTY_START_DATE" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."PROPERTY_STATE" ;;
  }

  dimension: property_total_revenue {
    hidden: yes
    type: number
    sql: ${TABLE}."PROPERTY_TOTAL_REVENUE" ;;
  }

  dimension: property_twitterbio {
    hidden: yes
    type: string
    sql: ${TABLE}."PROPERTY_TWITTERBIO" ;;
  }

  dimension: property_twitterhandle {
    hidden: yes
    type: string
    sql: ${TABLE}."PROPERTY_TWITTERHANDLE" ;;
  }

  dimension: property_twitterprofilephoto {
    hidden: yes
    type: string
    sql: ${TABLE}."PROPERTY_TWITTERPROFILEPHOTO" ;;
  }

  dimension: contact_website {
    type: string
    sql: ${TABLE}."PROPERTY_WEBSITE" ;;
  }

  dimension: work_email {
    type: string
    sql: ${TABLE}."PROPERTY_WORK_EMAIL" ;;
  }

  dimension: property_zip {
    type: string
    sql: ${TABLE}."PROPERTY_ZIP" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, property_hs_email_last_email_name, property_firstname, owner_name, property_lastname]
  }
}
