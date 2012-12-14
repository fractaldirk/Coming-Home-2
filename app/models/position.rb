class Position < ActiveRecord::Base
  attr_accessible :job_title, :office
  has_many :tweets
end
