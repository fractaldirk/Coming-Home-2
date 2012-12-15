class Tweet < ActiveRecord::Base
  attr_accessible :body, :position_id, :tweeter, :tweet_office, :tweet_position, :tweet_name
  belongs_to :position
end
