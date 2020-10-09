connection: "dcl-sandbox"

# include all the views
include: "/views/**/*.view"

datagroup: twitter_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: twitter_default_datagroup

explore: images {
  join: tweets {
    type: left_outer
    sql_on: ${images.tweet_id} = ${tweets.tweet_id} ;;
    relationship: many_to_one
  }
}

explore: tweets {}

explore: videos {
  join: tweets {
    type: left_outer
    sql_on: ${videos.tweet_id} = ${tweets.tweet_id} ;;
    relationship: many_to_one
  }
}
