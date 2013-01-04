class AddSpecificationToCompetencies < ActiveRecord::Migration
  def change
    add_column :competencies, :competency_type, :integer
  end
end
