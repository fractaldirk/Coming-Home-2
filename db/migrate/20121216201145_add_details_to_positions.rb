class AddDetailsToPositions < ActiveRecord::Migration
  def change
    add_column :positions, :valid_from, :date
    add_column :positions, :job_grade, :integer
    add_column :positions, :reports_to, :string
    add_column :positions, :line_manages, :string
    add_column :positions, :overall_purpose, :text
    add_column :positions, :scope, :text
    add_column :positions, :specific_work_env, :text
    add_column :positions, :conceptual, :text
    add_column :positions, :implementation, :text
    add_column :positions, :support, :text
    add_column :positions, :fte, :decimal
    add_column :positions, :name, :string
    add_column :positions, :birth_date, :date
    add_column :positions, :gender, :integer
    add_column :positions, :nationality, :integer
    add_column :positions, :res_status, :integer
    add_column :positions, :start_date, :date
    add_column :positions, :type_contract, :integer
    add_column :positions, :unique_position, :integer
    add_column :positions, :permanent, :integer
    add_column :positions, :department, :string
    add_column :positions, :next_performance_talk, :date
  end
end
