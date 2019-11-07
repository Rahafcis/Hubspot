connection: "fivetran_snowflake_cis"

# include all the views
include: "/views/**/*.view"

datagroup: hubsopt_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}




explore: company {}

explore: contact {

  join: contact_property_history {

  type: left_outer
  relationship: many_to_many
  sql_on: ${contact.id}=${contact_property_history.contact_id} ;;
  }
}

explore: contact_property_history {}

explore: deal {}

explore: deal_company {}

explore: deal_contact {}

explore: engagement {}

explore: engagement_company {}

explore: engagement_task {}
