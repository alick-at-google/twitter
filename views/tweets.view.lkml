view: tweets {
  sql_table_name: `twitter.tweets`
    ;;
  drill_fields: [tweet_id]

  dimension: tweet_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.Tweet_Id ;;
  }

  dimension: client {
    type: string
    sql: ${TABLE}.Client ;;
  }

  dimension: impressions {
    type: number
    sql: ${TABLE}.Impressions ;;
  }

  dimension: likes_received {
    type: number
    sql: ${TABLE}.Likes_Received ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: profile_url {
    type: string
    sql: ${TABLE}.Profile_URL ;;
  }

  dimension: protected_or_non_protected {
    type: string
    sql: ${TABLE}.Protected_or_Non_protected ;;
  }

  dimension: retweets_received {
    type: number
    sql: ${TABLE}.Retweets_Received ;;
  }

  dimension: tweet_content {
    type: string
    sql: ${TABLE}.Tweet_Content ;;
  }

  dimension: tweet_language {
    type: string
    sql: ${TABLE}.Tweet_Language ;;
  }

  dimension: tweet_location {
    type: string
    sql: ${TABLE}.Tweet_Location ;;
  }

  dimension: tweet_posted_time__utc_ {
    type: string
    sql: ${TABLE}.Tweet_Posted_Time__UTC_ ;;
  }

  dimension: tweet_type {
    type: string
    sql: ${TABLE}.Tweet_Type ;;
  }

  dimension: tweet_url {
    type: string
    sql: ${TABLE}.Tweet_URL ;;
  }

  dimension: user_account_creation_date {
    type: string
    sql: ${TABLE}.User_Account_Creation_Date ;;
  }

  dimension: user_bio {
    type: string
    sql: ${TABLE}.User_Bio ;;
  }

  dimension: user_followers {
    type: number
    sql: ${TABLE}.User_Followers ;;
  }

  dimension: user_following {
    type: number
    sql: ${TABLE}.User_Following ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.User_Id ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.Username ;;
  }

  dimension: verified_or_non_verified {
    type: string
    sql: ${TABLE}.Verified_or_Non_Verified ;;
  }

  measure: count {
    type: count
    drill_fields: [tweet_id, name, username, images.count, videos.count]
  }
}
