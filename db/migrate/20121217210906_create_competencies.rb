class CreateCompetencies < ActiveRecord::Migration
  def change
    create_table :competencies do |t|
      t.string :competency_name
      t.integer :competency_value
      t.integer :competency_cpv
      t.string :job_title
      t.string :department
      t.integer :office
      t.references :position

      t.timestamps
    end
    add_index :competencies, :position_id
  end
end
