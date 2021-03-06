- view: user_data
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: max_num_orders
    type: number
    sql: ${TABLE}.max_num_orders

  - dimension: total_num_orders
    type: number
    sql: ${TABLE}.total_num_orders

  - dimension: user_id
    type: number
    # hidden: true
    sql: ${TABLE}.user_id

  - measure: count
    type: count
    drill_fields: [id, users.last_name, users.first_name, users.id]

