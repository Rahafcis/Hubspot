view: task_detail {
  sql_table_name: CLOCKIFY.TASK_DETAIL ;;

  dimension: _file {
    type: string
    sql: ${TABLE}."_FILE" ;;
    hidden: yes
  }

  measure: project_hours {
    type: number
    sql: ${task_detail.Total_DURATION_DECIMAL}/${deal.property_hours} ;;
    value_format: "0%"
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
    hidden: yes
  }

  dimension: _line {
    type: number
    sql: ${TABLE}."_LINE" ;;
  }

  dimension: amount_eur_ {
    type: number
    sql: ${TABLE}."AMOUNT_EUR_" ;;
    value_format_name: eur_0
  }

  measure: total_amount {
    type: sum
    sql:${TABLE}."AMOUNT_EUR_"  ;;
    value_format_name: eur_0
  }

  dimension: billable {
    type: string
    sql: ${TABLE}."BILLABLE" ;;
  }

  dimension: client {
    type: string
    sql: ${TABLE}."CLIENT" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."DESCRIPTION" ;;
  }

  dimension: duration_decimal_ {
    type: number
    sql: ${TABLE}."DURATION_DECIMAL_" ;;
  }

  measure: Total_DURATION_DECIMAL{
    type: sum
    sql: ${TABLE}."DURATION_DECIMAL_" ;;
  }

  dimension: duration_h_ {
    type: string
    sql: ${TABLE}."DURATION_H_" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."EMAIL" ;;
  }

  dimension_group: end {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."END_DATE" ;;
  }

  dimension: end_time {
    type: string
    sql: ${TABLE}."END_TIME" ;;
  }

  dimension: hourly_rate_eur_ {
    type: number
    sql: ${TABLE}."HOURLY_RATE_EUR_" ;;
  }

  dimension: project {
    type: string
    sql: ${TABLE}."PROJECT" ;;
    primary_key: yes

  }

  dimension_group: start {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."START_DATE" ;;
  }

  dimension: start_time {
    type: string
    sql: ${TABLE}."START_TIME" ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}."TAGS" ;;
  }

  dimension: task {
    type: string
    sql: ${TABLE}."TASK" ;;
  }

  dimension: user {
    type: string
    sql: ${TABLE}."USER" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
