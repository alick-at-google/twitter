view: videos {
  sql_table_name: `twitter.videos`
    ;;

  dimension: media_id {
    type: string
    sql: ${TABLE}.Media_Id ;;
  }

  dimension: media_url {
    type: string
    sql: ${TABLE}.Media_URL ;;
  }

  dimension: tweet_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.Tweet_Id ;;
  }

  dimension: tweet_url {
    type: string
    sql: ${TABLE}.Tweet_URL ;;
  }

  measure: count {
    type: count
    drill_fields: [tweets.tweet_id, tweets.name, tweets.username]
  }
}
