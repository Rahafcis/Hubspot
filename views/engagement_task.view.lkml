view: engagement_task {
  sql_table_name: HUBSPOT.ENGAGEMENT_TASK ;;


  dimension: body {
    type: string
    sql: ${TABLE}."BODY" ;;
  }

  dimension: engagement_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."ENGAGEMENT_ID" ;;
  }

  dimension: for_object_type {
    type: string
    sql: ${TABLE}."FOR_OBJECT_TYPE" ;;
  }

  dimension: priority {
    type: string
    sql: ${TABLE}."PRIORITY" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}."SUBJECT" ;;
  }

  dimension: task_type {
    type: string
    sql: ${TABLE}."TASK_TYPE" ;;
  }

  measure: count {
    type: count
    drill_fields: [engagement.id]
  }
}
