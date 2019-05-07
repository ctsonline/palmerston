view: palm_ctsfieldmouse {
 sql_table_name: public.ctsfieldmousedata ;;

  dimension: a1 {
    group_label: "Analogs"
    type: number
    sql: ${TABLE}.a1 ;;
  }

  dimension: a2 {
    group_label: "Analogs"
    type: number
    sql: ${TABLE}.a2 ;;
  }

  dimension: a3 {
    group_label: "Analogs"
    type: number
    sql: ${TABLE}.a3 ;;
  }

  dimension: a4 {
    group_label: "Analogs"
    type: number
    sql: ${TABLE}.a4 ;;
  }

  dimension: cid {
    label: "Customer ID"
    type: number
    value_format_name: id
    sql: ${TABLE}.cid ;;
  }

  dimension: d1 {
    group_label: "Digital"
    type: number
    sql: ${TABLE}.d1 ;;
  }

  dimension: d2 {
    group_label: "Digital"
    type: number
    sql: ${TABLE}.d2 ;;
  }

  dimension: r1 {
    group_label: "Relays"
    type: number
    sql: ${TABLE}.r1 ;;
  }

  dimension: r2 {
    group_label: "Relays"
    type: number
    sql: ${TABLE}.r2 ;;
  }

  dimension: r3 {
    group_label: "Relays"
    type: number
    sql: ${TABLE}.r3 ;;
  }

  dimension: r4 {
    group_label: "Relays"
    type: number
    sql: ${TABLE}.r4 ;;
  }

  dimension: sid {
    label: "Site ID"
    type: number
    value_format_name: id
    sql: ${TABLE}.sid ;;
  }

  dimension: site_name_6 {
    group_label: "pedestrian sites"
    type: string
    hidden: no
    sql: REPLACE(${sid},'6','Gumnut Way to Livistonia Park') ;;
  }

  dimension: site_name_7 {
    group_label: "pedestrian sites"
    type: string
    hidden: no
    sql: REPLACE(${sid},'7','Gumnut Way to Livistonia Park') ;;
  }

  dimension: site_name_9 {
    group_label: "pedestrian sites"
    type: string
    hidden: no
    sql: REPLACE(${sid},'9','Politis Court to Strawbridge Crescent') ;;
  }

  dimension: site_name_10 {
    group_label: "pedestrian sites"
    type: string
    hidden: no
    sql: REPLACE(${sid},'10','Politis Court to Strawbridge Crescent') ;;
  }

  dimension_group: timestamp {
    type: time
    timeframes: [raw, time, time_of_day, date, week, month, hour_of_day, hour, hour3, minute, minute10]
    sql: TIMESTAMPTZ(${TABLE}.timestamp);;
    drill_fields: [timestamp_date,timestamp_hour,timestamp_week]
  }





#   2017.11.14 AD at 13:31:28 AEDT

  measure: count {
    type: count
    drill_fields: []
  }

  measure: average_value_a1 {
    type: average
    sql: ${a1} ;;
  }

  measure: max_value_a1 {
    type:  max
    sql:  ${a1} ;;
  }

  measure: min_value_a1 {
    type:  min
    sql:  ${a1} ;;
  }

  measure: min_value_a2 {
    type: min
    sql: ${a2} ;;
  }

  measure: max_value_a2 {
    type: max
    sql: ${a2} ;;
  }

  measure: min_value_a3 {
    type: min
    sql: ${a3} ;;
  }

  measure: max_value_a3 {
    type: max
    sql: ${a3} ;;
  }

  measure: min_value_a4 {
    type: min
    sql: ${a4} ;;
  }

  measure: max_value_a4 {
    type: max
    sql: ${a4} ;;
  }

  measure: people_count {
    description: "People Count"
    type: yesno
    sql: ${a1} > 20 ;;
    }

}
