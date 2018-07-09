view: palm_water_meters {
     view_label: "PCC Water Meters"
    sql_table_name: palm_water_meters ;;

    dimension: lat {
      label: "Latitude"
      type: number
      sql: ${TABLE}.lat ;;
    }

    dimension: long {
      label: "Longitude"
      type: number
      sql: ${TABLE}.long ;;
    }

##52  FieldUnits.Sabal bore.DigitalInputs.Lake 6 Float.MomentaryStatus  0 2018-03-18 09:34:54 ∅ ∅
##53  FieldUnits.Sabal bore.Meters.Lake 4 Dam FM.Flow


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


    dimension_group: reading {
      type: time
      timeframes: [raw, date, time, hour, hour_of_day, day_of_week, week,]
      sql: cast(TIMESTAMPTZ(${TABLE}.t1) as timestamp);;
    }

  dimension_group: t1 {
    label: "Raw"
    type: time
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
