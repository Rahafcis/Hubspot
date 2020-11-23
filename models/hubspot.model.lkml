connection: "fivetran_snowflake_cis"

# include all the views
include: "/views/**/*.view"
include: "/**/*.view"

datagroup: hubspot_default_datagroup {
  sql_trigger: SELECT MAX(_FIVETRAN_SYNCED) FROM  contact_form_submission;;
  max_cache_age: "24 hours"
}

persist_with: hubspot_default_datagroup

explore: company {
  join: company_property_history {
    type: left_outer
    relationship: many_to_many
    sql_on: ${company.id}=${company_property_history.company_id} ;;
  }

  join: contact {
    type: left_outer
    relationship: many_to_many
    sql_on: ${company.id}=${contact.associated_company_id} ;;
  }

  join: deal_company {
    relationship: one_to_one
    sql_on: ${company.id}=${deal_company.company_id} ;;
  }

  join: deal {
    relationship: one_to_one
    sql_on:${deal_company.deal_id}=${deal.deal_id} ;;
  }
}

explore: contact {
  fields: [ALL_FIELDS*, -contact.pain_points]

  join: contact_property_history {

  type: left_outer
  relationship: many_to_many
  sql_on: ${contact.id}=${contact_property_history.contact_id} ;;
  }
    }

explore: deal {
  join: deal_property_history{
    relationship: one_to_many
    sql_on: ${deal.deal_id}=${deal_property_history.deal_id} ;;
  }

  join: deal_company {
    type: left_outer
    relationship: one_to_one
    sql_on: ${deal.deal_id}=${deal_company.deal_id} ;;
  }
  join: task_detail {
    relationship: one_to_one
    sql_on:${deal.property_dealname}=${task_detail.project}  ;;
  }
}

explore: cis_event_signups {
  hidden: yes
  view_name: contact
  sql_always_where: ${contact_form_submission.contact_id} IS NOT NULL ;;

  join: contact_form_submission {
    sql_on: ${contact.id} = ${contact_form_submission.contact_id} ;;
    relationship: one_to_one
    type: left_outer
  }

  join: company {
    sql_on: ${contact.associated_company_id} = ${company.id} ;;
    relationship: one_to_one
    type: left_outer
  }
}
explore: cis_sales {
  label: "CIS Prospects and Clients"
  hidden: no
  extends: [cis_event_signups]
  sql_always_where: ${contact.property_firstname} is not null ;;
  join: notion {
    fields: [notion.notion]
    sql_on: ${company.property_name} = ${notion.name} ;;
    type: left_outer
    relationship: one_to_one
  }
}
