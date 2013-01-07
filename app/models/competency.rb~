class Competency < ActiveRecord::Base
  belongs_to :position
  attr_accessible :competency_cpv, :competency_name, :competency_value, :department,
                  :job_title, :office, :competency_type

  def competency_name_excel
    '- ' + competency_name
  end
end
