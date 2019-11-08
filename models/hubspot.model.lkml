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

  join: contact {
    type: left_outer
    relationship: many_to_many
    sql_on: ${company.id}=${contact.property_associatedcompanyid} ;;
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
  join: deal_company {
    relationship: many_to_many
    sql_on: ${deal.deal_id}=${deal_company.deal_id} ;;
  }

  join: deal_contact {
    relationship: many_to_many
    sql_on: ${deal.deal_id}=${deal_contact.deal_id} ;;
  }
}


explore: engagement {

  join: engagement_company {
    type: left_outer
    relationship: many_to_many
    sql_on: ${engagement.id}=${engagement_company.engagement_id} ;;

  }

  join: engagement_task {
    type: left_outer
    relationship: many_to_many
    sql_on: ${engagement.id}=${engagement_task.engagement_id} ;;
  }
}
