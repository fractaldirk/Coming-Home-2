class Competency < ActiveRecord::Base
  belongs_to :position
  attr_accessible :competency_cpv, :competency_name, :competency_value, :department,
                  :job_title, :office
end
