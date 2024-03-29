class Competency < ActiveRecord::Base
  acts_as_xlsx

  belongs_to :position
  attr_accessible :competency_cpv, :competency_name, :competency_value, :department,
                  :job_title, :office, :competency_type, :french, :spanish

  def competency_name_excel
    '- ' + competency_name.to_s
  end
end
