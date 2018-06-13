view: palmerston_bores {
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

    dimension: sid {
      label: "Site ID"
      type: number
      sql: ${TABLE}.sid ;;
    }

    dimension: cid {
      label: "Customer ID"
      type: number
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

    dimension: relay_r1{
      type: string
      hidden: no
      sql: REPLACE(${r1},'0','Off') ;;
    }


    dimension: relay_r2{
      type: string
      hidden: no
      sql: REPLACE(${r2},'0','Off') ;;
    }

    dimension: relay_r3{
      type: string
      hidden: no
      sql: REPLACE(${r3},'0','Off',) ;;
    }

    dimension: relay_r4{
      type: string
      hidden: no
      sql: REPLACE(${r4},'0','off') ;;
    }

    dimension: relay_r1n{
      type: string
      hidden: no
      sql: REPLACE(${r1},'1','On') ;;
    }


    dimension: relay_r2n{
      type: string
      hidden: no
      sql: REPLACE(${r2},'1','On') ;;
    }

    dimension: relay_r3n{
      type: string
      hidden: no
      sql: REPLACE(${r3},'1','On') ;;
    }

    dimension: relay_r4n{
      type: string
      hidden:no
      sql: REPLACE(${r4},'1','On') ;;
    }

    dimension_group: timestamp {
      type: time
      timeframes: [raw, time, time_of_day, date, week, month, hour_of_day, hour, hour3]
      sql: TIMESTAMPTZ(${TABLE}.timestamp);;
    }

#   2017.11.14 AD at 13:31:28 AEDT

    measure: count {
      type: count
      drill_fields: []
    }

    measure: average_value_d1 {
      type: average
      sql: ${d1} ;;
    }

    measure: average_value_d2 {
      type: average
      sql: ${d2} ;;
    }

    measure: average_value_a1 {
      type: average
      sql: ${a1} ;;
    }

    measure: average_value_a2 {
      type: average
      sql: ${a2} ;;
    }

    measure: average_value_a3 {
      type: average
      sql: ${a3} ;;
    }

    measure: average_value_a4 {
      type: average
      sql: ${a4} ;;
    }

    measure: min_value_a1 {
      type: min
      sql: ${a1} ;;
    }

    measure: min_value_a2 {
      type: min
      sql: ${a2} ;;
    }

    measure: min_value_a3 {
      type: min
      sql: ${a3} ;;
    }

    measure: min_value_a4 {
      type: min
      sql: ${a4} ;;
    }

    measure: max_value_a1 {
      type: max
      sql: ${a1} ;;
    }

    measure: max_value_a2 {
      type: max
      sql: ${a2} ;;
    }

    measure: max_value_a3 {
      type: max
      sql: ${a3} ;;
    }

    measure: max_value_a4 {
      type: max
      sql: ${a4} ;;
    }

    measure: average_value_r1 {
      type: average
      sql: ${r1} ;;
    }

    measure: value_r1_max {
      type: max
      sql: ${r1} ;;
    }

    measure: value_r1_min {
      type: min
      sql: ${r1} ;;
    }

    measure: average_value_r2 {
      type: average
      sql: ${r2} ;;
    }

    measure: value_r2_max {
      type: max
      sql: ${r2} ;;
    }

    measure: value_r2_min {
      type: min
      sql: ${r2} ;;
    }

    measure: average_value_r3 {
      type: average
      sql: ${r3} ;;
    }

    measure: value_r3_max {
      type: max
      sql: ${r3} ;;
    }

    measure: value_r3_min {
      type: min
      sql: ${r3} ;;
    }

    measure: average_value_r4 {
      type: average
      sql: ${a4} ;;
    }

    measure: value_r4_max {
      type: max
      sql: ${r4} ;;
    }

    measure: value_r4_min {
      type: min
      sql: ${r4} ;;
    }
  }
