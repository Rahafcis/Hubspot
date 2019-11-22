connection: "fivetran_snowflake_cis"

# include all the views
include: "/views/**/*.view"

datagroup: hubspot_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}


explore: company {
  join: company_property_history {
    type: left_outer
    relationship: many_to_many
    sql_on: ${company.id}=${company_property_history.company_id} ;;
  }

  join: task_detail {
    type: left_outer
    relationship: one_to_many
    sql_on: ${company.property_name}=${task_detail.client} ;;
  }

  join: contact {
    type: left_outer
    relationship: many_to_many
    sql_on: ${company.id}=${contact.property_associatedcompanyid} ;;
  }

join: deal {
  relationship: one_to_many
  sql_on: ${company.property_hs_all_owner_ids}=${deal.property_hs_all_owner_ids} ;;
}
}

explore: contact {

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
  join: task_detail {
    relationship: one_to_many
    sql_on:${deal.name}=${task_detail.client}  ;;
  }
}
