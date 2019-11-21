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

join: deal {
  relationship: one_to_many
  sql_on: ${company.portal_id}=${deal.portal_id} ;;
}
}

explore: contact {

  join: contact_property_history {

  type: left_outer
  relationship: many_to_many
  sql_on: ${contact.id}=${contact_property_history.contact_id} ;;
  }
  }

  explore: task_detail {
    join: deal {
      relationship: one_to_one
      sql_on:${deal.property_dealname}=${task_detail.project}  ;;
    }
  }


explore: deal {
  join: deal_property_history{
    relationship: one_to_many
    sql_on: ${deal.deal_id}=${deal_property_history.deal_id} ;;
  }
  join: task_detail {
    relationship: one_to_one
    sql_on:${deal.property_dealname}=${task_detail.project}  ;;
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
