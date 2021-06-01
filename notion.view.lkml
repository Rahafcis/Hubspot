explore: notion {}
view: notion {
  derived_table: {
    sql: select property_name as name from HUBSPOT.COMPANY  ;;

  }

  dimension: name {
    primary_key: yes
  }

  dimension: notion {
    label: "Pain Points"
    sql: case
          when ${name} like 'Verse%' then 'https://www.notion.so/cisconsulting/Verse-14ae934dcef64060b1bffee193c0970d'
          when ${name} like 'Afterbanks' then 'https://www.notion.so/cisconsulting/Afterbanks-e399adfe9ffa486f9d47ba4fb0e519e3'
          when ${name} like 'Strad%' then 'https://www.notion.so/cisconsulting/Stradivarius-1e0e57bea98148ccb2cffb4c6a382f3a'
          when ${name} like 'Adevinta%' then 'https://www.notion.so/cisconsulting/Adevinta-Schibsted-Media-Group-d9fdfb6b9cfa46b69a0128ee76a7b82c'
          when ${name} like 'Alea%' then 'https://www.notion.so/cisconsulting/Alea-Play-6979c17b74c64050bd94cfb00e3cfbb7'
          when ${name} like 'Paack' then 'https://www.notion.so/cisconsulting/Paack-b4f06916d6904a88a4e7475624b64354'
          when ${name} like 'Beonprice' then 'https://www.notion.so/cisconsulting/Beonprice-974b231c53284b3bb8c730a39b0a9bf3'
          else 'https://www.notion.so/cisconsulting/Projects-7b538742f44c423ebe530ef020bdebe5'
    end
    ;;
    html: <a href="{{rendered_value}}"><button>View Notes On Notion</button></a>;;
  }
  # # You can specify the table name if it's different from the view name:
  # sql_table_name: my_schema_name.tester ;;
  #
  # # Define your dimensions and measures here, like this:
  # dimension: user_id {
  #   description: "Unique ID for each user that has ordered"
  #   type: number
  #   sql: ${TABLE}.user_id ;;
  # }
  #
  # dimension: lifetime_orders {
  #   description: "The total number of orders for each user"
  #   type: number
  #   sql: ${TABLE}.lifetime_orders ;;
  # }
  #
  # dimension_group: most_recent_purchase {
  #   description: "The date when each user last ordered"
  #   type: time
  #   timeframes: [date, week, month, year]
  #   sql: ${TABLE}.most_recent_purchase_at ;;
  # }
  #
  # measure: total_lifetime_orders {
  #   description: "Use this for counting lifetime orders across many users"
  #   type: sum
  #   sql: ${lifetime_orders} ;;
  # }
}

# view: notion {
#   # Or, you could make this view a derived table, like this:
#   derived_table: {
#     sql: SELECT
#         user_id as user_id
#         , COUNT(*) as lifetime_orders
#         , MAX(orders.created_at) as most_recent_purchase_at
#       FROM orders
#       GROUP BY user_id
#       ;;
#   }
#
#   # Define your dimensions and measures here, like this:
#   dimension: user_id {
#     description: "Unique ID for each user that has ordered"
#     type: number
#     sql: ${TABLE}.user_id ;;
#   }
#
#   dimension: lifetime_orders {
#     description: "The total number of orders for each user"
#     type: number
#     sql: ${TABLE}.lifetime_orders ;;
#   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
# }
