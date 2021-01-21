view: hashtags {
 derived_table: {
   sql:
      SELECT  val.tweet_id, regexp_replace(wordz, '[^a-zA-Z0-9#/ ]', '') as hashtags
      FROM tweets as val
      LEFT JOIN UNNEST(SPLIT(LOWER(tweet_content), " ")) AS wordz
      WHERE wordz LIKE '#%';;
 }

  dimension: tweet_id {
    primary_key: yes
    hidden: yes
    type: string
    sql:${TABLE}.tweet_id ;;
  }

  dimension: hashtags {
    type: string
    sql: ${TABLE}.hashtags ;;
  }

  measure: count {
    type: count
  }

}
