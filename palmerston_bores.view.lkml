view: palmerston_bores {
      view_label:"Palmerston Bores"
      sql_table_name:palm_bores;;

  dimension: name {
    label: "Long Name"
    type: string
    sql: ${TABLE}.name ;;
  }


  dimension: location {
    type: string
    sql: split_part(${name}, '.', 2) ;;
  }

  dimension: data_type {
    type: string
    sql: split_part(${name}, '.', 3) ;;
  }

  dimension: description {
    type: string
    sql: split_part(${name}, '.', 4) ;;
  }

  dimension: measurement_type {
    type: string
    sql: split_part(${name}, '.', 5) ;;
  }

  dimension: a1 {
    group_label: "Analogs"
    type: number
    sql: ${TABLE}.a1 ;;
  }

  dimension: cid {
    label: "Customer ID"
    type: number
    value_format_name: id
    sql: ${TABLE}.cid ;;
  }

  dimension: sid {
    label: "Site ID"
    type: number
    value_format_name: id
    sql: ${TABLE}.sid ;;
  }

#   2017.11.14 AD at 13:31:28 AEDT

  dimension_group: t1 {
    label: "Raw"
    type: time
    hidden: yes
    timeframes: [raw, date, time, hour, month, day_of_week, week, hour_of_day, time_of_day]
    sql: cast(TIMESTAMPTZ(${TABLE}.t1) as timestamp) ;;
    drill_fields: [t1_date,t1_hour,t1_month]
  }

  dimension_group: reading_8am {
    description: "A date starts from 8am of that day and ends before 8am of the following day."
    type: time
    timeframes: [date, hour, week, month, year]
    sql: DATEADD(hour,-8,${t1_raw}) ;;
  }

     dimension: v1 {
      label: "Value"
      type: number
      sql: ${TABLE}.v1 ;;
    }

    measure: count {
      type: count
      drill_fields: [name]
    }

    measure: average_value {
      type: average
      sql: ${v1} ;;
      value_format_name: decimal_2
    }
  }
