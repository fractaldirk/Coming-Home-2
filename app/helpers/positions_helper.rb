module PositionsHelper

  def tweet_created_by
    "was created by #{current_user.user_name}"
  end

  def tweet_updated_by
    "was updated by #{current_user.user_name}"
  end

  def jd_tweet_updated_by
    "was updated (job description) by #{current_user.user_name}"
  end

  def hrp_tweet_updated_by
    "was updated (hr profile) by #{current_user.user_name}"
  end

  def cp_tweet_updated_by
    "was updated (competency profile) by #{current_user.user_name}"
  end
end
