class Tweet < ActiveRecord::Base
  attr_accessible :body, :position_id, :tweeter
  belongs_to :position
end
